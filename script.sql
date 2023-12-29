#  database of the bookstore

# Book table with pk
create table Books
(
    BookID          int auto_increment
        primary key,
    Title           varchar(50)  null,
    Author          varchar(40)  null,
    Genre           varchar(100) null,
    Price           int          null,
    QuantityInStock int          null
);


# Customer table with pk
create table Customers
(
    CustomerID int auto_increment
        primary key,
    Name       varchar(40)  not null,
    Email      varchar(100) not null,
    Phone      int          null
);

# Sales table with pk and fk
create table Sales
(
    SaleID       int auto_increment
        primary key,
    BookID       int         not null,
    CustomerID   int         not null,
    DateOfSale   varchar(20) null,
    QuantitySold int         null,
    TotalPrice   int         null,
    constraint salesCustomerID
        foreign key (CustomerID) references bookstoredb.Customers (CustomerID)
);

create index salesBookID
    on Sales (BookID);


