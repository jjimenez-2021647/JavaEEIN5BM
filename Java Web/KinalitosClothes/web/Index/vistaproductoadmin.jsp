<%-- Document : vistaproductoadmin Created on : 22 jul 2025, 13:12:45 Author : PC --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <meta charset="UTF-8">
            <meta https-equiv=" X-UA-Compatible" content="IE-edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>CRUD_Producto</title>
            <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaproductoadmin.css">
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
                    <h1>Bienvenido al CRUD completo de la entidad <b>Producto</b></h1>

                    <!--apartado y actualizar para crear el producto-->
                    <div class="section">
                        <h2>Agregar o actualizar producto</h2>
                        <form>
                            <div class="form-row">
                                <div class="form-group">
                                    <input type="text" class="entrada_texto" id="txtNombreProducto" required>
                                    <label class="label-input">Nombre Producto</label>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="entrada_texto" id="txtDescripcion" required>
                                    <label class="label-input">Descripcion</label>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="entrada_texto" name="precio" step="0.01" min="0"
                                        placeholder="0.00" id="numPrecio" required>
                                    <label class="label-input-number">Precio en Quetzales</label>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0"
                                        required id="numStock">
                                    <label class="label-input-number">Stock</label>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="entrada_texto" name="codigoProveedor" min="0"
                                        placeholder="0" required id="numCodCategoria">
                                    <label class="label-input-number">Codigo del Proveedor</label>
                                </div>
                                <div class="form-group">
                                    <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0"
                                        required id="numCodCategoria">
                                    <label class="label-input-number">Codigo de la Categoria</label>
                                </div>

                            </div>
                            <div class="form-row">
                                <button type="button" class="btn_crear_producto">
                                    <span class="bnt_texto">Crear Producto</span>
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
                                        <th scope="col">Codigo del Producto</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Descripción</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Stock</th>
                                        <th scope="col">Codigo Proveedor</th>
                                        <th scope="col">Codigo Categoria</th>
                                        <th scope="col">Acciones</th>
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