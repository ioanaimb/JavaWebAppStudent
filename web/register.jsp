<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Ioana
  Date: 2018-06-18
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration System</title>
    <style>
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Student Registration System</h1>
<%
    String nume = request.getParameter("lastName");
    String prenume = request.getParameter("firstName");
    int varsta = Integer.parseInt(request.getParameter("age"));
    String materia = request.getParameter("subject");
    //out.print(nume);
    String dbUrl = "jdbc:mysql://localhost/admin?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
    String user = "root";
    String password = "student";
    Statement myStmt;
    ResultSet myRs = null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection myConn = DriverManager.getConnection(dbUrl,user,password);
    myStmt = myConn.createStatement();
    String insertDb = "insert into student" +
            " (nume, prenume, varsta, materia)" +
            " values ('" + nume + "', '"+ prenume +
            "',"+varsta + ",'" + materia + "')";
    System.out.println(insertDb);
    try {
        myStmt.executeUpdate(insertDb);
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>


</body>
</html>
