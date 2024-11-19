#include "crow_all.h"
#include <iostream>
#include <sqlite3.h>

sqlite3* db;  // SQLite database connection

// Function to initialize SQLite
int init_db() {
    if (sqlite3_open("database/finance.db", &db)) {
        std::cerr << "Can't open database: " << sqlite3_errmsg(db) << std::endl;
        return 1;
    }

    const char* createTableQuery = 
        "CREATE TABLE IF NOT EXISTS transactions ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT, "
        "description TEXT, "
        "amount REAL, "
        "type TEXT);";

    if (sqlite3_exec(db, createTableQuery, 0, 0, 0) != SQLITE_OK) {
        std::cerr << "SQL error: " << sqlite3_errmsg(db) << std::endl;
        return 1;
    }
    return 0;
}

// API to add transaction
void add_transaction(const crow::request& req, crow::response& res) {
    auto params = crow::json::load(req.body);
    if (!params) {
        res.code = 400;
        res.write("Invalid JSON");
        return;
    }

    const std::string description = params["description"].s();
    const double amount = params["amount"].d();
    const std::string type = params["type"].s();

    char* errMessage = 0;
    std::string insertQuery = "INSERT INTO transactions (description, amount, type) VALUES ('" + description + "', " + std::to_string(amount) + ", '" + type + "');";

    if (sqlite3_exec(db, insertQuery.c_str(), 0, 0, &errMessage) != SQLITE_OK) {
        res.code = 500;
        res.write("Database error: " + std::string(errMessage));
        sqlite3_free(errMessage);
        return;
    }

    res.code = 200;
    res.write("Transaction added successfully");
}

// API to get transactions
void get_transactions(const crow::request& req, crow::response& res) {
    const char* selectQuery = "SELECT * FROM transactions;";
    sqlite3_stmt* stmt;

    if (sqlite3_prepare_v2(db, selectQuery, -1, &stmt, 0) != SQLITE_OK) {
        res.code = 500;
        res.write("Database error");
        return;
    }

    crow::json::wvalue transactions;
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        crow::json::wvalue transaction;
        transaction["id"] = sqlite3_column_int(stmt, 0);
        transaction["description"] = (const char*)sqlite3_column_text(stmt, 1);
        transaction["amount"] = sqlite3_column_double(stmt, 2);
        transaction["type"] = (const char*)sqlite3_column_text(stmt, 3);
        transactions.push_back(transaction);
    }

    sqlite3_finalize(stmt);
    res.code = 200;
    res.write(transactions.dump());
}

int main() {
    crow::SimpleApp app;
    
    if (init_db()) {
        return 1;  // Initialize SQLite database
    }

    // Define routes
    CROW_ROUTE(app, "/add_transaction").methods("POST"_method)(add_transaction);
    CROW_ROUTE(app, "/get_transactions").methods("GET"_method)(get_transactions);

    // Start the server
    app.port(8080).run();

    sqlite3_close(db);
}
