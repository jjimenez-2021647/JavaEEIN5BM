<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Detalle_Pedido</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/detallepedidoadmin.css">
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
            <h1>Bienvenido al CRUD completo de la entidad <b>Detalle Pedido</b></h1>
            <!-- Apartado para crear el detalle pedido -->
            <div class="section">
                <h2>Agregar nuevo detalle pedido</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="cantidad" id="txtcantidad" min="0" placeholder="0" required>
                            <label class="label-input-number">Cantidad</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="subtotal" id="txtsubtotal" step="0.01" min="0" placeholder="0.00" required>
                            <label class="label-input-number">Subtotal en Quetzales</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtdescripcion" required>
                            <label class="label-input">Descripción</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoPedido" id="txtcodigoPedido" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" id="txtcodigoProducto" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Producto</label>
                        </div>
                    </div>
                    <button type="button" class="btn_crear_detalle_pedido">
                        <span class="btn_texto">Crear Detalle Pedido</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>
            <!-- Listar y buscar -->
            <div class="section">
                <h2>Listar y buscar detalles pedidos</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" id="txtid" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del detalle pedido a buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Detalle Pedido</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <table>
                    <thead>
                        <tr>
                            <th>Código del Detalle Pedido</th>
                            <th>Cantidad</th>
                            <th>Subtotal</th>
                            <th>Descripción</th>
                            <th>Código Pedido</th>
                            <th>Código Producto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>5</td>
                            <td>Q 1250.00</td>
                            <td>Detalle del pedido con varios productos</td>
                            <td>1</td>
                            <td>2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Actualizar detalle pedido -->
            <div class="section">
                <h2>Actualizar detalle pedido</h2>
                <form class="ingresar_id_act_detalle_pedido">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" name="id" id="txtid" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del detalle pedido a editar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Detalle Pedido</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <form class="form_datos_actualizar_detalle_pedido">
                    <input type="hidden" name="_method" value="PUT">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="cantidad" id="txtcantidad" min="0" placeholder="0" required>
                            <label class="label-input-number">Cantidad</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="subtotal" id="txtsubtotal" step="0.01" min="0" placeholder="0.00" required>
                            <label class="label-input-number">Subtotal en Quetzales</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtdescripcion" required>
                            <label class="label-input">Descripción</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoPedido" id="txtcodigoPedido" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" id="txtcodigoProducto" min="0" placeholder="0" required>
                            <label class="label-input-number">Código del Producto</label>
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
                <h2>Eliminar detalle pedido</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" id="txtid" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del detalle pedido a eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Detalle Pedido</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                    <button type="button" class="btn_eliminar">
                        <span class="btn_texto">Eliminar Detalle Pedido</span>
                        <span class="btn_icono">
                            <i class="fa fa-trash"></i>
                        </span>
                    </button>
                </form>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro, si lo haces se borrará de forma permanente, lo que quiere decir que ya nunca lo recuperarás.
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>
