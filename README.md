# Carbon-cycle-index
demo

A webpage prototype of team project
Based on SpringBoot+Mybatis+thymeleaf (find more information in HELP.md)


Install

Download code and unzip into a folder
Open with ide (recommend IntelliJ IDEA)  and wait for the automatic build process (may require net)
Start MySQL service and execute SQLQuery.sql
Check application.properties in \src\main\resources, make sure this server.port is available. Unless you create a different database name, it's best not to change  spring.datasource.url.
Run the application through DemoApplication.java
Browser opens: http://127.0.0.1:8080 (or replace with your own port)
There are two default users available: test(password:123), and test2(password:321)


To-Do

Add function to edit user's profile.
Add interface for administrator to manage users and things.
Improve the display of pages.
Add function to record user's plan.
