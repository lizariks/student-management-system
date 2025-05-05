@import studentSystem.demo.data.Student
@import studentSystem.demo.data.Course
@import java.util.List

@param List<Student> students

<!DOCTYPE html>
<html>
<head>
    <title>Students List</title>
</head>
<body>
<h1>Students</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Group</th>
        <th>Courses</th>
    </tr>
    @for(Student student : students)
        <tr>
            <td>${student.getId()}</td>
            <td>${student.getFirstName()}</td>
            <td>${student.getLastName()}</td>
            <td>${student.getEmail()}</td>
            <td>${student.getGroup() != null ? student.getGroup().getGroupName() : "Not assigned"}</td>
            <td>
                @if(student.getCourses() != null)
                    <ul>
                        @for(Course course : student.getCourses())
                            <li>${course != null ? course.getName() : "Unknown course"}</li>
                        @endfor
                    </ul>
                @else
                    No courses enrolled
                @endif
            </td>
        </tr>
    @endfor
</table>
<a href="/">Back to Home</a>
</body>
</html>