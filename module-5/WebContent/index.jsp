<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="inventoryBean" class="beans.InventoryBean" scope="page" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inventory Management System - Record Lookup</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #f8f9fa; color: #333; }
        h1, h2 { color: #0056b3; }
        .container { background: #ffffff; padding: 30px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        form { margin-bottom: 30px; }
        select, input[type="submit"] { padding: 8px 12px; font-size: 16px; margin-right: 10px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #dee2e6; padding: 12px; text-align: left; }
        thead { background-color: #0056b3; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .description { font-style: italic; color: #6c757d; margin-bottom: 15px; }
    </style>
</head>
<body>

<div class="container">
    <h1>Inventory Record Selector</h1>
    <p class="description">Overall Data Description: This system allows administrators to query unique inventory records from the central database by selecting a unique item ID key.</p>

    <!-- Form containing HTML Dropdown Menu -->
    <form method="GET" action="index.jsp">
        <label for="selectedKey"><strong>Select Item ID Key:</strong></label>
        <select name="selectedKey" id="selectedKey">
            <option value="">-- Choose a Unique Key --</option>
            <%
                List<Integer> keys = inventoryBean.getAllKeys();
                for (Integer key : keys) {
            %>
                    <option value="<%= key %>"><%= key %></option>
            <%
                }
            %>
        </select>
        <input type="submit" value="Display Record">
    </form>

    <%
        String selectedKeyParam = request.getParameter("selectedKey");
        if (selectedKeyParam != null && !selectedKeyParam.trim().isEmpty()) {
            int selectedKey = Integer.parseInt(selectedKeyParam);
            ResultSet rs = inventoryBean.getRecordByKey(selectedKey);
            
            if (rs != null && rs.next()) {
    %>
                <h2>Record Details for Item ID: <%= selectedKey %></h2>
                <p class="description">Record Description: Detailed specifications and inventory metrics for the selected merchandise item.</p>

                <!-- Data displayed in an HTML table format with <thead> -->
                <table>
                    <thead>
                        <tr>
                            <th>Item ID</th>
                            <th>Item Name</th>
                            <th>Category</th>
                            <th>Price ($)</th>
                            <th>Stock Quantity</th>
                            <th>Supplier</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= rs.getInt("item_id") %></td>
                            <td><%= rs.getString("item_name") %></td>
                            <td><%= rs.getString("category") %></td>
                            <td><%= rs.getDouble("price") %></td>
                            <td><%= rs.getInt("stock_quantity") %></td>
                            <td><%= rs.getString("supplier") %></td>
                        </tr>
                    </tbody>
                </table>
    <%
            } else {
    %>
                <p style="color: red;">No record found for the selected key value.</p>
    <%
            }
        }
    %>
</div>

</body>
</html>
