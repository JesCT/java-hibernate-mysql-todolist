<%-- 
    Document   : create
    Created on : Mar 23, 2023, 4:06:08 PM
    Author     : jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <title>Crear cuenta</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-header">
                            Crear cuenta
                        </div>
                        <div class="card-body">
                            <form action="index.jsp" id="form">
                                <div class="mb-3">
                                    <label for="name" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="last_name" class="form-label">Apellido</label>
                                    <input type="text" class="form-control" id="last_name" name="last_name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="pass" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="pass" name="password" required>
                                </div>
                                <div class="mb-3">
                                    <label for="confpass" class="form-label">Confirmar contraseña</label>
                                    <input type="password" class="form-control" id="confpass" name="confpassword" required>
                                </div>
                                <button type="submit" class="btn btn-primary" id="btnSent" name="btnSent">Crear cuenta</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const form = document.getElementById('form');

            form.addEventListener("submit", function (event) {
                let pass = document.getElementById('pass').value;
                let confpass = document.getElementById('confpass').value;

                if (pass !== confpass) {
                    alert("Datos erroneos, no coinciden las contraseñas");
                    event.preventDefault();
                }
            });

        </script>
    </body>
</html>
