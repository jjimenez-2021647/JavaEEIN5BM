<%-- Document : vistaproductoadmin Created on : 22 jul 2025, 13:12:45 Author : PC --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta https-equiv=" X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Empleado</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaempleadoadmin.css">
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
                    <li><a href="Controlador?menu=Usuarios&accion=Listar">Usuario</a></li>
                    <li><a href="Controlador?menu=Producto">Producto</a></li>
                    <li><a href="Controlador?menu=Pedido">Pedido</a></li>
                    <li><a href="Controlador?menu=DetallePedido">Detalle P.</a></li>
                    <li><a href="Controlador?menu=Factura&accion=Listar">Factura</a></li>
                </ul>
            </div>
        </nav>

        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Empleados</b></h1>

                <!--apartado y actualizar para crear el empleado-->
                <div class="section">
                    <h2>Agregar o actualizar empleado</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtNombreEmpleado" required>
                                <label class="label-input">Nombre Empleado</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtApellidoEmpleado" required>
                                <label class="label-input">Apellido Empleado</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtCorreoEmpleado" required>
                                <label class="label-input">Correo</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtTelefonoEmpleado" required>
                                <label class="label-input">Telefono</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtDireccionEmpleado" required>
                                <label class="label-input">Dirección</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="nombreUsuario" required>
                                <label class="label-input">Nombre Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="password" class="entrada_texto" id="contraseñaUsuario" required>
                                <label class="label-input">Contraseña</label>
                            </div>
                            <div class="form-group">
                                <input type="date" class="entrada_texto" id="fechaRegistro" required>
                                <label class="label-input-date"></label>
                            </div>
                        </div>
                        <div class="form-row">
                            <button type="button" class="btn_actualizar" id="btnCrearCliente">
                                <span class="btn_texto">Crear Empleado</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </span>
                            </button>

                            <button type="button" class="btn_actualizar" id="btnActualizarCliente">
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
                    <h2>Lista</h2>
                    <!-- 
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="id" min="1" placeholder="0"
                                    required id="numBuscarCodProducto">
                                <label class="label-input-number">ID del producto a buscar</label>
                            </div>
                        </div>
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Producto</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>
                    </form> -->
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th scope="col">Codigo del Empleado</th>
                                    <th scope="col">Nombre Empleado</th>
                                    <th scope="col">Apellido Empleado</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Telefono</th>
                                    <th scope="col">Dirección</th>
                                    <th>Nombre Usuario</th>
                                    <th>Contraseña Usuario</th>
                                    <th>Fecha Registro</th>
                                    <th scope="col">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Josué</td>
                                    <td>Jimenez</td>
                                    <td>josuej@gmail.com</td>
                                    <td>+502 2222-2222</td>
                                    <td>Zona 10</td>
                                    <td>Josuu</td>
                                    <td>1234</td>
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
                            <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro si lo haces se
                            borrara de
                            forma permanente lo que quiere decir que ya nunca lo recuperaras
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>

</html>