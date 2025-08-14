<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Cliente</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaclientesadmin.css">
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
                <h1>Bienvenido al CRUD completo de la entidad <b>CLIENTES</b></h1>

                <!--apartado para crear el cliente-->
                <div class="section">
                    <h2>Agregar o editar cliente</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtNombreCliente" required>
                                <label class="label-input">Nombre Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtApellidoCliente" required>
                                <label class="label-input">Apellido Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtCorreoCliente" required>
                                <label class="label-input">Correo</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtTelefonoCliente" required>
                                <label class="label-input">Telefono</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtDireccionCliente" required>
                                <label class="label-input">Direccion</label>
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
                                <span class="btn_texto">Crear Cliente</span>
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
                    <h2>Listar</h2>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Codigo del Cliente</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                    <th>Direccion</th>
                                    <th>Nombre Usuario</th>
                                    <th>Contraseña Usuario</th>
                                    <th>Fecha Registro</th>
                                    <th>Acciones</th>
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
                                            <button type="button" class="btn_editar" id="btnEditarCliente">
                                                <span class="btn_texto">Editar</span>
                                                <span class="btn_icono">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </span>
                                            </button>

                                            <button type="button" class="btn_eliminar" id="btnEliminarCliente">
                                                <span class="btn_texto">Eliminar</span>
                                                <span class="btn_icono">
                                                    <i class="fa fa-trash"></i>
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
                            <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro si lo haces se borrara
                            de
                            forma permanente lo que quiere decir que ya nunca lo recuperaras
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
    </html>