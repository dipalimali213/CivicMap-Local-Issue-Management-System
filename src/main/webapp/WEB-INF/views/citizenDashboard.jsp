<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.dips.model.Citizen" %>
<%
    Citizen citizen = (Citizen) session.getAttribute("citizen");
    if (citizen == null) {
        response.sendRedirect("citizenLogin");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Dashboard | CivicMap</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-image: url('https://images.pexels.com/photos/2422395/pexels-photo-2422395.jpeg'); 
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.65);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .header {
            text-align: center;
            padding: 30px;
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
        }

        .header p {
            margin: 5px 0;
            font-size: 18px;
            color: #e0e0e0;
        }

        .dashboard-container {
            text-align: center;
        }

        .dashboard-container h2 {
            font-size: 30px;
            margin-top: 30px;
            margin-bottom: 20px;
        }

        .dashboard-buttons a {
            display: inline-block;
            margin: 15px;
            padding: 14px 28px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .dashboard-buttons a:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        .footer {
            text-align: center;
            padding: 20px;
            font-size: 14px;
            color: #ccc;
        }
    </style>
</head>
<body>
    <div class="overlay">
        <div class="header">
            <h1>Welcome, <%= citizen.getName() %>!</h1>
            <p>Contact: <%= citizen.getContact() %></p>
        </div>

        <div class="dashboard-container">
            <h2>Citizen Dashboard</h2>
            <div class="dashboard-buttons">
                <a href="reportIssue">Report Local Issue</a>
                <a href="viewIssueStatus">View My Issues</a>
                <a href="citizenLogout">Logout</a>
            </div>
        </div>

        <div class="footer">
            <p>&copy; 2025 CivicMap | Local Issue Mapping Platform</p>
        </div>
    </div>
</body>
</html>
