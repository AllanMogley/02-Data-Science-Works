SELECT name, age from customer_data

SELECT * from customer_data;

alter table customer_data
add phonenumber varchar(20)


UPDATE customer_data SET phonenumber = 
    CASE 
        WHEN id = 1 THEN '1234567890'
        WHEN id = 2 THEN '0987654321'
        WHEN id = 4 THEN '1556633562'
        WHEN id = 5 THEN '0948722455'
        WHEN id = 6 THEN '5555908754'
        ELSE '0000000000'
    END;

UPDATE customer_data SET phonenumber = 
    CASE
        WHEN id = 1 THEN '1234567890'
        WHEN id = 2 THEN '0987654321'
        WHEN id = 4 THEN '1556633562'
        WHEN id = 5 THEN '0948722455'
        WHEN id = 6 THEN '5555908754'
        ELSE '0000000000'
    END;
