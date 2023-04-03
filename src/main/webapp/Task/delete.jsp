<%-- 
    Document   : delete
    Created on : Apr 3, 2023, 3:13:08 PM
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
        <title>Eliminar tarea</title>
    </head>
    <body>
        <jsp:useBean class="com.jesct.entities.Task" scope="session" id="taskBean"/>
        <jsp:setProperty param="id" property="id" name="taskBean"/>
        
        <jsp:useBean class="com.jesct.services.TaskService" scope="session" id="taskService"/>
        <div class="container mt-5">
            <a href="../User/index.jsp" class="btn btn-warning">Cerrar sesion</a>
            <hr>
            <h1>¿Esta seguro que quiere eliminar esta tarea?</h1>
            <form action="delete.jsp">
                <button type="submit" name="btnSent" class="btn btn-danger">Si</button>
            </form>
            <a href="../Task/index.jsp" class="btn btn-primary">No, regresar</a>
        </div>
        
        <%
                if (request.getParameter("btnSent") != null) {
                    //out.println(taskBean.getId());
                    taskService.delete(taskBean.getId());
                    request.getRequestDispatcher("index.jsp").forward(request, response);      
                }
            %>
    </body>
</html>
