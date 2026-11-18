-- The Case of ITC for Investing the data base and Creating the tables -

CREATE TABLE distributors (
   distributors_id INTEGER PRIMARY KEY,
   name            TEXT NOT NULL,
   city            TEXT,
   region          TEXT,
   phone           TEXT
 );
 
 -- Dropping the table --
 DROP TABLE distributors;
 
 -- Create another table name Products --
 
 -- Create a table name products with following details  product name,product id, brand, category,price and stock
 CREATE TABLE products (
   product_name     TEXT,
   product_id       INTEGER PRIMARY KEY,
   brand            TEXT,
   category         TEXT NOT NULL,
   price            REAL CHECK (price > 0),
   stock            INTEGER DEFAULT 0
   );
   
   -- Create a table name sales containing variables, sales id, product id, distributor id, sale date, quantity, amount --
   CREATE TABLE sales(
   sales_id         INTEGER PRIMARY KEY,
   product_id       INTEGER,
   distributor_id   INTEGER,
   sale_date        TEXT,
   quantity         INTEGER CHECK (quantity>0),
   amount           REAL,
   FOREIGN KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
   );