<%-- 
    Document   : index
    Created on : Apr 3, 2023, 10:45:04 AM
    Author     : jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tareas</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean class="com.jesct.entities.User" scope="session" id="userBean"/>
        <jsp:setProperty param="email" property="email" name="userBean"/>
        <jsp:setProperty param="password" property="password" name="userBean"/>
        
        <jsp:useBean class="com.jesct.services.UserService" scope="session" id="userService"/>
        <%
            boolean res = userService.authenticate(userBean);
            
            if(res == true){
            out.println("Bienvenido");
            out.println(userBean);
            }else{
            out.println("Datos incorrectos, intenta de nuevo");
            }
        %>
    </body>
</html>
