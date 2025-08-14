<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Detalle_Pedido</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/detallepedidoadmin.css">
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
                <h1>Bienvenido al CRUD completo de la entidad <b>Detalle Pedido</b></h1>

                <!-- Apartado para crear el detalle pedido -->
                <div class="section">
                    <h2>Agregar o actualizar detalle pedido</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="cantidad" id="txtcantidad" min="0"
                                    placeholder="0" required>
                                <label class="label-input-number">Cantidad</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="subtotal" id="txtsubtotal" step="0.01"
                                    min="0" placeholder="0.00" required>
                                <label class="label-input-number">Subtotal en Quetzales</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="txtdescripcion" required>
                                <label class="label-input">Descripción</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="codigoPedido" id="txtcodigoPedido"
                                    min="0" placeholder="0" required>
                                <label class="label-input-number">Código del Pedido</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="codigoProducto" id="txtcodigoProducto"
                                    min="0" placeholder="0" required>
                                <label class="label-input-number">Código del Producto</label>
                            </div>

                        </div>
                        <div class="form-row">
                            <button type="button" class="btn_crear_producto">
                                <span class="btn_texto">Crear Detalle Pedido</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-plus"></i>
                                </span>
                            </button>
                            <button type="button" class="btn_actualizar">
                                <span class="btn_texto">Actualizar</span>
                                <span class="btn_icono">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </span>
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Listar y buscar -->
                <div class="section">
                    <h2>Listar</h2>


                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th scope="col">Código del Detalle Pedido</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Subtotal</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">Código Pedido</th>
                                    <th scope="col">Código Producto</th>
                                    <th scope="col">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td data-label="Código del Detalle Pedido">1</td>
                                    <td data-label="Cantidad">5</td>
                                    <td data-label="Subtotal">Q 1250.00</td>
                                    <td data-label="Descripción">Detalle del pedido con varios productos</td>
                                    <td data-label="Código Pedido">1</td>
                                    <td data-label="Código Producto">2</td>
                                    <td data-label="Acciones">
                                        <div class="botonesTabla">
                                            <button type="button" class="btn_editar" id="btn_editar">
                                                <span class="btn_texto">Editar</span>
                                                <span class="btn_icono">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </span>
                                            </button>
                                            <button type="button" class="btn_eliminar" id="btn_eliminar">
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
                            <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro si lo haces se
                            borrará de forma permanente lo que quiere decir que ya nunca lo recuperarás
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>

    </html>