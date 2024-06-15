<%@ page import="com.galihjuansaputra.javawebjsp.models.User" %>
<%@ page import="com.galihjuansaputra.javawebjsp.models.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Student> students = new ArrayList<>();

    students.add(new Student("S1", "Student 1", "Dep 1", 35));
    students.add(new Student("S2", "Student 2", "Dep 1", 70));
    students.add(new Student("S3", "Student 3", "Dep 1", 60));
    students.add(new Student("S4", "Student 4", "Dep 1", 90));
    students.add(new Student("S5", "Student 5", "Dep 2", 30));
    students.add(new Student("S6", "Student 6", "Dep 3", 32));
    students.add(new Student("S7", "Student 7", "Dep 3", 70));
    students.add(new Student("S8", "Student 8", "Dep 3", 20));

    int passMark = 50; // Assuming a pass mark of 50

    // HashMap to store department wise pass count and total student count
    HashMap<String, int[]> departmentStats = new HashMap<>();
    for (Student student : students) {
        String department = student.getDepartment();
        int[] stats = departmentStats.get(department);
        if (stats == null) {
            stats = new int[]{0, 0}; // {passCount, totalStudentCount}
            departmentStats.put(department, stats);
        }
        stats[1]++; // Increment total student count
        if (student.getMark() >= passMark) { // Assuming a pass mark of 50
            stats[0]++; // Increment pass count if mark is greater than or equal to pass mark
        }
    }
%>

<html>
<head>
    <title>Welcome</title>
</head>
<body>
<p>Welcome, <%= ((User) request.getAttribute("user")).getUsername() %></p>
<table border="1">
    <thead>
    <tr>
        <th>Department</th>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Marks</th>
        <th>Pass %</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Student student : students) {
            String department = student.getDepartment();
            int[] stats = departmentStats.get(department);
            int passCount = stats[0];
            int totalStudents = stats[1];
            double passPercentage = (passCount * 1.0) / totalStudents * 100; // Calculate pass percentage
    %>
    <tr>
        <td><%= department %></td>
        <td><%= student.getStudentID() %></td>
        <td><%= student.getStudentName() %></td>
        <td><%= student.getMark() %></td>
        <td><%= String.format("%.2f", passPercentage) %>%</td>
    </tr>
    <%
        } // End of for loop
    %>
    </tbody>
</table>
</body>
</html>
