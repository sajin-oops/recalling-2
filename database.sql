Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.02 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.01 sec)

mysql> use employees;
ERROR 1049 (42000): Unknown database 'employees'
mysql> select * from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> select*from where
    -> employees LIKE "%i%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where
employees LIKE "%i%"' at line 1
mysql> select*from employees where empname LIKE "%i%";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 3     | lijin   | data analyst   | 2000000 |
| 8     | siva    | back-end       |   20000 |
| 10    | mani    | data scientist | 7000000 |
| 13    | silent  | ml engineer    |    1070 |
+-------+---------+----------------+---------+
5 rows in set (0.00 sec)

mysql> select*from employees where empname LIKE "%a%";
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
12 rows in set (0.00 sec)

mysql> select*from employees where empname LIKE "__j%";
+-------+---------+----------------+---------+
| empid | empname | jobdescription | salary  |
+-------+---------+----------------+---------+
| 1     | sajin   | data scientist | 1000000 |
| 3     | lijin   | data analyst   | 2000000 |
+-------+---------+----------------+---------+
2 rows in set (0.00 sec)

mysql> select*from employees where empname LIKE "__a%";
+-------+---------+----------------+--------+
| empid | empname | jobdescription | salary |
+-------+---------+----------------+--------+
| 7     | sea     | front-end      |  10000 |
| 9     | tharun  | full-stack     |  10000 |
+-------+---------+----------------+--------+
2 rows in set (0.00 sec)

mysql> select*from employees where empname LIKE "__a\%";
Empty set (0.00 sec)

mysql>

mysql> SELECT * from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | developer              |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> UPDATE employees SET jobdescription = "AL ML engineer" where jobdescription="developer";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AL ML engineer         |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
| 14    | am      | software engineer      |  240000 |
+-------+---------+------------------------+---------+
14 rows in set (0.00 sec)

mysql> DELETE FROM employees WHERE empid = 14;
Query OK, 1 row affected (0.01 sec)

mysql> select* from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AL ML engineer         |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
13 rows in set (0.00 sec)

mysql>