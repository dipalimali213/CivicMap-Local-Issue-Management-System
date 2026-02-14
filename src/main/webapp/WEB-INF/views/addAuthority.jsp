<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Authority | CivicMap</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://images.pexels.com/photos/33100913/pexels-photo-33100913.jpeg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.7); /* semi-transparent white */
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 500px;
        }

        h2 {
            text-align: center;
            color: #0d47a1;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        input:focus {
            outline: none;
            border-color: #0d47a1;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            font-size: 16px;
            background-color: #1976d2;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #0d47a1;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #0d47a1;
            text-decoration: none;
            font-size: 14px;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add New Authority</h2>
        <form action="AddAuthorityServlet" method="post">
            <div class="form-group">
                <label for="contact">Contact ID</label>
                <input type="text" name="contact" id="contact" required placeholder="e.g. AUTH1001">
            </div>

            <div class="form-group">
                <label for="name">Authority Name</label>
                <input type="text" name="name" id="name" required placeholder="Enter full name">
            </div>

            <div class="form-group">
                <label for="department">Department</label>
                <input type="text" name="department" id="department" required placeholder="Enter department">
            </div>

            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" name="email" id="email" required placeholder="Enter email">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" name="password" id="password" required placeholder="Enter password">
            </div>

            <button type="submit" class="submit-btn">Add Authority</button>
        </form>

        <a href="adminDashboard" class="back-link">Back to Dashboard</a>
    </div>

</body>
</html>
