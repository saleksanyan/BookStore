USE `BookstoreDB`; #using this database for queries below

#gives a list of all books sold, including the book title, customer name, and date of sale
SELECT
    Books.Title,
    Customers.Name,
    Sales.DateOfSale
FROM
    Sales
        JOIN
    Books ON Sales.BookID = Books.BookID
        JOIN
    Customers ON Sales.CustomerID = Customers.CustomerID;



#finds the total revenue generated from each genre of books
SELECT
    Books.Genre,
    SUM(Sales.QuantitySold * Sales.TotalPrice)
FROM
    Books
    JOIN
    Sales ON Books.BookID = Sales.BookID
GROUP BY
    Books.Genre;

