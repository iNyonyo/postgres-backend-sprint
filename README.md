###### **POSTGRESQL DATABASE PROJECT**

#### **PROJECT OVERVIEW**
This project contains commands, inputs and queries to build your own database using my data.

#### **REQUIREMENTS**
1. PostgreSQL
2. psql
3. Git and Github

#### **PROJECT STRUCTURE**
```
postgres-backend-sprint/
│
├── notes/
│   ├── daily_reflections.md
│   └── design_decisions.md
│
├── sql/
│   ├── 01_schema.sql
│   ├── 02_seed.sql
│   └── 03_queries.sql
│
├── orders.csv
│
└── README.md
```

#### **DATABASE DESIGN**
### **TABLES**
1. Customers: 
Stores customer information and contains customer names, gender, date of birth, email, phone number

2. Products: 
Stores product information

3. Orders: 
Stores customer order information

4. Order items: 
Stores items ordered not overall order information

#### **SETUP AND INSTALLATION**
1. Clone the repository
2. Create the database in pshell
3. Connect to the database
4. Run 01_schema.sql in pshell to create tables
5. Run 02_seed.sql in pshell to insert data
6. Run 03_queries.sql in pshell to run queries

#### **DAY 1**
Practiced creating databases and tables, inserting data, SELECT, ORDER BY, DISTINCT, WHERE with AND/OR, comparison operators, LIMIT/OFFSET, IN, BETWEEN and LIKE/ILIKE.

#### **DAY 2**
Practiced GROUP BY, HAVING, MIN/MAX/AVG/SUM, arithmetic and ROUND, aliases, COALESCE, NULLIF, and the timestamps and dates sections (intervals, EXTRACT, AGE).

#### **DAY 3**
Practiced primary keys, unique and check constraints, DELETE, UPDATE, ON CONFLICT (upsert), foreign keys, INNER and LEFT JOINs, and exporting results to CSV.