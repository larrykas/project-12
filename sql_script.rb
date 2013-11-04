mysql> CREATE DATABASE banking_system;
Query OK, 1 row affected (0.01 sec)

mysql> USE banking_system;
Database changed

mysql> CREATE TABLE clients ( id integer NOT NULL primary key, account_number int(50), name varchar(50), job varchar(50), gender varchar(6));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO clients values (1, 011234, "Steve", "Programmer", "Male", 25);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM clients;

+----+----------------+-------+------------+--------+---------+
| id | account_number | name  | job        | gender | balance |
+----+----------------+-------+------------+--------+---------+
|  1 |          11234 | Steve | Programmer | Male   |      25 |
+----+----------------+-------+------------+--------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO clients values (2, 011235, "Jeron", "C.E.O", "Male", 4025), (3, 011236, "Provard", "Accountant", "Female", 300);
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM clients;

+----+----------------+---------+------------+--------+---------+
| id | account_number | name    | job        | gender | balance |
+----+----------------+---------+------------+--------+---------+
|  1 |          11234 | Steve   | Programmer | Male   |      25 |
|  2 |          11235 | Jeron   | C.E.O      | Male   |    4025 |
|  3 |          11236 | Provard | Accountant | Female |     300 |
+----+----------------+---------+------------+--------+---------+
3 rows in set (0.00 sec)

mysql> SELECT COUNT(*) FROM clients;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)


mysql> UPDATE clients SET name = "Books" WHERE balance = 25;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM clients;
+----+----------------+---------+------------+--------+---------+
| id | account_number | name    | job        | gender | balance |
+----+----------------+---------+------------+--------+---------+
|  1 |          11234 | Books   | Programmer | Male   |      25 |
|  2 |          11235 | Jeron   | C.E.O      | Male   |    4025 |
|  3 |          11235 | Provard | Accountant | Female |     300 |
+----+----------------+---------+------------+--------+---------+
3 rows in set (0.00 sec)



mysql> DELETE FROM clients WHERE name = "Jeron";
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM clients;
+----+----------------+---------+------------+--------+---------+
| id | account_number | name    | job        | gender | balance |
+----+----------------+---------+------------+--------+---------+
|  1 |          11234 | Books   | Programmer | Male   |      25 |
|  3 |          11235 | Provard | Accountant | Female |     300 |
+----+----------------+---------+------------+--------+---------+
2 rows in set (0.00 sec)

mysql> DELETE FROM clients;
Query OK, 2 rows affected (0.00 sec)

mysql> SELECT * FROM clients;
Empty set (0.01 sec)

mysql> CREATE TABLE employees ( id integer NOT NULL primary key, name varchar(50), job varchar(50), gender varchar(6));
Query OK, 0 rows affected (0.03 sec)


mysql> INSERT INTO employees values(1, "Books", "Programmer", "Male"), (2, "Jeron", "C.E.O", "Male"), (3, "Provard", "Accountant", "Female");
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employees;
+----+---------+------------+--------+
| id | name    | job        | gender |
+----+---------+------------+--------+
|  1 | Books   | Programmer | Male   |
|  2 | Jeron   | C.E.O      | Male   |
|  3 | Provard | Accountant | Female |
+----+---------+------------+--------+
3 rows in set (0.00 sec)
