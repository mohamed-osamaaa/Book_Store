# Bookstore Database Schema

This project contains the SQL schema for a bookstore database. It includes tables for customers, books, authors, orders, and the relationships between these entities. The schema is designed with foreign keys and constraints to ensure data integrity. An Entity-Relationship Diagram (ERD) is provided for visualization.

## Tables

The following tables are included in the database schema:

- **Customer**: Stores customer details like name, email, address, and phone numbers.
- **Customer Phone**: Stores phone numbers for customers.
- **Order**: Contains order details such as order ID, quantity, total price, payment method, and status.
- **Book**: Contains book details including title, price, description, rank, and availability.
- **Author**: Contains information about authors including name, email, and address.
- **Author Phone**: Stores phone numbers for authors.
- **Relationship Tables**:
  - **R_OB**: Many-to-many relationship between orders and books.
  - **R_AB**: Many-to-many relationship between authors and books.

## ERD

An Entity-Relationship Diagram (ERD) is provided to visualize the relationships between tables and how the data flows through the system. It helps understand the structure of the database and the connections between entities.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bookstore-database.git
