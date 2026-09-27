<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%!
    /*
     * Escapes user-provided text before it is placed in HTML, helping prevent HTML injection.
     */
    private String escapeHtml(String value) {
        if (value == null) {
            return "";
        }
        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#x27;");
    }
%>
<%
    /*
     * Name: Nazir Knuckles
     * Date: September 27, 2026
     * Assignment: CSD 430 - Restaurant Experience Review Results
     * Purpose: Receive the restaurant review form and display submitted values in an HTML table.
     * Source: Original student assignment draft; AI assistance used to generate this code.
     */

    // Read the submitted form values from the HTTP request.
    request.setCharacterEncoding("UTF-8");
    String customerName = request.getParameter("customerName");
    String visitDate = request.getParameter("visitDate");
    String restaurantName = request.getParameter("restaurantName");
    String mealType = request.getParameter("mealType");
    String rating = request.getParameter("rating");
    String comments = request.getParameter("comments");
    String recommend = request.getParameter("recommend");

    // Convert the selected checkbox values into a readable string.
    String[] selectedHighlights = request.getParameterValues("highlights");
    String highlights = "None selected";
    if (selectedHighlights != null && selectedHighlights.length > 0) {
        StringBuilder highlightBuilder = new StringBuilder();
        for (int i = 0; i < selectedHighlights.length; i++) {
            if (i > 0) {
                highlightBuilder.append(", ");
            }
            highlightBuilder.append(selectedHighlights[i]);
        }
        highlights = highlightBuilder.toString();
    }

    // Give optional fields a clear display value when the user leaves them blank.
    if (comments == null || comments.trim().isEmpty()) {
        comments = "No additional comments provided.";
    }
    if (recommend == null) {
        recommend = "No response";
    } else {
        recommend = "Yes";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Review Results</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 850px; margin: 2rem auto; padding: 0 1rem; line-height: 1.5; }
        table { width: 100%; border-collapse: collapse; margin: 1rem 0; }
        th, td { border: 1px solid #999; padding: 0.75rem; text-align: left; vertical-align: top; overflow-wrap: anywhere; }
        th { background: #f0f0f0; width: 32%; }
        a { display: inline-block; margin-top: 1rem; }
    </style>
</head>
<body>
    <h1>Restaurant Experience Review Results</h1>
    <p>The table below summarizes the information submitted in your review. These results reflect the values entered in the form and are not stored in a database.</p>

    <table>
        <caption>Submitted Restaurant Review</caption>
        <thead>
            <tr>
                <th scope="col">Field</th>
                <th scope="col">Submitted Response</th>
            </tr>
        </thead>
        <tbody>
            <tr><th scope="row">Customer name</th><td><%= escapeHtml(customerName) %></td></tr>
            <tr><th scope="row">Date of visit</th><td><%= escapeHtml(visitDate) %></td></tr>
            <tr><th scope="row">Restaurant name</th><td><%= escapeHtml(restaurantName) %></td></tr>
            <tr><th scope="row">Meal type</th><td><%= escapeHtml(mealType) %></td></tr>
            <tr><th scope="row">Overall rating</th><td><%= escapeHtml(rating) %></td></tr>
            <tr><th scope="row">Experience highlights</th><td><%= escapeHtml(highlights) %></td></tr>
            <tr><th scope="row">Additional comments</th><td><%= escapeHtml(comments) %></td></tr>
            <tr><th scope="row">Would recommend</th><td><%= escapeHtml(recommend) %></td></tr>
        </tbody>
    </table>

    <p><a href="restaurantReview.html">Return to the review form</a></p>
</body>
</html>
