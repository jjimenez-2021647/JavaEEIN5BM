<!DOCTYPE html>
<html lang="es">
 
<head>
    <meta charset="UTF-8">
    <meta https-equiv=" X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Producto</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/metodopagoadmin.css">
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
                        <div class="form-group1">
                            <select class="select-options" required>
                                <option value="" disabled selected hidden></option>
                                <option value="tarjeta">Tarjeta</option>
                                <option value="efectivo">Efectivo</option>
                            </select>
                            <label>Método de Pago</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Entidad Financiera</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Moneda</label>
                        </div>
 
                    </div>
                    <button type="button" class="btn_crear_producto">
                        <span class="bnt_texto">Crear Metodo Pago</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>
 
            <!-- el buscar y listar -->
            <div class="section">
                <h2>Listar y buscar metodo de pago</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del medoto de pago a buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar metodo de pago</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i></i>
                        </span>
                    </button>
                </form>
 
                <table>
                    <thead>
                        <tr>
                            <th>Metodo de Pago</th>
                            <th>Entidad Financiera</th>
                            <th>Moneda</th>
 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Tarjeta</td>
                            <td>Banco Bi</td>
                            <td>Dollares</td>
 
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- el actualizar producto -->
            <div class="section">
                <h2>Actualizar metodo de pago</h2>
                <form class="ingresar_id_act_producto">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del metodo de pago a editar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar metodo de pago</span>
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
                            <label class="label-input">Nombre del metodo de pago</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" required>
                            <label class="label-input">Entidad Financiera</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" name="precio" step="0.01" min="0"
                                placeholder="0.00" required>
                            <label class="label-input-number">Moneda</label>
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
                <h2> Eliminar metodo de pago</h2>
                <form>
                    <div class="form-group">
                        <input type="number" class="entrada_texto" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del metodo de pago a eliminar:</label>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="bnt_texto">Buscar metodos de pago</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
 
                    <button type="button" class="btn_eliminar">
                        <span class="bnt_texto">Eliminar metodo de pago</span>
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