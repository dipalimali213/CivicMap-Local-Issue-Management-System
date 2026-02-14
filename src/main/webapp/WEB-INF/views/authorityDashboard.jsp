<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dips.model.Authority" %>
<%
    Authority authority = (Authority) session.getAttribute("authority");
    if (authority == null) {
        response.sendRedirect("authorityLogin");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Authority Dashboard | CivicMap</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f8;
                        background: url('https://images.pexels.com/photos/7116580/pexels-photo-7116580.jpeg') no-repeat center center;
            
            margin: 0;
            padding: 0;
        }

        .banner {
            position: relative;
            background: url('https://images.pexels.com/photos/7116580/pexels-photo-7116580.jpeg') no-repeat center center;
            background-size: cover;
            height: 220px;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-shadow: 1px 1px 5px rgba(0,0,0,0.6);
        }

        .banner h1 {
            margin: 0;
            font-size: 34px;
        }

        .banner p {
            margin-top: 5px;
            font-size: 18px;
        }

        .dashboard-container {
            padding: 40px 20px;
            text-align: center;
        }

        .dashboard-buttons {
            margin-top: 20px;
        }

        .dashboard-buttons a {
            display: inline-block;
            margin: 15px;
            padding: 14px 30px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .dashboard-buttons a:hover {
            background-color: #0056b3;
        }

        .footer {
            margin-top: 60px;
            text-align: center;
            color: #7f8c8d;
            font-size: 14px;
            padding-bottom: 20px;
        }

        @media (max-width: 600px) {
            .dashboard-buttons a {
                width: 80%;
                display: block;
                margin: 10px auto;
            }

            .banner h1 {
                font-size: 26px;
            }

            .banner p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="banner">
    <h1>Welcome, <%= authority.getName() %>!</h1>
    <p>Department: <%= authority.getDepartment() %></p>
</div>

<div class="dashboard-container">
    <div class="dashboard-buttons">
        <a href="viewIssues">View Reported Issues</a>
        <a href="viewIssues">Update Resolution Status</a>
        <a href="authorityLogout">Logout</a>
    </div>
</div>

<div class="footer">
    <p>&copy; 2025 CivicMap | Local Issue Mapping Platform</p>
</div>

</body>
</html>
