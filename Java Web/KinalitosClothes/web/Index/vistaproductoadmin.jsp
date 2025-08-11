<%-- Document : vistaproductoadmin Created on : 22 jul 2025, 13:12:45 Author : PC --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta https-equiv=" X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Producto</title>
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/vistaproductoadmin.css">
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
                <h1>Bienvenido al CRUD completo de la entidad <b>Producto</b></h1>

                <!--apartado para crear el producto-->
                <div class="section">
                    <h2>Agregar nuevo producto</h2>
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
                        <button type="button" class="btn_crear_producto">
                            <span class="bnt_texto">Crear Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-plus"></i>
                            </span>
                        </button>
                    </form>
                </div>

                <!-- el buscar y listar -->
                <div class="section">
                    <h2>Listar y buscar productos</h2>
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
                    </form>

                    <table>
                        <thead>
                            <tr>
                                <th>Codigo del Producto</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Stock</th>
                                <th>Codigo Proveedor</th>
                                <th>Codigo Categoria</th>
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
                <!-- el actualizar producto -->
                <div class="section">
                    <h2>Actualizar producto</h2>
                    <form class="ingresar_id_act_producto">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required
                                   id="numActualizarCodProducto">
                            <label class="label-input-number">ID del producto a editar:</label>
                        </div>
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Producto</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>
                    </form>

                    <form class="form_datos_actualizar_producto">
                        <input type="hidden" name="_method" value="PUT">

                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required id="txtActualizarNombreProducto">
                                <label class="label-input">Nombre Producto</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" required id="txtActualizarDescripcion">
                                <label class="label-input">Descripcion</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="precio" step="0.01" min="0"
                                       placeholder="0.00" required id="numActualizarPrecio">
                                <label class="label-input-number">Precio en Quetzales</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0"
                                       required id="numActualizarStock">
                                <label class="label-input-number">Stock</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0"
                                       required id="numActualizarCodProveedor">
                                <label class="label-input-number">Codigo del Proveedor</label>
                            </div>
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="stock" min="0" placeholder="0"
                                       required id="numActualizarCodCategoria">
                                <label class="label-input-number">Codigo de la Categoria</label>
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
                    <h2> Eliminar producto</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="number" class="entrada_texto" name="id" min="1" placeholder="0"
                                       required id="numEliminarCodProducto">
                                <label class="label-input-number">ID del producto a eliminar</label>
                            </div>
                        </div>
                    </form>
                    <form class="form_btn_eliminar_buscar">
                        <button type="button" class="btn_buscar">
                            <span class="bnt_texto">Buscar Producto</span>
                            <span class="btn_icono">
                                <i class="fa fa-search"></i></i>
                            </span>
                        </button>

                        <button type="button" class="btn_eliminar">
                            <span class="bnt_texto">Eliminar Producto</span>
                            <span class="btn_icono">
                                <i class="fa fa-trash"></i></i>
                            </span>
                        </button>
                    </form>
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