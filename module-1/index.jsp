<%--
Name: Nazir Knuckles
Date: September 13, 2026
Assignment: Module 1 - CSD430 JSP Application
Purpose: Demonstrate a basic JSP page containing Java code and HTML tags.

AI assistance disclosure: This JSP source was generated with assistance from ChatGPT.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Store a simple message in a descriptive Java variable.
    String welcomeMessage = "Hello from my first JSP application!";
    String assignmentName = "CSD430 Module 1";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>First JSP Application</title>
</head>
<body>

    <main>
        <h1><%= welcomeMessage %></h1>

        <p>This page is running successfully as a JavaServer Pages (JSP) application.</p>

        <p>Assignment: <%= assignmentName %></p>

        <p>Current server date/time: <%= new java.util.Date() %></p>
    </main>

</body>
</html>
