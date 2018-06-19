<%--
  Created by IntelliJ IDEA.
  User: Ioana
  Date: 2018-06-18
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Student Registration System</title>
    <style>
      input, select {
        width:100%;
        padding: 12px 20px;
        margin: 8px 0;
      }
      button {
        width: 100%;
        background-color: #1c8e96;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
      }
      div {
        background-color: #f2f2f2;
        padding: 20px;
        width: 60%;
        margin: auto;
      }
      h1 {
        text-align: center;
      }
    </style>
  </head>
  <body>
  <h1>Student Registration System</h1>
  <div>
    <form action="register.jsp" method="post">
      <label>Numele</label>
      <input type="text" name="lastName">
      <label>Preumele</label>
      <input type="text" name="firstName">
      <label>Varsta</label>
      <input type="number" name="age">
      <label>Materie</label>
      <select name="subject">
        <option value="Matematica">Matematica</option>
        <option value="Fizica">Fizica</option>
        <option value="Biologie">Biologie</option>
        <option value="Arta">Arta</option>
        <option value="Istorie">Istorie</option>
        <option value="Romana">Romana</option>
        <option value="Chimie">Chimie</option>
      </select>
      <button type="submit">Register</button>
    </form>
  </div>
  </body>
</html>
