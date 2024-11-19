#include "finance.h"
#include <iostream>

std::vector<Transaction> transactions;  // Store transactions globally

// Function to add a transaction
void addTransaction(double amount, const std::string& description) {
    Transaction t = {amount, description};
    transactions.push_back(t);
}

// Function to display all transactions
void displayTransactions() {
    for (const auto& t : transactions) {
        std::cout << t.description << ": " << t.amount << std::endl;
    }
}
