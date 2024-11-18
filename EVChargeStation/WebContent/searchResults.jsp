<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    <%
    PreparedStatement statement;
    ResultSet resultSet = (ResultSet) request.getAttribute("bunkarea");
    String name = request.getParameter("Name");
    if (name != null && name.length() > 0) {
    	resultSet = statement.executeQuery("SELECT * FROM ev_bunk WHERE Name = '" + name + "'");
    } else {
    	resultSet = statement.executeQuery("SELECT * FROM ev_bunk");
    }
        
       
    %>
</body>
</html>
