<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dips.model.Citizen" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Citizens | CivicMap</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        padding: 30px;
        background: url('https://images.pexels.com/photos/8768510/pexels-photo-8768510.jpeg') no-repeat center center fixed;
        background-size: cover;
        color: #000;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #ffffff;
        text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.7);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background: rgba(255, 255, 255, 0.95);
        box-shadow: 0 0 10px rgba(0,0,0,0.3);
        border-radius: 8px;
    }

    th, td {
        padding: 12px;
        border: 1px solid #ccc;
        text-align: left;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    .center-btn {
        text-align: center;
        margin-top: 30px;
    }

    .back-link {
        display: inline-block;
        padding: 10px 20px;
        background-color: #6c757d;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .back-link:hover {
        background-color: #5a6268;
    }
</style>

</head>
<body>

<h2>All Registered Citizens</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<Citizen> citizens = (List<Citizen>) request.getAttribute("citizens");
            if (citizens != null && !citizens.isEmpty()) {
            	int i=0;
                for (Citizen c : citizens) {
        %>
        <tr>
        	<td><%= ++i %></td>
            <td><%= c.getContact() %></td>
            <td><%= c.getName() %></td>
            <td><%= c.getEmail() %></td>
            <td><%= c.getAddress() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" style="text-align: center;">No citizens found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<div class="center-btn">
    <a href="javascript:history.back()" class="back-link">Go Back</a>
</div>

</body>
</html>
