<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalles del Pedido</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistadetallepedido.css"></head>
    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="Controlador?menu=MisPedidos">Mis Pedidos</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="detalle-card">
                <div class="detalle-header">
                    <h2>Detalles del Pedido</h2>
                </div>

                <!-- Detalle 1 -->
                <div class="detalle-item">
                    <div class="detalle-codigo">
                        <span class="codigo-label">Código Detalle:</span>
                        <span class="codigo-value">#001</span>
                    </div>
                    <div class="detalle-info">
                        <div class="descripcion">Laptop Gaming RGB Pro</div>
                        <div class="codigo-producto">Código Producto: PROD001</div>
                    </div>
                    <div class="detalle-cantidad">x1</div>
                    <div class="detalle-subtotal">Q 350.00</div>
                </div>

                <!-- Detalle 2 -->
                <div class="detalle-item">
                    <div class="detalle-codigo">
                        <span class="codigo-label">Código Detalle:</span>
                        <span class="codigo-value">#002</span>
                    </div>
                    <div class="detalle-info">
                        <div class="descripcion">Mouse Inalámbrico Premium</div>
                        <div class="codigo-producto">Código Producto: PROD015</div>
                    </div>
                    <div class="detalle-cantidad">x2</div>
                    <div class="detalle-subtotal">Q 75.50</div>
                </div>

                <!-- Detalle 3 -->
                <div class="detalle-item">
                    <div class="detalle-codigo">
                        <span class="codigo-label">Código Detalle:</span>
                        <span class="codigo-value">#003</span>
                    </div>
                    <div class="detalle-info">
                        <div class="descripcion">Teclado Mecánico Retroiluminado</div>
                        <div class="codigo-producto">Código Producto: PROD023</div>
                    </div>
                    <div class="detalle-cantidad">x1</div>
                    <div class="detalle-subtotal">Q 106.00</div>
                </div>

                <!-- Puedes agregar más detalles copiando la estructura de arriba -->
            </div>
        </div>
    </body>
</html>