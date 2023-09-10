<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron text-white banner-background" style="background:green;">
                <div class="container">
                    <h1 class="display-4">Database Management System Tutorial</h1>
                </div>
            </div>
        </div>

        <div class="container" style="background: #ccccccy">
            <h2>What is Database?</h2>
            <h4>A database is a structured collection of data that is organized and stored in a way that allows for efficient retrieval, management, and manipulation of information. It serves as a central repository for data that can be easily accessed, updated, and queried by various applications and users.</h4><br>

            

            <h2>What is Database Management System(DBMS)?</h2>

            <h4>Database Management System is a software or technology used to manage data from a database. Some popular databases are MySQL, Oracle, MongoDB, etc. DBMS provides many operations e.g. creating a database, Storing in the database, updating an existing database, delete from the database. DBMS is a system that enables you to store, modify and retrieve data in an organized way. It also provides security to the database.</h4>
            
            
            <h3>Key aspects of Databse Management System:</h3>
            
            <ol>
                <li><b>Data Organization:</b> DBMSs allow data to be organized into tables or collections, with each table containing rows and columns. The structure is typically defined using a schema, which specifies the tables, their columns, and relationships.</li>
                <li><b>Data Retrieval:</b> Users can retrieve data from a DBMS using queries written in query languages like SQL (Structured Query Language). This enables them to retrieve specific subsets of data based on various criteria.</li>
                <li><b>Data Integrity:</b> DBMSs enforce data integrity rules to maintain the accuracy and consistency of data. This includes constraints like primary keys, foreign keys, and data validation rules.</li>
                <li><b>Concurrency Control:</b> In multi-user environments, DBMSs manage concurrent access to the database to ensure data consistency. Techniques like locking and transactions are used to control access.</li>
                <li><b>Security:</b> DBMSs provide security mechanisms to control access to data. This includes user authentication, authorization, and data encryption.</li>
                <li><b>Backup and Recovery:</b> DBMSs offer features for backing up data and recovering it in case of system failures, data corruption, or disasters.</li>
                <li><b>Scalability:</b> DBMSs can scale to handle growing amounts of data and users. This can involve techniques like horizontal partitioning, replication, and clustering.</li>
                <li><b>Data Models:</b> Different DBMSs support various data models, including the relational model (tables), NoSQL models (e.g., document, key-value, graph), and in-memory models, depending on the specific use case.</li>
            </ol>
            
            <h3>Common Examples of DBMSs are:</h3>
            <ol>
                <li><b>Relational Database Management Systems (RDBMS):</b> These include databases like MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server, and SQLite, which use the relational model for data storage and querying.</li>
                <li><b>NoSQL Databases:</b> Examples include MongoDB (document-oriented), Cassandra (wide-column store), Redis (key-value store), and Neo4j (graph database), which provide alternatives to traditional RDBMSs for specific use cases.</li>
                <li><b>In-Memory Databases:</b> Databases like Redis and Memcached store data primarily in memory, providing extremely fast data access.</li>
                <li><b>Columnar Databases:</b> These databases, like Apache Cassandra and Amazon Redshift, are optimized for analytical queries and data warehousing.</li>
            </ol>
            
            <h4>DBMSs are essential components in many software applications and systems, serving as the foundation for data-driven decision-making, data storage, and information management across various industries and domains.</h4>
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>

    </body>
</html>
