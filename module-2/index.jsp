<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
Assignment: Dynamic JSP Movie Data Page
Name: Nazir Knuckles
Description:
This JSP page uses Java Scriptlets to store and dynamically
display information about five movies. The data is displayed
in an HTML table with three fields per record.
--%>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies I Have Enjoyed</title>

```
<!-- External CSS stylesheet -->
<link rel="stylesheet" href="./css/style.css">
```

</head>

<body>

<header>
    <h1>Movies I Have Enjoyed</h1>
    <p>A collection of five movies that I have enjoyed watching.</p>
</header>

<main>

```
<section class="description">
    <h2>About This Data</h2>

    <p>
        This page displays information about five movies that I have
        enjoyed watching. The data is organized into three fields:
        movie title, genre, and director. Java Scriptlets are used
        to store the movie records and dynamically generate the
        movie table.
    </p>
</section>

<section class="data-section">
    <h2>Movie Data</h2>

    <table>
        <thead>
            <tr>
                <th>Movie Title</th>
                <th>Genre</th>
                <th>Director</th>
            </tr>
        </thead>

        <tbody>

            <%
                /*
                 * Movie records.
                 *
                 * Each record contains three fields:
                 * [0] Movie Title
                 * [1] Genre
                 * [2] Director
                 */

                String[][] movies = {
                    {"Batman v Superman: Dawn of Justice",
                     "Superhero / Action",
                     "Zack Snyder"},

                    {"Avengers: Infinity War",
                     "Superhero / Action",
                     "Anthony Russo and Joe Russo"},

                    {"Avengers: Endgame",
                     "Superhero / Action",
                     "Anthony Russo and Joe Russo"},

                    {"Madea's Family Reunion",
                     "Comedy / Drama",
                     "Tyler Perry"},

                    {"Ma Rainey's Black Bottom",
                     "Drama / Musical",
                     "George C. Wolfe"}
                };

                /*
                 * Loop through each movie record.
                 * Each iteration creates one row in the HTML table.
                 */

                for (int i = 0; i < movies.length; i++) {
            %>

            <tr>
                <td><%= movies[i][0] %></td>
                <td><%= movies[i][1] %></td>
                <td><%= movies[i][2] %></td>
            </tr>

            <%
                }
            %>

        </tbody>
    </table>
</section>

<section class="field-description">
    <h2>Field Descriptions</h2>

    <table>
        <thead>
            <tr>
                <th>Field</th>
                <th>Description</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td>Movie Title</td>
                <td>The official title of the movie.</td>
            </tr>

            <tr>
                <td>Genre</td>
                <td>The primary genre or category of the movie.</td>
            </tr>

            <tr>
                <td>Director</td>
                <td>The director or directors responsible for the movie.</td>
            </tr>
        </tbody>
    </table>
</section>
```

</main>

<footer>
    <p>JSP Dynamic Data Assignment &copy; 2026 Nazir</p>
</footer>

</body>
</html>
