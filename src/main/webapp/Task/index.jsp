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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/121f386cd5.js" crossorigin="anonymous"></script>
        <title>ToDo List</title>
    </head>
    <body>
        <div class="container mt-5">
            <jsp:useBean class="com.jesct.entities.User" scope="session" id="userBean"/>
            <jsp:setProperty param="email" property="email" name="userBean"/>
            <jsp:setProperty param="password" property="password" name="userBean"/>

            <jsp:useBean class="com.jesct.services.UserService" scope="session" id="userService"/>
            <jsp:useBean class="com.jesct.services.TaskService" scope="session" id="taskService"/>
            <%
                com.jesct.entities.User res = userService.authenticate(userBean);
            
                if(res != null){
                
            %>
            
            <jsp:setProperty name="userBean" property="id" value="<%= res.getId() %>"/>
            <a href="../User/index.jsp" class="btn btn-warning">Cerrar sesion</a>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" colspan="3" class="text-center">
                            <a href="create.jsp"><i class="fa-solid fa-user"></i></a>
                            TODO LIST
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            java.util.List<com.jesct.entities.Task> tasks = taskService.list(res.getId());
                            for(com.jesct.entities.Task t: tasks){

                    %>
                    <tr>
                        <th scope="row"><%= t.getName()%></th>
                        <td>
                            <%= t.getFinished()%>
                        </td>
                        <td>
                            <a href="edit.jsp?id=<%= t.getId()%>&name=<%= t.getName()%>&finished=<%= t.getFinished()%>" class="btn btn-primary">
                                <i class="fa-solid fa-pencil"></i>
                            </a>
                            <a href="delete.jsp?id=<%= t.getId()%>" class="btn btn-danger">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>
                </tbody>
            </table>
            <a href="create.jsp" class="btn btn-primary">Agregar</a>

            <%}else{
                out.println("Datos incorrectos, intenta de nuevo");
            %>
                <a href="../User/index.jsp" class="btn btn-danger">Regresar</a>
            <%
                }
            %>
        </div>
    </body>
</html>
