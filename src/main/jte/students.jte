@import java.util.*

@import studentSystem.demo.presentation.StudentController
@import studentSystem.demo.data.Student

@param List<studentSystem.demo.data.Student> students


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
    content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Students List</title>
</head>
<body>
<h1>List of Students</h1>
<ul>
    @for(Student student : students)
    <li>
        <div class="card">
        <h4>${student.getId()}</h4>
        <p>${student.getFirstName() + student.getLastName()}</p>
        <h6>${student.getGroup().getGroupName()}</h6>
    </div>
    </li>
    @endfor
    </ul>
</body>
</html>
