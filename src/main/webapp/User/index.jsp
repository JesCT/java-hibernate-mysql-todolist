<%-- 
    Document   : index
    Created on : Mar 23, 2023, 4:05:47 PM
    Author     : jesus
--%>
<%@page import="java.util.List"%>
<%@page import="com.jesct.entities.User"%>
<%@page import="com.jesct.services.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <title>Iniciar sesion</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-header">
                            Iniciar sesión
                        </div>
                        <jsp:useBean class="com.jesct.entities.User" scope="session" id="userBean"/>
                        <jsp:setProperty param="last_name" property="last_name" name="userBean"/>
                        <jsp:setProperty param="name" property="name" name="userBean"/>
                        <jsp:setProperty param="email" property="email" name="userBean"/>
                        <jsp:setProperty param="password" property="password" name="userBean"/>
                        <jsp:setProperty param="confpassword" property="confPassword" name="userBean"/>
                        
                        <jsp:useBean class="com.jesct.services.UserService" scope="session" id="userService"/>
                        <%
                            if(request.getParameter("btnSent") != null){
                                userService.create(userBean);
                            }
                        %>
                        <div class="card-body">
                            <form action="../Task/index.jsp">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Ingresar</button>
                            </form>
                            <a href="create.jsp">¿No tiene una cuenta? Crear</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
