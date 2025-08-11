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
                    <li><a href="vistaadmin.jsp">Menú Administrador</a></li>
                </ul>
            </div>
        </nav>
        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Usuario</b></h1>
                <!-- Apartado para crear el detalle pedido -->
                <div class="section">
                    <h2>Agregar nuevo Usuario</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" id="nombreUsuario" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                       required>
                                <label class="label-input-number">Nombre Usuario</label>
                            </div>
                            <div class="form-group">
                                <input type="text" id="contrasena" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                       required>
                                <label class="label-input-number">Contraseña</label>
                            </div> 
                            <div class="form-group">
                                <select id="tipoUsuario" class="entrada_texto">
                                    <option value="" disabled selected></option>
                                    <option value="pendiente">Empleado</option>
                                    <option value="enviado">Cliente</option>
                                    <span class="select-arrow">▼</span>
                                </select>
                                <label class="label-input">Tipo Usuario</label>
                            </div>
                            <button type="button" class="btn_crear_detalle_pedido">
                                <span class="btn_texto">Crear Usuario</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-plus"></i>
                                </span>
                            </button>
                    </form>
                </div>
            </div>
            <!-- Listar y buscar -->
            <div class="section">
                <h2>Listar y buscar Usuarios</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del Usuario a Buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Usuario</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <table>
                    <thead>
                        <tr>
                            <th>Código del Usuario</th>
                            <th>Nombre Usuario</th>
                            <th>Contraseña</th>
                            <th>Tipo Usuario</th>
                            <th>Fecha registro</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Josué</td>
                            <td>*******</td>
                            <td>Empleado</td>
                            <td>2025-06-01</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Actualizar Usuario -->
            <div class="section">
                <h2>Actualizar Usuario</h2>
                <form class="ingresar_id_act_detalle_pedido">
                    <div class="form-group">
                        <input type="number" id="idBuscarActualizar" class="entrada_texto" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del Usuario a buscar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Usuario</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <form class="form_datos_actualizar_detalle_pedido">
                    <input type="hidden" name="_method" value="PUT">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" id="codigoUsuarioActualizar" class="entrada_texto" name="codigoProducto" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Usuario</label>
                        </div>
                        <div class="form-group">
                            <input type="text" id="nombreUsuarioActualizar" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                   required>
                            <label class="label-input-number">Nombre Usuario</label>
                        </div>
                        <div class="form-group">
                            <input type="text" id="contrasenaActualizar" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                   required>
                            <label class="label-input-number">Contraseña</label>
                        </div>
                        <div class="form-group">
                            <select id="tipoUsuarioActualizar" class="entrada_texto">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Empleado</option>
                                <option value="enviado">Cliente</option>
                                <span class="select-arrow">▼</span>
                            </select>
                            <label class="label-input">Tipo Usuario</label>
                        </div>
                        <div class="form-group">
                            <input type="date" id="fechaRegistroActualizar" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                   required>
                            <label class="label-input-number">Fecha registro</label>
                        </div>
                    </div>
                    <button type="button" class="btn_editar">
                        <span class="btn_texto">Actualizar</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </span>
                    </button>
                </form>
            </div>
            <!-- Eliminar el detalle pedido -->
            <div class="section">
                <h2>Eliminar Usuario</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" id="idEliminar" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del Usuario a Eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Usuario</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                    <button type="button" class="btn_eliminar">
                        <span class="btn_texto">Eliminar Usuario</span>
                        <span class="btn_icono">
                            <i class="fa fa-trash"></i>
                        </span>
                    </button>
                </form>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro, si lo haces se borrará de
                        forma permanente, lo que quiere decir que ya nunca lo recuperarás.
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>

</html>