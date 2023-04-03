<%-- 
    Document   : create
    Created on : Apr 3, 2023, 11:47:56 AM
    Author     : jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/121f386cd5.js" crossorigin="anonymous"></script>
        <title>Crear tarea</title>
    </head>
    <body>
        <jsp:useBean class="com.jesct.entities.Task" scope="session" id="taskBean"/>
        <jsp:setProperty param="name" property="name" name="taskBean"/>
        
        <jsp:useBean class="com.jesct.entities.User" scope="session" id="userBean"/>
        
        
        <jsp:useBean class="com.jesct.services.TaskService" scope="session" id="taskService"/>
        <div class="container mt-5">
            <a href="../User/index.jsp" class="btn btn-warning">Cerrar sesion</a>
            <div class="row">
                <form action="create.jsp" method="post">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Descripcion</label>
                        <input type="text" class="form-control" id="nombre" name="name" required>
                    </div>
                    <button type="submit" name="btnSent" class="btn btn-primary">Guardar <i class="fa-solid fa-floppy-disk"></i></button>
                    <a href="index.jsp" class="btn btn-primary">Cancelar <i class="fa-sharp fa-solid fa-xmark"></i></a>
                </form>
            </div>
        </div>
        <%
                if (request.getParameter("btnSent") != null) {
                    taskBean.setUser(userBean);
                    taskBean.setFinished(false);
                    taskService.create(taskBean);
                    request.getRequestDispatcher("index.jsp").forward(request, response);      
                }
            %>
    </body>
</html>
