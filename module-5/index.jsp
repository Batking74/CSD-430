<%--
    Name: Nazir Knuckles
    Date: October 12, 2026
    Assignment: CSD430 Modules 5 & 6 - Index Page
    Purpose: Provide a central navigation page for the course's CRUD deliverables.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSD430 Movies Project</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 760px; margin: 3rem auto; padding: 0 1rem; line-height: 1.6; }
        h1 { margin-bottom: 0.25rem; }
        .note { color: #555; }
        ul { padding-left: 1.25rem; }
        li { margin: 0.55rem 0; }
    </style>
</head>
<body>
    <h1>CSD430 Movies Database</h1>
    <p class="note">Course project navigation for the movies database and CRUD module deliverables.</p>

    <h2>Database Scripts</h2>
    <ul>
        <li><a href="nazcreateTable.sql">Create table SQL</a></li>
        <li><a href="nazpopulateTable.sql">Populate table SQL</a></li>
        <li><a href="nazdropTable.sql">Drop table SQL</a></li>
    </ul>

    <h2>CRUD Deliverables</h2>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt eveniet corrupti totam explicabo minima sunt voluptates quibusdam odit, ipsa quasi fugiat dicta maxime repellat id laboriosam dolorem. Soluta, voluptas explicabo!</p>
    <ul>
        <li>Module 5 — <a href="module5/create.jsp">Create</a> | <a href="module5/read.jsp">Read</a> | <a href="module5/update.jsp">Update</a> | <a href="module5/delete.jsp">Delete</a></li>
        <li>Module 6 — <a href="module6/create.jsp">Create</a> | <a href="module6/read.jsp">Read</a> | <a href="module6/update.jsp">Update</a> | <a href="module6/delete.jsp">Delete</a></li>
    </ul>
</body>
</html>
