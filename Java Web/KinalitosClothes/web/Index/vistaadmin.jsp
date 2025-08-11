<%-- 
    Document   : vistaadmin
    Created on : 22 jul 2025, 13:07:15
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KC Admin - Panel de Control</title>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;600;700;900&display=swap" rel="stylesheet">
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/vistaadmin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="menu.jsp">INICIO</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="hero">
                <h1>Panel de Administración</h1>
                <p>Gestiona todos los aspectos de tu tienda desde este panel centralizado. Accede rápidamente a cada
                    sección.</p>
            </div>

            <div class="dashboard-grid">
                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-clipboard-user"></i> </span>
                    <h3 class="card-title">Cliente</h3>
                    <p class="card-description">Gestiona la información de Clientes, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="vistaclientesadmin.jsp" class="btn_ver_gestion">Gestionar Cliente</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-boxes-packing"></i> </span>
                    <h3 class="card-title">Proveedor</h3>
                    <p class="card-description">Gestiona la información de los Proveedores, como agregar, listar,
                        actualizar, eliminar.</p>
                    <a href="vistaproveedoradmin.jsp" class="btn_ver_gestion">Gestionar Proveedores</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-layer-group"></i> </span>
                    <h3 class="card-title">Categoría</h3>
                    <p class="card-description">Gestiona la información de Categoria, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="vistacategoria.jsp" class="btn_ver_gestion">Gestionar Categorías</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-money-check-dollar"></i></span>
                    <h3 class="card-title">Método Pago</h3>
                    <p class="card-description">Gestiona la información de Metodo Pago, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="metodopagoadmin.jsp" class="btn_ver_gestion">Gestionar Metodo Pagos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-user-tie"></i></span>
                    <h3 class="card-title">Usuario</h3>
                    <p class="card-description">Gestiona la información de Usuarios, como agregar, listar, actualizar,
                        eliminar.
                    </p>
                    <a href="VistaUsuarioAdmin.jsp" class="btn_ver_gestion">Gestionar Usuarios</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-brands fa-product-hunt"></i>
                    </span>
                    <h3 class="card-title">Producto</h3>
                    <p class="card-description">
                        Gestiona la información de Productos, como agregar, listar, actualizar, eliminar.
                    </p>
                    <a href="vistaproductoadmin.jsp" class="btn_ver_gestion">Gestionar Productos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-truck-fast"></i> </span>
                    <h3 class="card-title">Pedido</h3>
                    <p class="card-description">Gestiona la información de Pedido, como agregar, listar, actualizar,
                        eliminar.
                    </p>
                    <a href="vistapedidoadmin.jsp" class="btn_ver_gestion">Gestionar Pedidos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-circle-info"></i> </span>
                    <h3 class="card-title">Detalle Pedido</h3>
                    <p class="card-description">Gestiona la información de Detalle Pedido, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="vistadetallepedidoadmin.jsp" class="btn_ver_gestion">Gestionar Detalle Pedido</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-receipt"></i> </span>
                    <h3 class="card-title">Factura</h3>
                    <p class="card-description">Gestiona la información de Factura, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="VistaFacturaAdmin.jsp" class="btn_ver_gestion">Gestionar Facturas</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-address-book"></i> </span>
                    <h3 class="card-title">Empleado</h3>
                    <p class="card-description">Gestiona la información del Empleado, como agregar, listar, actualizar,
                        eliminar.
                    </p>
                    <a href="vistaempleadoadmin.jsp" class="btn_ver_gestion">Gestionar Empleados</a>
                </div>
            </div>
        </div>

    </body>

</html>
