#ifndef FINANCE_H
#define FINANCE_H

#include <string>
#include <sqlite3.h>

// Initialize the SQLite database
int init_db();

// Function to add transaction
void add_transaction(const std::string& description, double amount, const std::string& type);

// Function to fetch transactions
void get_transactions();

// SQLite connection
extern sqlite3* db;

#endif
