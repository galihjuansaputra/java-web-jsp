<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
</head>
<body>
<h2>Login Page</h2>

<table>
  <form action="login" method="post">
    <tr>
      <td>User ID:</td>
      <td><input type="text" name="username" required></td>
    </tr>
    <tr>
      <td>Password:</td>
      <td><input type="password" name="password" required></td>
    </tr>
    <% if ("true".equals(request.getParameter("error"))) { %>
    <tr>
    <p style="color: red;">Invalid username or password. Please try again.</p>

    <% } %>
    <tr>
      <td colspan="2" style="text-align: center;">
        <input type="submit" value="Login">
      </td>
    </tr>
  </form>
</table>

<%-- Display error message if login fails --%>

</body>
</html>