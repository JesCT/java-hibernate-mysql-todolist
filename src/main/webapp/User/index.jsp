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
                        <div class="card-body">
                            <form action="index.jsp">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo</label>
                                    <input type="email" class="form-control" id="email" name="email" value="jes@gmail.com">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="password" name="password" value="123">
                                </div>
                                <button type="submit" class="btn btn-primary" name="enviar">Ingresar</button>
                            </form>
                            <a href="create.jsp">¿No tiene una cuenta? Crear</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </body>
</html>
