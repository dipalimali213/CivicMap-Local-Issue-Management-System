<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dips.model.Issue" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Issue Status | CivicMap</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f7f7f7;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            color: #333;
        }
        .table-container {
            max-width: 1000px;
            margin: 0 auto;
        }
        table {
            width: 100%;
            background: white;
            border-collapse: collapse;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        .back-button {
            display: block;
            margin: 40px auto 0;
            padding: 10px 25px;
            font-size: 16px;
            background-color: #6c757d;
            color: white;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            transition: background-color 0.3s;
            width: 120px;
            text-align: center;
        }
        .back-button:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

    <h2>My Issue Status</h2>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Issue ID</th>
                    <th>Contact ID</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Issue> issues = (List<Issue>) request.getAttribute("issues");
                    if (issues != null && !issues.isEmpty()) {
                        for (Issue issue : issues) {
                %>
                <tr>
                    <td><%= issue.getId() %></td>
                    <td><%= issue.getCitizenContactId() %></td>
                    <td><%= issue.getDescription() %></td>
                    <td><%= issue.getDate() %></td>
                    <td><%= issue.getIssueType() %></td>
                    <td><%= issue.getLatitude() %></td>
                    <td><%= issue.getLongitude() %></td>
                    <td><%= issue.getStatus() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="8" style="text-align:center;">No issues found.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <a href="citizenDashboard.jsp" class="back-button">Back</a>

</body>
</html>
