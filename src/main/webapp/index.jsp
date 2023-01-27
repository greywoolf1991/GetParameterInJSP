<%@ page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GetParameterPage</title>
</head>
<body>
<%
    try {
        if (request.getParameter("number") != null) {
            int num = Integer.parseInt(request.getParameter("number"));
            out.print("<p>You enter number: " + num + "</p>\n" +
                    "<p>I increased this shame by 10: " + (num + 10) + "</p>");
        } else {
            out.print("<p>The request must contain an integer parameter and look something like this:</p>" +
                    "<p>http://localhost:8080/GetParameterInJSP?number=<font color='red'>n</font></p>" +
                    "<p>, where <font color='red'>n</font> - is a integer.</p>");
        }
    } catch (NumberFormatException e) {
        out.print("<p>Check the number, you enter. <font color='red'>"+request.getParameter("number")+"</font> - it's not an integer.</p>");
    } catch (IOException e) {
        out.print("<p>Check the number, you enter. <font color='red'>"+request.getParameter("number")+"</font> - it's not an integer.</p>");
    }
%>
</body>
</html>
