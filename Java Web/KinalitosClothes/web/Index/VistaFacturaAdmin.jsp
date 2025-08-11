<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crud Factura</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/FacturaAdmin.css">
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
            <h1>Bienvenido al CRUD completo de la entidad <b>Factura</b></h1>
            <!-- Apartado para crear el detalle pedido -->
            <div class="section">
                <h2>Agregar nueva Factura</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <select class="entrada_texto" id="estadoFacturaCrear">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Emitida</option>
                                <option value="enviado">Anulada</option>
                                <option value="entregado">Pagada</option>
                                <span class="select-arrow">▼</span>
                            </select>
                            <label class="label-input">Estado Factura</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="formaEntregaCrear">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Física</option>
                                <option value="enviado">Electrónica</option>
                                <span class="select-arrow">▼</span>
                            </select>
                            <label class="label-input" for="status">Forma Entrega</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                required id="codigoPedidoCrear">
                            <label class="label-input-number">Código del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" min="0" placeholder="0"
                                required id="codigoEmpleadoCrear">
                            <label class="label-input-number">Código del Empleado</label>
                        </div>
                    </div>
                    <button type="button" class="btn_crear_detalle_pedido">
                        <span class="btn_texto">Crear Factura</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>
            <!-- Listar y buscar -->
            <div class="section">
                <h2>Listar y buscar Facturas</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required id="idBuscar">
                            <label class="label-input-number">ID de la Factura a Buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Factura</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <table>
                    <thead>
                        <tr>
                            <th>Código de la Factura</th>
                            <th>Fecha Emision</th>
                            <th>Descuento Aplicado</th>
                            <th>Total Factura</th>
                            <th>Estado Factura</th>
                            <th>Forma Entrega</th>
                            <th>Codigo Pedido</th>
                            <th>Codigo Empleado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>2025-06-01</td>
                            <td>Q150.00</td>
                            <td>600.00</td>
                            <td>Emitida</td>
                            <td>Física</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Actualizar detalle pedido -->
            <div class="section">
                <h2>Actualizar Factura</h2>
                <form class="ingresar_id_act_detalle_pedido">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required id="idBuscarActualizar">
                        <label class="label-input-number">ID de la Factura a buscar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Factura</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <form class="form_datos_actualizar_detalle_pedido">
                    <input type="hidden" name="_method" value="PUT" id="methodActualizar">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" min="0" placeholder="0" required id="codigoFacturaActualizar">
                            <label class="label-input-number">Código de la Factura</label>
                        </div>
                        <div class="form-group">
                            <input type="date" class="entrada_texto" name="codigoProducto" min="0" placeholder="0" required id="fechaEmisionActualizar">
                            <label class="label-input-number">Fecha Emisión</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" min="0" placeholder="0" required id="descuentoActualizar">
                            <label class="label-input-number">Descento Aplicado</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" min="0" placeholder="0" required id="totalFacturaActualizar">
                            <label class="label-input-number">Total Factura</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="estadoFacturaActualizar">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Emitida</option>
                                <option value="enviado">Anulada</option>
                                <option value="entregado">Pagada</option>
                                <span class="select-arrow">▼</span>
                            </select>
                            <label class="label-input">Estado Factura</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" id="formaEntregaActualizar">
                                <option value="" disabled selected></option>
                                <option value="pendiente">Física</option>
                                <option value="enviado">Electrónica</option>
                                <span class="select-arrow">▼</span>
                            </select>
                            <label class="label-input" for="status">Forma Entrega</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoPedido" min="0" placeholder="0"
                                required id="codigoPedidoActualizar">
                            <label class="label-input-number">Código del Pedido</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="codigoProducto" min="0" placeholder="0"
                                required id="codigoEmpleadoActualizar">
                            <label class="label-input-number">Código del Empleado</label>
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
                <h2>Eliminar Factura</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required id="idEliminar">
                            <label class="label-input-number">ID de la Factura a eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Factura</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                    <button type="button" class="btn_eliminar">
                        <span class="btn_texto">Eliminar Factura</span>
                        <span class="btn_icono">
                            <i class="fa fa-trash"></i>
                        </span>
                    </button>
                </form>
                <form class="mensaje_eliminar">
                    <input type="hidden" id="hiddenEliminar">
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