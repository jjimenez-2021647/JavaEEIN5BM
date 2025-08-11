<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta https-equiv=" X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Cliente</title>
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/vistaclientesadmin.css">
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
                <h1>Bienvenido al CRUD completo de la entidad <b>CLIENTES</b></h1>

                <!--apartado para crear el cliente-->
                <div class="section">
                    <h2>Agregar nuevo cliente</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input">Nombre Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input">Apellido Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input-number">Correo</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto"required>
                                <label class="label-input-number">Telefono</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input-number">Direccion</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0" required>
                                <label class="label-input-number">Codigo del Usuario</label>
                            </div>
                        </div>
                        <button type="button" class="btn_crear_detalle_pedido">
                            <span class="btn_texto">Crear Cliente</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-plus"></i>
                            </span>
                        </button>
                    </form>
                </div>

                <!-- el buscar y listar -->
                <div class="section">
                    <h2>Listar y buscar clientes</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                                <label class="label-input-number">ID del cliente a buscar</label>
                            </div>
                        </div>
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Cliente</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>
                    </form>

                    <table>
                        <thead>
                            <tr>
                                <th>Codigo del Cliente</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Correo</th>
                                <th>Telefono</th>
                                <th>Direccion</th>
                                <th>Codigo del Usuario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Carlos</td>
                                <td>Ramírez</td>
                                <td>carlos.ramirez@gmail.com</td>
                                <td>+502 5123-4567</td>
                                <td>Zona 1, Ciudad de Guatemala</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- el actualizar producto -->
                <div class="section">
                    <h2>Actualizar Cliente</h2>
                    <form class="ingresar_id_act_producto">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del cliente a editar:</label>
                        </div>
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Cliente</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>
                    </form>

                    <form class="form_datos_actualizar_producto">
                        <input type="hidden" name="_method" value="PUT">

                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input">Nombre Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input">Apellido Cliente</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input-number">Correo</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto"required>
                                <label class="label-input-number">Telefono</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required>
                                <label class="label-input-number">Direccion</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0" required>
                                <label class="label-input-number">Codigo del Usuario</label>
                            </div>
                        </div>
                        <button type="button" class="btn_editar">
                            <span class="bnt_texto">Actualizar</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </span>
                        </button>
                    </form>
                </div>

                <!-- eliminar el producto -->
                <div class="section">
                    <h2> Eliminar Cliente</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                                <label class="label-input-number">ID del cliente a eliminar</label>
                            </div>
                        </div>
                    </form>
                    <form class="form_btn_eliminar_buscar">
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Cliente</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>

                        <button type="button" class="btn_eliminar">
                            <span class="bnt_texto">Eliminar Cliente</span>
                            <span class="btn_icono">
                                <i class="fa fa-trash"></i></i>
                            </span>
                        </button>
                    </form>
                    <form class="mensaje_eliminar">
                        <input type="hidden">
                        <div class="message warning">
                            <i class="fa fa-exclamation-triangle"></i>
                            <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro si lo haces se borrara de
                            forma permanente lo que quiere decir que ya nunca lo recuperaras
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>

</html>