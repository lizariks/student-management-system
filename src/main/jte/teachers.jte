@import java.util.*
@import studentSystem.demo.data.Teacher
@import studentSystem.demo.data.Course

@param List<Teacher> teachers

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teachers</title>
</head>
<body>
<h1>Teachers List</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Course</th>
    </tr>
    @for(Teacher teacher : teachers)
        <tr>
            <td>${teacher.getId()}</td>
            <td>${teacher.getFirstName()} ${teacher.getLastName()}</td>
            <td>
                @if(teacher.getCourse() != null)
                    ${teacher.getCourse().getName()}
                @else
                    Not assigned
                @endif
            </td>
        </tr>
    @endfor
</table>

<a href="/">Back to Home</a>
</body>
</html>
