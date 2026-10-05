<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
Assignment: Module 4 - JavaBean and JSP Data Display
Name: Nazir Knuckles
Date: October 5, 2026

Purpose:
This JSP page uses a JavaBean and Java Scriptlets to retrieve
and display information about five movies in formatted HTML tables.

Source/AI Documentation:
This code was created with assistance from OpenAI ChatGPT based
on the assignment requirements and the student's Module 2 data.
--%>

<%
    /*
     * Create an instance of the MovieBean.
     *
     * The MovieBean contains the movie information originally
     * used in the Module 2 Java Scriptlet - Data Display assignment.
     */
    MovieBean movieBean = new MovieBean();
%>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Movies I Have Enjoyed</title>

    <link rel="stylesheet" href="./css/style.css">

</head>

<body>

<header>

    <h1>Movies I Have Enjoyed</h1>

    <p>
        A collection of five movies that I have enjoyed watching.
    </p>

</header>

<main>

    <section class="description">

        <h2>About This Data</h2>

        <p>
            This page displays information about five movies that
            I have enjoyed watching. The movie data is stored in a
            JavaBean and retrieved by this JSP page using Java
            Scriptlets. Each movie record contains a movie title,
            genre, and director.
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

                <tr>

                    <td>
                        <%= movieBean.getMovie1Title() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie1Genre() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie1Director() %>
                    </td>

                </tr>


                <tr>

                    <td>
                        <%= movieBean.getMovie2Title() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie2Genre() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie2Director() %>
                    </td>

                </tr>


                <tr>

                    <td>
                        <%= movieBean.getMovie3Title() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie3Genre() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie3Director() %>
                    </td>

                </tr>


                <tr>

                    <td>
                        <%= movieBean.getMovie4Title() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie4Genre() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie4Director() %>
                    </td>

                </tr>


                <tr>

                    <td>
                        <%= movieBean.getMovie5Title() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie5Genre() %>
                    </td>

                    <td>
                        <%= movieBean.getMovie5Director() %>
                    </td>

                </tr>

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

                    <td>
                        The official title of the movie.
                    </td>

                </tr>


                <tr>

                    <td>Genre</td>

                    <td>
                        The primary genre or category of the movie.
                    </td>

                </tr>


                <tr>

                    <td>Director</td>

                    <td>
                        The director or directors responsible for
                        the movie.
                    </td>

                </tr>

            </tbody>

        </table>

    </section>


    <section class="record-description">

        <h2>Record Description</h2>

        <p>
            Each record represents one movie in the collection.
            The five records contain the movie title, genre, and
            director. The information was originally created for
            the Module 2 Java Scriptlet - Data Display assignment
            and is now stored and retrieved through the MovieBean.
        </p>

    </section>

</main>


<footer>

    <p>
        JSP JavaBean Data Display Assignment &copy; 2026 Nazir
    </p>

</footer>

</body>

</html>