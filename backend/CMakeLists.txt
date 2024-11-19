cmake_minimum_required(VERSION 3.10)

project(FinanceTracker)

set(CMAKE_CXX_STANDARD 17)

# Add Crow and SQLite3 (adjust paths if needed)
find_package(Crow REQUIRED)
find_package(SQLite3 REQUIRED)

add_executable(finance-tracker src/main.cpp)

target_link_libraries(finance-tracker Crow::Crow SQLite::SQLite3)
