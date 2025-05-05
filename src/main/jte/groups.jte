@import java.util.*
@import studentSystem.demo.data.Group
@import studentSystem.demo.data.Student

@param List<Group> groups

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Groups List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        ul {
            list-style-type: none;
            padding: 0;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }
        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 15px;
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card h4 {
            margin-top: 0;
            color: #4285f4;
        }
        .card p {
            font-size: 18px;
            font-weight: bold;
        }
        .student-list {
            margin-top: 10px;
            padding-left: 15px;
        }
        .student-item {
            margin-bottom: 5px;
        }
        .nav {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 20px;
        }
        .nav a {
            text-decoration: none;
            padding: 8px 16px;
            background-color: #4285f4;
            color: white;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<h1>List of Groups</h1>

<div class="nav">
    <a href="/">Dashboard</a>
    <a href="/students">Students</a>
    <a href="/groups">Groups</a>
    <a href="/teachers">Teachers</a>
    <a href="/courses">Courses</a>
</div>

<ul>
    @for(Group group : groups)
        <li>
            <div class="card">
                <h4>ID: ${group.getId()}</h4>
                <p>Group Name: ${group.getGroupName()}</p>

                @if(group.getStudents() != null && !group.getStudents().isEmpty())
                    <p>Students (${group.getStudents().size()}):</p>
                    <ul class="student-list">
                        @for(Student student : group.getStudents())
                            <li class="student-item">${student.getFirstName()} ${student.getLastName()}</li>
                        @endfor
                    </ul>
                @else
                    <p>No students in this group</p>
                @endif
            </div>
        </li>
    @endfor
</ul>
</body>
</html>