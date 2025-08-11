<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta https-equiv=" X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Producto</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/vistapedidoadmin.css">
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
            <h1>Bienvenido al CRUD completo de la entidad <b>Pedidos</b></h1>

            <!--apartado para crear el pedido-->
            <div class="section">
                <h2>Agregar nuevo pedido</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="time" class="entrada_texto"  id="txtHoraPedido" required>
                            <label class="label-input-time ">Hora del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="date" class="entrada_texto" id="txtFechaPedido" required>
                            <label class="label-input-date">Fecha del Pedido</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="chbEstPedido">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Pendiente</option>
                                <option value="enviado">Enviado</option>
                                <option value="entregado">Entregado</option>
                                <label class="label-input-select" for="status">Estado del pedido</label>
                                <span class="select-arrow">▼</span>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtTotalPedido" placeholder="0" required>
                            <label class="label-input-number">Total</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtClientePedido" name="stock" min="0" placeholder="0" required>
                            <label class="label-input-number">Codigo del Cliente</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtMetPagoPedido" name="stock" min="0" placeholder="0" required>
                            <label class="label-input-number">Codigo del Metodo de Pago</label>
                        </div>
                    </div>
                    <button type="button" class="btn_crear_producto" id="btnAgregarPedido">
                        <span class="bnt_texto">Crear Pedido</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>

            <!-- el buscar y listar -->
            <div class="section">
                <h2>Listar y buscar pedidos</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtBuscarPedidos" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del pedido a buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar" id="btnBuscarPedido">
                        <span class="bnt_texto">Buscar Pedidos</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i></i>
                        </span>
                    </button>
                </form>

                <table>
                    <thead>
                        <tr>
                            <th>Codigo del Pedido</th>
                            <th>Hora del Pedido</th>
                            <th>Fecha del Pedido</th>
                            <th>Estado del Pedido</th>
                            <th>Tota</th>
                            <th>Codigo del Cliente</th>
                            <th>Codigo del Metodo de Pago</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Pantalon Campana</td>
                            <td>Pantalon tonos azules</td>
                            <td>Q 250.00</td>
                            <td>5</td>
                            <td>1</td>
                            <td>2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- el actualizar pedido -->
            <div class="section">
                <h2>Actualizar pedidos</h2>
                <form class="ingresar_id_act_producto">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" id="txtIdPedidos" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del pedido a editar:</label>
                    </div>
                    <button type="button" class="btn_buscar" id="btnEditarPedido">
                        <span class="bnt_texto">Buscar Pedido</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i></i>
                        </span>
                    </button>
                </form>

                <form class="form_datos_actualizar_producto">
                    <input type="hidden" name="_method" value="PUT">

                    <div class="form-row">
                        <div class="form-group">
                            <input type="time" class="entrada_texto" id="txtHoraEditar" required>
                            <label class="label-input-time">Hora del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="date" class="entrada_texto" id="txtFechaEditar" required>
                            <label class="label-input-date">Fecha del Pedido</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="chbEstEditar">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Pendiente</option>
                                <option value="enviado">Enviado</option>
                                <option value="entregado">Entregado</option>
                                <label class="label-input-select" for="status">Estado del pedido</label>
                                <span class="select-arrow">▼</span>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtTotalEditar" name="stock" min="0" placeholder="0" required>
                            <label class="label-input-number">Total</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtCliPedidoEditar" name="stock" min="0" placeholder="0" required>
                            <label class="label-input-number">Codigo del Cliente</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtMetPagoEditar" name="stock" min="0" placeholder="0" required>
                            <label class="label-input-number">Codigo del Metodo de Pago</label>
                        </div>
                    </div>
                    <button type="button" class="btn_editar" id="btnEditarPedido">
                        <span class="bnt_texto">Actualizar</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </span>
                    </button>
                </form>
            </div>

            <!-- eliminar el pedido -->
            <div class="section">
                <h2> Eliminar pedidos</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtEliminarPedido" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del pedido a eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar" id="btnBuscarEliminar">
                        <span class="bnt_texto">Buscar Pedidos</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i></i>
                        </span>
                    </button>

                    <button type="button" class="btn_eliminar" id="btnEliminarPedido">
                        <span class="bnt_texto">Eliminar Pedido</span>
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