<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Crud Usuario</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/UsuarioAdmin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="Controlador?menu=VistaAdmin">Menu Administrador</a></li>
                    <li><a href="Controlador?menu=Proveedor">Proveedor</a></li>
                    <li><a href="Controlador?menu=Categoria">Categoria</a></li>
                    <li><a href="Controlador?menu=MetodoPago">Metodo P.</a></li>
                    <li><a href="#">Usuario</a></li>
                    <li><a href="Controlador?menu=Producto">Producto</a></li>
                    <li><a href="Controlador?menu=Pedido">Pedido</a></li>
                    <li><a href="Controlador?menu=DetallePedido">Detalle P.</a></li>
                    <li><a href="Controlador?menu=Factura&accion=Listar">Factura</a></li>
                </ul>
            </div>
        </nav>

        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Usuarios</b></h1>

                <!--apartado para crear el proveedor-->
                <div class="section">
                    <h2>Agregar o modificar Usuario</h2>
                    <form action="Controlador?menu=Usuarios" method="Post">
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtNombreUsuario" value="${usuario.getNombreUsuario()}" required>
                                <label class="label-input">Nombre Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtApellidoUsuario" value="${usuario.getApellidoUsuario()}" required>
                                <label class="label-input">Apellido Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtCorreoUsuario" value="${usuario.getCorreoUsuario()}" required>
                                <label class="label-input">Correo</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtTelefonoUsuario" value="${usuario.getTelefonoUsuario()}" required>
                                <label class="label-input">Telefono</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" name="txtDireccionUsuario" value="${usuario.getDireccionUsuario()}" required>
                                <label class="label-input">Direccion</label>
                            </div>
                            <div class="form-group">
                                <input type="password" class="entrada_texto" name="txtpassword" value="${usuario.getContraseñaUsuario()}" required>
                                <label class="label-input">Contraseña</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="txtTipoUsuario" value="${usuario.getTipoUsuario()}" required>
                                    <option value="" disabled selected></option>
                                    <option value="Empleado">Empleado</option>
                                    <option value="Cliente">Cliente</option>
                                </select>
                                <label class="label-input">Tipo Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="date" class="entrada_texto" name="fechaRegistro" value="${usuario.getFechaRegistro()}" required>
                                <label class="label-input-date"></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <button type="submit" class="btn_actualizar" name="accion" value="Agregar">
                                <span class="btn_texto">Crear Usuario</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </span>
                            </button>

                            <button type="button" class="btn_actualizar" name="btnActualizarUsuario">
                                <span class="btn_texto">Actualizar</span>
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
                                    <th>Codigo del Usuario</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                    <th>Direccion</th>
                                    <th>Contraseña Usuario</th>
                                    <th>Tipo Usuario</th>
                                    <th>Fecha Registro</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="usuario" items="${usuarios}">
                                <tr>
                                    <td>${usuario.getCodigoUsuario()}</td>
                                    <td>${usuario.getNombreUsuario()}</td>
                                    <td>${usuario.getApellidoUsuario()}</td>
                                    <td>${usuario.getCorreoUsuario()}</td>
                                    <td>${usuario.getTelefonoUsuario()}</td>
                                    <td>${usuario.getDireccionUsuario()}</td>
                                    <td>${usuario.getContraseñaUsuario()}</td>
                                    <td>${usuario.getTipoUsuario()}</td>
                                    <td>${usuario.getFechaRegistro()}</td>
                                    <td>
                                        <div class="botonesTabla">
                                            <button type="button" class="btn_editar" id="btnEditarUsuario">
                                                <span class="btn_texto">Editar</span>
                                                <span class="btn_icono">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </span>
                                            </button>

                                            <button type="button" class="btn_eliminar" id="btnEliminarUsuario">
                                                <span class="btn_texto">Eliminar</span>
                                                <span class="btn_icono">
                                                    <i class="fa fa-trash"></i>
                                                </span>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <form class="mensaje_eliminar">
                        <input type="hidden">
                        <div class="message warning">
                            <i class="fa fa-exclamation-triangle"></i>
                            <strong>Atencion!</strong> Recuerda que vas a eliminar un registro si lo haces se
                            borrara de forma permanente lo que quiere decir que ya nunca lo recuperaras
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>

</html>