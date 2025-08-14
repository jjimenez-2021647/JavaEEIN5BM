<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta https-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRUD_Categorias</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/VistaCategoriasAdmin.css">
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
                <h1>Bienvenido al CRUD completo de la entidad <b>Categorias</b></h1>

                <!--apartado para crear el proveedor-->
                <div class="section">
                    <h2>Agregar o modificar Categoria</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="nombreCategoria" required>
                                <label class="label-input">Nombre Categoria</label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="entrada_texto" id="descripcionCategoria" required>
                                <label class="label-input">Descripcion Categoria</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="genero" id="genero" required>
                                    <option value="" disabled selected></option>
                                    <option value="Hombre">Hombre</option>
                                    <option value="Mujer">Mujer</option>
                                    <option value="Unisex">Unisex</option>
                                </select>
                                <label class="label-input">Tipo Usuario</label>
                            </div>
                            <div class="form-group">
                                <select class="entrada_texto" name="rangoEdad" id="rangoEdad" required>
                                    <option value="" disabled selected></option>
                                    <option value="Infantil">Infantil</option>
                                    <option value="Juvenil">Juvenil</option>
                                    <option value="Adultos">Adultos</option>
                                </select>
                                <label class="label-input">Tipo Usuario</label>
                            </div>
                        </div>
                        <div class="form-row">
                            <button type="button" class="btn_crear">
                                <span class="bnt_texto">Crear Categoria</span>
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
                                    <th>Codigo Categoria</th>
                                    <th>Nombre Categoria</th>
                                    <th>Descripcion Categoria</th>
                                    <th>Genero</th>
                                    <th>Rango Edad</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Camisas Casual</td>
                                    <td>Camisas de uso diario y relajado</td>
                                    <td>Hombre</td>
                                    <td>Adultos</td>
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
