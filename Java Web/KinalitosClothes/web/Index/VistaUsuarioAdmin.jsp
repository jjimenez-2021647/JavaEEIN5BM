<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Crud Usuario</title>
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/UsuarioAdmin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="vistaadmin.jsp">Menu Administrador</a></li>
                </ul>
            </div>
        </nav>

        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Usuarios</b></h1>

                <!--apartado para crear el proveedor-->
                <div class="section">
                    <h2>Agregar o modificar Usuario</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="nombreUsuario" required>
                                <label class="label-input">Nombre Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="password" class="entrada_texto" id="contraseñaUsuario" required>
                                <label class="label-input">Contraseña</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="tipoUsuario" id="tipoUsuario" required>
                                    <option value="" disabled selected></option>
                                    <option value="Empleado">Empleado</option>
                                    <option value="Cliente">Cliente</option>
                                </select>
                                <label class="label-input">Tipo Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="date" class="entrada_texto" id="fechaRegistro" required>
                                <label class="label-input-date"></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <button type="button" class="btn_crear">
                                <span class="bnt_texto">Crear Usuario</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-plus"></i>
                                </span>
                            </button>
                            <button type="button" class="btn_actualizar">
                                <span class="bnt_texto">Actualizar</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </span>
                            </button>
                        </div>
                    </form>
                </div>

                <!-- el buscar y listar -->
                <div class="section">
                    <h2>Listar</h2>
                    <div class="table-container">

                        <table>
                            <thead>
                                <tr>
                                    <th>Codigo Usuario</th>
                                    <th>Nombre Usuario</th>
                                    <th>Contraseña Usuario</th>
                                    <th>Tipo Usuario</th>
                                    <th>Fecha Registro</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>21</td>
                                    <td>1</td>
                                    <td>100</td>
                                    <td>Empleado</td>
                                    <td>2025-07-06</td>
                                    <td>
                                        <div class="botonesTabla">
                                            <button type="button" class="btn_editar" id="btnEditarRegistro">
                                                <span class="bnt_texto">Editar</span>
                                                <span class="btn_icono">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </span>
                                            </button>

                                            <button type="button" class="btn_eliminar" id="btnEliminarRegistro">
                                                <span class="bnt_texto">Eliminar</span>
                                                <span class="btn_icono">
                                                    <i class="fa fa-trash"></i></i>
                                                </span>
                                            </button>
                                        </div>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form class="mensaje_eliminar">
                        <input type="hidden">
                        <div class="message warning">
                            <i class="fa fa-exclamation-triangle"></i>
                            <strong>Atencion!</strong> Recuerda que vas a eliminar un registro si lo haces se
                            borrara
                            de
                            forma permanente lo que quiere decir que ya nunca lo recuperaras
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>

</html>