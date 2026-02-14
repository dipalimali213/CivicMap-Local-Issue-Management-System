<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report Local Issue | CivicMap</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #dae2f8, #d6a4a4);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .form-container {
            background: #fff;
            padding: 40px 50px;
            width: 100%;
            max-width: 650px;
            border-radius: 12px;
            box-shadow: 0 6px 16px rgba(0,0,0,0.15);
            position: relative;
        }

        .form-container img {
            display: block;
            margin: 0 auto 20px;
            width: 80px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            margin-top: 14px;
            display: block;
            color: #34495e;
        }

        input, textarea, select {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input[readonly] {
            background-color: #e9ecef;
            font-weight: bold;
        }

        .submit-btn, .back-link {
            display: block;
            margin: 10px auto;
            padding: 12px 30px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            width: fit-content;
            transition: all 0.3s ease-in-out;
        }

        .submit-btn {
            background-color: #27ae60;
            color: white;
        }

        .submit-btn:hover {
            background-color: #1e8449;
        }

        .back-link {
            background-color: #95a5a6;
            color: white;
        }

        .back-link:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>

<div class="form-container">
    <img src="https://cdn-icons-png.flaticon.com/512/535/535137.png" alt="Report Icon" />
    <h2>Report Local Issue</h2>

    <form action="submitIssue" method="post">
        <label for="citizenContactId">Your Contact ID</label>
        <input type="text" id="citizenContactId" name="citizenContactId" />

        <label for="issueType">Issue Type</label>
        <select id="issueType" name="issueType" required>
            <option value="">-- Select Issue Type --</option>
            <option value="Water Supply">Water Supply</option>
            <option value="Garbage">Garbage</option>
            <option value="Electricity">Electricity</option>
            <option value="Road Damage">Road Damage</option>
            <option value="Public Safety">Public Safety</option>
            <option value="Other">Other</option>
        </select>

        <label for="latitude">Latitude</label>
        <input type="text" id="latitude" name="latitude" placeholder="Enter Latitude" required />

        <label for="longitude">Longitude</label>
        <input type="text" id="longitude" name="longitude" placeholder="Enter Longitude" required />

        <label for="description">Description</label>
        <textarea id="description" name="description" rows="4" placeholder="Describe the issue in detail" required></textarea>

        <label for="date">Date</label>
        <input type="date" id="date" name="date" required />

        <label for="status">Status</label>
        <select id="status" name="status" required>
            <option value="Pending" selected>Pending</option>
            <option value="In Progress">In Progress</option>
            <option value="Resolved">Resolved</option>
            <option value="Rejected">Rejected</option>
        </select>

        <button type="submit" class="submit-btn">Submit Issue</button>
        <a href="javascript:history.back()" class="back-link">Go Back</a>
    </form>
</div>

</body>
</html>
