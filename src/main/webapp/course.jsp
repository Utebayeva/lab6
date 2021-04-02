<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Course" %>
<%@ page import="java.util.ArrayList" %>
<html>
    <head>
        <title>Adding course</title>
    </head>
    <body>
        <h2><a href="/main">back to main</a></h2>
        <form action="/course" method="POST">
            <label>name: </label><br>
            <input type="text" name="name">
            <br>
            <label>description: </label><br>
            <input type="text" name="description">
            <br>
            <label>category: </label><br>
            <input type="text" name="category">
            <br>
            <label>price: </label><br>
            <input type="text" name="price">
            <br>
            <label>hours: </label><br>
            <input type="text" name="hours">
            <br>
            <input type="submit" value="submit">
        </form>
    </body>

    <table>
        <tr>
            <th>Course name</th>
            <th>Course description</th>
            <th>Course category</th>
            <th>Course price</th>
            <th>Course hours</th>
        </tr>
        <%
            ArrayList<Course> courses = (ArrayList<Course>) session.getAttribute("games");
            for (Course course: courses) {
                out.println("<tr>");
                out.println("<td>" + course.getName() + "</td>");
                out.println("<td>" + course.getDescription() + "</td>");
                out.println("<td>" + course.getCategory() + "</td>");
                out.println("<td>" + course.getPrice() + "</td>");
                out.println("<td>" + course.getHours() + "</td>");
                out.println("</tr>");
            }
        %>
    </table>
</html>
