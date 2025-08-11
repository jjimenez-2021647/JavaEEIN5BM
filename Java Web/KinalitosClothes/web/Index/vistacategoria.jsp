<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta https-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Categorias</title>
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
            <h1>Bienvenido al CRUD completo de la entidad <b>Categorias</b></h1>

            <!-- Crear nueva categoría -->
            <div class="section">
                <h2>Agregar nueva categoría</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Nombre de la Categoría</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Descripción</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" required>
                                <option value="" disabled selected>Seleccione género</option>
                                <option value="Hombre">Hombre</option>
                                <option value="Mujer">Mujer</option>
                                <option value="Unisex">Unisex</option>
                            </select>
                            <label class=>Género</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" required>
                                <option value="" disabled selected>Seleccione rango de edad</option>
                                <option value="Infantil">Infantil</option>
                                <option value="Juvenil">Juvenil</option>
                                <option value="Adultos">Adultos</option>
                            </select>
                            <label class=>Rango de Edad</label>
                        </div>
                    </div>
                    <button type="button" class="btn_crear_producto">
                        <span class="bnt_texto">Crear Categoría</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>

            <!-- Listar y buscar categorías -->
            <div class="section">
                <h2>Listar y buscar categorías</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">Código de la categoría a buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar Categoría</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>

                <table>
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Género</th>
                            <th>Rango de Edad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Casual Juvenil</td>
                            <td>Ropa casual para jóvenes</td>
                            <td>Unisex</td>
                            <td>Juvenil</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Actualizar categoría -->
            <div class="section">
                <h2>Actualizar categoría</h2>
                <form class="ingresar_id_act_categoria">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">Código de la categoría a editar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar Categoría</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>

                <form class="form_datos_actualizar_categoria">
                    <input type="hidden" name="_method" value="PUT">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Nombre de la Categoría</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Descripción</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" required>
                                <option value="" disabled selected>Seleccione género</option>
                                <option value="Hombre">Hombre</option>
                                <option value="Mujer">Mujer</option>
                                <option value="Unisex">Unisex</option>
                            </select>
                            <label class=>Género</label>
                        </div>
                        <div class="form-group">
                            <select class="entrada_texto" required>
                                <option value="" disabled selected>Seleccione rango de edad</option>
                                <option value="Infantil">Infantil</option>
                                <option value="Juvenil">Juvenil</option>
                                <option value="Adultos">Adultos</option>
                            </select>
                            <label class=>Rango de Edad</label>
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

            <!-- Eliminar categoría -->
            <div class="section">
                <h2>Eliminar categoría</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">Código de la categoría a eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar Categoría</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>

                    <button type="button" class="btn_eliminar">
                        <span class="bnt_texto">Eliminar Categoría</span>
                        <span class="btn_icono">
                            <i class="fa fa-trash"></i>
                        </span>
                    </button>
                </form>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro. Si lo haces, se borrará de forma permanente y no podrás