-- ALTER TABLE SALES 
-- ADD FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID) ON DELETE CASCADE ;

-- ALTER TABLE sales
-- DROP FOREIGN KEY  sales_ibfk_1 ;  -- THESE NAME IS OBTAINED FROM DDL VVIEW   

-- DROP TABLE sales;
-- DROP TABLE customers;
-- DROP TABLE items;
-- DROP TABLE COMPANY;


CREATE TABLE demo_table (
    prim_key INT AUTO_INCREMENT NOT NULL PRIMARY KEY
)