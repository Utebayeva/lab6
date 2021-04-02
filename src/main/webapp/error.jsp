<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Error</title>
    </head>
    <body>
    <%
        String error = request.getParameter("Error");
        if (error.equals("1")) {
            out.println("<h2>You can't do this</h2>");
        }
        else if (error.equals("2")) {
            out.println("<h2>You didn't logged</h2>");
        }
    %>
    </body>
</html>
