@param Long studentCount
@param Long groupCount
@param Long teacherCount
@param Long courseCount

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student System Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .header {
            background-color: #4285f4;
            color: white;
            padding: 30px 0;
            text-align: center;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            margin: 0;
            font-size: 28px;
        }
        .subtitle {
            margin-top: 5px;
            opacity: 0.9;
        }
        .nav {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 20px 0;
        }
        .nav a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #4285f4;
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .nav a:hover {
            background-color: #3367d6;
        }
        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }
        .stat-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .stat-card:hover {
            transform: translateY(-5px);
        }
        .stat-number {
            font-size: 48px;
            font-weight: bold;
            color: #4285f4;
            margin: 15px 0;
        }
        .stat-label {
            font-size: 18px;
            color: #555;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            color: #666;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="container">
        <h1>Student Management System</h1>
        <p class="subtitle">Manage your students, groups, teachers, and courses</p>
    </div>
</div>

<div class="container">
    <div class="nav">
        <a href="/">Dashboard</a>
        <a href="/students">Students</a>
        <a href="/groups">Groups</a>
        <a href="/teachers">Teachers</a>
        <a href="/courses">Courses</a>
    </div>

    <div class="dashboard">
        <div class="stat-card">
            <div class="stat-number">${studentCount}</div>
            <div class="stat-label">Students</div>
        </div>

        <div class="stat-card">
            <div class="stat-number">${groupCount}</div>
            <div class="stat-label">Groups</div>
        </div>

        <div class="stat-card">
            <div class="stat-number">${teacherCount}</div>
            <div class="stat-label">Teachers</div>
        </div>

        <div class="stat-card">
            <div class="stat-number">${courseCount}</div>
            <div class="stat-label">Courses</div>
        </div>
    </div>

    <div class="footer">
        <p>Student Management System • © 2025</p>
    </div>
</div>
</body>
</html>