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

UPDATE customer_data SET email = 
    CASE
        WHEN id = 1 THEN 'allanmogley@gmail.com'
        WHEN id = 2 THEN 'Jane@gmail.com'
        WHEN id = 3 THEN 'bob@gmail.com'
        WHEN id = 4 THEN 'alice@gmail.com'
        WHEN id = 5 THEN 'mike@gmail.com'
        WHEN id = 6 THEN 'sarah@gmail.com'
        WHEN id = 7 THEN 'tom@gmail.com'
        WHEN id = 8 THEN 'emily@gmail.com'
        WHEN id = 9 THEN 'allanmogley@gmail.com'
    END;

select * from customer_data
