<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dips.model.Authority" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Authority</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://images.pexels.com/photos/6054387/pexels-photo-6054387.jpeg'); /* Change path as needed */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-top: 30px;
            text-shadow: 2px 2px 4px #000;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.95);
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        td {
            color: #333;
        }

        input[type=submit] {
            background-color: #FF5722;
            color: white;
            padding: 7px 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #E64A19;
        }
    </style>
</head>
<body>
    <h2>Delete Authority</h2>
    <table>
        <tr>
            <th>Contact</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
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
            <td>
                <form action="performDeleteAuthority" method="get" onsubmit="return confirm('Delete <%= a.getName() %>?');">
                    <input type="hidden" name="contact" value="<%= a.getContact() %>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No authorities found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
