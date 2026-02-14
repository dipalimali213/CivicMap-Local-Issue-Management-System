<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dips.model.Authority" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Authorities | CivicMap</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 40px 20px;
            background: url('https://images.pexels.com/photos/7116580/pexels-photo-7116580.jpeg') no-repeat center center fixed;
            background-size: cover;
        }

        h2 {
            text-align: center;
            color: #003366;
            font-size: 28px;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            overflow: hidden;
        }

        th, td {
            padding: 14px 18px;
            border-bottom: 1px solid #ddd;
            text-align: center;
            font-size: 15px;
        }

        th {
            background-color: #1976d2;
            color: white;
        }

        tr:hover {
            background-color: #f2f8ff;
        }

        .back-link {
            display: inline-block;
            margin: 30px auto 0;
            padding: 10px 22px;
            background-color: #ffa726; /* orange for back */
            color: white;
            border: none;
            border-radius: 25px;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #fb8c00;
        }
    </style>
</head>
<body>

    <h2>All Registered Authorities</h2>

    <table>
        <tr>
            <th>Contact ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Password</th>
        </tr>

        <%
            List<Authority> list = (List<Authority>) request.getAttribute("authorities");
            if (list != null && !list.isEmpty()) {
                for (Authority a : list) {
        %>
        <tr>
            <td><%= a.getContact() %></td>
            <td><%= a.getName() %></td>
            <td><%= a.getDepartment() %></td>
            <td><%= a.getEmail() %></td>
            <td><%= a.getPassword() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5">No authorities found.</td>
        </tr>
        <%
            }
        %>
    </table>

    <div style="text-align: center;">
        <a href="adminDashboard" class="back-link">Back to Dashboard</a>
    </div>

</body>
</html>
