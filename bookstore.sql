-- Create the database
CREATE DATABASE Bookstore;
USE Bookstore;

-- Create Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(100),
    AuthorID INT,
    Price DECIMAL(10, 2),
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

-- Insert sample data
INSERT INTO Authors (FirstName, LastName) VALUES ('George', 'Orwell'), ('J.K.', 'Rowling'), ('F. Scott', 'Fitzgerald');
INSERT INTO Books (Title, AuthorID, Price, PublishedYear) VALUES ('1984', 1, 15.99, 1949), 
                                                              ('Harry Potter', 2, 29.99, 1997), 
                                                              ('The Great Gatsby', 3, 10.99, 1925);
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber) VALUES ('John', 'Doe', 'john.doe@example.com', '1234567890'),
                                                                        ('Jane', 'Smith', 'jane.smith@example.com', '0987654321');

