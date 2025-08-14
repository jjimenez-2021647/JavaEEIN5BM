<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Crud Factura</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/FacturaAdmin.css">
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
                    <li><a href="#">Factura</a></li>
                </ul>
            </div>
        </nav>

        <section>
            <div class="container">
                <h1>Bienvenido al CRUD completo de la entidad <b>Factura</b></h1>

                <!--apartado para crear el proveedor-->
                <div class="section">
                    <h2>Agregar o modificar Factura</h2>
                    <form action="Controlador?menu=Factura" method="Post">
                        <div class="form-row">
                            <div class="form-group">
                                <input type="date" class="entrada_texto" name="txtFechaEmision" id="fechaEmision" value="${factura.getFechaEmision()}" required>
                                <label class="label-input-date"></label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtDescuentoAplicado" min="0" placeholder="0" id="descuentoAplicado" value="${factura.getDescuentoAplicado()}" required>
                                <label class="label-input-number">Descuento Aplicado</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtTotalFactura" min="0" placeholder="0" id="totalFactura" value="${factura.getTotalFactura()}"required>
                                <label class="label-input-number">Total</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="txtEstadoFactura" id="estadoFactura" value="${factura.getEstadoFactura()}" required>
                                    <option value="" disabled selected></option>
                                    <option value="Emitida">Emitida</option>
                                    <option value="Anulada">Anulada</option>
                                    <option value="Pagada">Pagada</option>
                                </select>
                                <label class="label-input">Estado</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="txtFormaEntrega" id="formaEntrega" value="${factura.getFormaEntrega()}" required>
                                    <option value="" disabled selected></option>
                                    <option value="Fisica">Fisica</option>
                                    <option value="Electronica">Electronica</option>
                                </select>
                                <label class="label-input">Forma Entrega</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtCodigoPedido" min="0" placeholder="0"
                                       id="codigoPedido" value="${factura.getCodigoPedido()}" required>
                                <label class="label-input-number">Codigo del Pedido</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="txtCodigoUsuarios" min="0" placeholder="0"
                                       id="codigoUsuarios" value="${factura.getCodigoUsuario()}" required>
                                <label class="label-input-number">Codigo del Usuario</label>
                            </div>
                        </div>
                        <div class="form-row">
                            <button type="submit" class="btn_actualizar" name="accion" value="Agregar">
                                <span class="bnt_texto">Crear Factura</span>
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
                                    <th>Codigo Factura</th>
                                    <th>Fecha Emision</th>
                                    <th>Descuento Aplicado</th>
                                    <th>Total Factura</th>
                                    <th>Estado Factura</th>
                                    <th>Forma Entrega</th>
                                    <th>Codigo Pedido</th>
                                    <th>Codigo Usuario</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>   
                            <c:forEach var="factura" items="${facturas}">
                                <tr>
                                    <td>${factura.getCodigoFactura()}</td>
                                    <td>${factura.getFechaEmision()}</td>
                                    <td>${factura.getDescuentoAplicado()}</td>
                                    <td>${factura.getTotalFactura()}</td>
                                    <td>${factura.getEstadoFactura()}</td>
                                    <td>${factura.getFormaEntrega()}</td>
                                    <td>${factura.getCodigoPedido()}</td>
                                    <td>${factura.getCodigoUsuario()}</td>
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
                            </c:forEach>
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