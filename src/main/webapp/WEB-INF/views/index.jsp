<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CivicMap | Welcome</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@500;600&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Lexend', sans-serif;
        }

        body {
            min-height: 100vh;
            background: url('https://images.pexels.com/photos/8768510/pexels-photo-8768510.jpeg') no-repeat center center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.98); }
            to   { opacity: 1; transform: scale(1); }
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.3);
            padding: 60px 40px;
            text-align: center;
            width: 90%;
            max-width: 500px;
            border: 1px solid rgba(255, 255, 255, 0.50);
        }

        h1 {
            font-size: 38px;
            margin-bottom: 40px;
            color: #ffffff;
            text-shadow: 0 0 12px #7f00ff;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            background: linear-gradient(135deg, #fc466b, #3f5efb);
            color: white;
            font-size: 17px;
            font-weight: 600;
            text-decoration: none;
            border-radius: 40px;
            border: none;
            box-shadow: 0 8px 18px rgba(63, 94, 251, 0.5);
            position: relative;
            overflow: hidden;
            z-index: 1;
            transition: all 0.3s ease;
        }

        .btn::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 200%;
            height: 100%;
            background: linear-gradient(120deg, rgba(255,255,255,0.2), rgba(255,255,255,0));
            z-index: 0;
            transition: all 0.4s ease;
        }

        .btn:hover::before {
            left: 0;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 24px rgba(63, 94, 251, 0.7);
        }

        .btn i {
            margin-right: 10px;
            z-index: 2;
            position: relative;
        }

        .footer {
            margin-top: 40px;
            font-size: 13px;
            color: #eee;
            text-shadow: 0 0 3px #000;
        }

        @media (max-width: 500px) {
            h1 {
                font-size: 30px;
            }

            .btn {
                font-size: 15px;
                padding: 13px;
            }

            .glass-card {
                padding: 40px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="glass-card">
        <h1>CivicMap</h1>

        <a href="adminLogin" class="btn"><i class="fas fa-user-shield"></i>Login as Admin</a>
        <a href="citizenRegister" class="btn"><i class="fas fa-user-plus"></i>Register as Citizen</a>
        <a href="citizenLogin" class="btn"><i class="fas fa-user"></i>Login as Citizen</a>
        <a href="authorityLogin" class="btn"><i class="fas fa-user-tie"></i>Login as Authority</a>

        <div class="footer">
            © 2025 CivicMap Portal | Designed by Dipali Mali
        </div>
    </div>
</body>
</html>
