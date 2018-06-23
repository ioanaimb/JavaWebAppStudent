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
        #students {
            width:100%;
        }
        #students td, #students th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        #students tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        #students th {
            text-align: left;
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #1c8e96;
            color: white;
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
    try{
    Connection myConn = DriverManager.getConnection(dbUrl,user,password);
    myStmt = myConn.createStatement();
    String insertDb = "insert into student" +
            " (nume, prenume, varsta, materia)" +
            " values ('" + nume + "', '"+ prenume +
            "',"+varsta + ",'" + materia + "')";
    System.out.println(insertDb);
    myStmt.executeUpdate(insertDb);


    myRs = myStmt.executeQuery("select * from student");
%>
    <table id="students">
        <tr>
        <th>ID</th>
        <th>Nume</th>
        <th>Prenume</th>
        <th>Varsta</th>
        <th>Materia</th>
    </tr>
        <%
            while(myRs.next()){ %>
            <tr><td><%=myRs.getString(1)%></td>
                <td><%=myRs.getString(2)%></td>
                <td><%=myRs.getString(3)%></td>
                <td><%=myRs.getString(4)%></td>
                <td><%=myRs.getString(5)%></td>
            </tr>
           <%
            }
               } catch (SQLException e) {
                   e.printStackTrace();
               }
        %>

    </table>

</body>
</html>
