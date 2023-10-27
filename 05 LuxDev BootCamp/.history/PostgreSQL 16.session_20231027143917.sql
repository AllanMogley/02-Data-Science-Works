SELECT name, age from customer_data

SELECT * from customer_data;

alter table customer_data
add phonenumber varchar(20)


UPDATE customer_data SET phonenumber = 
    CASE 
        WHEN id = 1 THEN '1234567890'
        WHEN id = 2 THEN '0987654321'
        WHEN id = 3 THEN ''
        WHEN id = 3 THEN '5555555555'
        WHEN id = 3 THEN '5555555555'
        ELSE '0000000000'
    END;
