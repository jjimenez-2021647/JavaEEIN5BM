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
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaadmin.css">
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

        <div class="container">
            <div class="hero">
                <h1>Panel de Administración</h1>
                <p>Gestiona todos los aspectos de tu tienda desde este panel centralizado. Accede rápidamente a cada
                    sección.</p>
            </div>

            <div class="dashboard-grid">
                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-boxes-packing"></i> </span>
                    <h3 class="card-title">Proveedor</h3>
                    <p class="card-description">Gestiona la información de los Proveedores, como agregar, listar,
                        actualizar, eliminar.</p>
                    <a href="Controlador?menu=Proveedor" class="btn_ver_gestion">Gestionar Proveedores</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-layer-group"></i> </span>
                    <h3 class="card-title">Categoría</h3>
                    <p class="card-description">Gestiona la información de Categoria, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="Controlador?menu=Categoria" class="btn_ver_gestion">Gestionar Categorías</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-money-check-dollar"></i></span>
                    <h3 class="card-title">Método Pago</h3>
                    <p class="card-description">Gestiona la información de Metodo Pago, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="Controlador?menu=MetodoPago" class="btn_ver_gestion">Gestionar Metodo Pagos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-user-tie"></i></span>
                    <h3 class="card-title">Usuario</h3>
                    <p class="card-description">Gestiona la información de Usuarios, como agregar, listar, actualizar,
                        eliminar.
                    </p>
                    <a href="Controlador?menu=Usuarios&accion=Listar" class="btn_ver_gestion">Gestionar Usuarios</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-brands fa-product-hunt"></i>
                    </span>
                    <h3 class="card-title">Producto</h3>
                    <p class="card-description">
                        Gestiona la información de Productos, como agregar, listar, actualizar, eliminar.
                    </p>
                    <a href="Controlador?menu=Producto" class="btn_ver_gestion">Gestionar Productos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-truck-fast"></i> </span>
                    <h3 class="card-title">Pedido</h3>
                    <p class="card-description">Gestiona la información de Pedido, como agregar, listar, actualizar,
                        eliminar.
                    </p>
                    <a href="Controlador?menu=Pedido" class="btn_ver_gestion">Gestionar Pedidos</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-circle-info"></i> </span>
                    <h3 class="card-title">Detalle Pedido</h3>
                    <p class="card-description">Gestiona la información de Detalle Pedido, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="Controlador?menu=DetallePedido" class="btn_ver_gestion">Gestionar Detalle Pedido</a>
                </div>

                <div class="admin-card">
                    <span class="card-icon">
                        <i class="fa-solid fa-receipt"></i> </span>
                    <h3 class="card-title">Factura</h3>
                    <p class="card-description">Gestiona la información de Factura, como agregar, listar, actualizar,
                        eliminar.</p>
                    <a href="Controlador?menu=Factura&accion=Listar" class="btn_ver_gestion">Gestionar Facturas</a>
                </div>
            </div>
        </div>

    </body>

</html>
