<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dips.model.Issue" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Issues | CivicMap</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://images.pexels.com/photos/351434/pexels-photo-351434.jpeg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        .header {
            text-align: center;
            padding-top: 30px;
        }

        .back-button-container {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .back-button {
            display: inline-block;
            background-color: #6c757d;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #222;
            margin-bottom: 10px;
        }

        table {
            margin: 20px auto 40px auto;
            border-collapse: collapse;
            width: 95%;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 14px 18px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3e8ed0;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        select, input[type="submit"] {
            padding: 6px 10px;
            border: none;
            border-radius: 20px;
            font-weight: bold;
            font-size: 14px;
        }

        select {
            background-color: #f0f0f0;
        }

        input[type="submit"] {
            background-color: #3e8ed0;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #316ca8;
        }
    </style>
</head>
<body>

    

    <div class="header">
        <h2>All Reported Issues</h2>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Citizen Contact</th>
                <th>Issue Type</th>
                <th>Latitude</th>
                <th>Longitude</th>
                <th>Description</th>
                <th>Date</th>
                <th>Status</th>
                <th>Action</th>
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
                    <td><%= issue.getIssueType() %></td>
                    <td><%= issue.getLatitude() %></td>
                    <td><%= issue.getLongitude() %></td>
                    <td><%= issue.getDescription() %></td>
                    <td><%= issue.getDate() %></td>
                    <td><%= issue.getStatus() %></td>
                    <td>
                        <form action="updateIssueStatus" method="post">
                            <input type="hidden" name="id" value="<%= issue.getId() %>">
                            <select name="status">
                                <option value="Pending" <%= "Pending".equals(issue.getStatus()) ? "selected" : "" %>>Pending</option>
                                <option value="In Progress" <%= "In Progress".equals(issue.getStatus()) ? "selected" : "" %>>In Progress</option>
                                <option value="Resolved" <%= "Resolved".equals(issue.getStatus()) ? "selected" : "" %>>Resolved</option>
                            </select>
                            <input type="submit" value="Update">
                        </form>
                    </td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="9" style="text-align:center;">No issues found.</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <!-- Go Back Button at the Top -->
    <div class="back-button-container">
        <a href="javascript:history.back()" class="back-button">Back</a>
    </div>

</body>
</html>
