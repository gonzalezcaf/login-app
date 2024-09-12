<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>

    <form method="post" action="j_security_check">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="j_username" required><br><br>
        
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="j_password" required><br><br>
        
        <input type="submit" value="Iniciar Sesión">
    </form>

    <%
        if (request.getUserPrincipal() != null) {
            out.println("<p>Bienvenido, " + request.getUserPrincipal().getName() + "!</p>");
        }
    %>
</body>
</html>

