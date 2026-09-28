-- =========================================================
-- Uri_DB
-- Shop Stuff idk
-- =========================================================

DROP DATABASE IF EXISTS Uri_DB;
CREATE DATABASE Uri_DB;
USE Uri_DB;

-- ---------------------------------------------------------
-- Table: items
-- ---------------------------------------------------------
CREATE TABLE items (
    ItemId   INT NOT NULL AUTO_INCREMENT,
    Item     VARCHAR(45),
    Price    INT,
    Quantity INT,
    PRIMARY KEY (ItemId)
);

-- ---------------------------------------------------------
-- Table: sales
-- ---------------------------------------------------------
CREATE TABLE sales (
    CustomerId INT NOT NULL,
    Customer   VARCHAR(45),
    ItemId     INT,
    SaleStatus VARCHAR(45),
    Total      INT,
    PRIMARY KEY (CustomerId),
    FOREIGN KEY (ItemId) REFERENCES items(ItemId)
);

-- ---------------------------------------------------------
-- Data: items
-- ---------------------------------------------------------
INSERT INTO items (ItemId, Item, Price, Quantity) VALUES
(1, 'Camping Backpack (Black)', 5, 20),
(2, 'Camping Backpack (Green)', 5, 15),
(3, 'Emergency Box', 7, 30),
(4, 'Foldable Camping Chair', 11, 10),
(5, 'Sleeping Bag', 6, 15);

-- ---------------------------------------------------------
-- Data: sales
-- ---------------------------------------------------------
INSERT INTO sales (CustomerId, Customer, ItemId, SaleStatus, Total) VALUES
(1, 'Jay Quang', 5, 'PAID', 6),
(2, 'Reya Perez', 1, 'PENDING', 5),
(3, 'John Smith', 3, 'PENDING', 7),
(4, 'Ruiji Kelaurga', 2, 'PENDING', 5),
(5, 'Omar Karim', 4, 'PAID', 11),
(6, 'Haru Nakamura', 1, 'PENDING', 5);
