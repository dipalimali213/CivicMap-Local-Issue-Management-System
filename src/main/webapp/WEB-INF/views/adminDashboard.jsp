<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | CivicMap</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background: url('https://images.pexels.com/photos/20432166/pexels-photo-20432166.jpeg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 90%;
            max-width: 950px;
            padding: 40px 30px;
            text-align: center;
            background: rgba(255, 255, 255, 0.25);
            border-radius: 18px;
            backdrop-filter: blur(6px);
            box-shadow: 0 8px 22px rgba(0, 0, 0, 0.2);
        }

        .title {
            font-size: 36px;
            font-weight: 700;
            color: #003366;
            margin-bottom: 40px;
            text-shadow: 1px 1px 2px #ffffff;
        }

        .card-row {
            display: flex;
            flex-wrap: wrap;
            gap: 25px;
            justify-content: center;
        }

        .card {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
            padding: 18px;
            width: 190px;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }

        .card:hover {
            transform: translateY(-5px);
            opacity: 0.95;
        }

        .actions {
            margin-top: 30px;
        }

        .actions a {
            margin: 10px;
            display: inline-block;
            padding: 12px 26px;
            background: linear-gradient(135deg, #ff416c, #ff4b2b); /* orange-pink gradient */
            color: #fff;
            font-weight: bold;
            border-radius: 10px;
            text-decoration: none;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .actions a:hover {
            transform: scale(1.05);
            opacity: 0.95;
        }

        @media (max-width: 600px) {
            .card {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="title">Admin Dashboard</div>

        <div class="card-row">
            <a href="addAuthority" class="card">Add Authority</a>
            <a href="viewAuthorities" class="card">View Authorities</a>
            <a href="deleteAuthority" class="card">Delete Authority</a>
            <a href="viewCitizens" class="card">View Citizens</a>
            <a href="viewIssues" class="card">View Issues</a>
        </div>

        <div class="actions">
            <a href="javascript:history.back()">Go Back</a>
        </div>
    </div>

</body>
</html>
