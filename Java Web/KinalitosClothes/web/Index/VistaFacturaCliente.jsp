<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Factura</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Factura.css">
    </head>
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
            <div class="factura-card">
                <div class="factura-header">
                    <h1><span>Factura</span> Generada</h1>
                </div>

                <div class="factura-info">
                    <div class="info-item">
                        <div class="info-label">Código Factura</div>
                        <div class="info-value">#1</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Fecha Emisión</div>
                        <div class="info-value">21/07/2025</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Estado</div>
                        <div class="info-value">
                            <span class="factura-estado estado-emitida">Emitida</span>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Forma Entrega</div>
                        <div class="info-value">
                            <span class="forma-entrega">Electrónica</span>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Código Pedido</div>
                        <div class="info-value">12</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Empleado</div>
                        <div class="info-value">12</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Descuento Aplicado</div>
                        <div class="info-value">Q300.00</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Total</div>
                        <div class="info-value">Q1,286.50</div>
                    </div>
                </div>

                <div class="total-section">
                    <span class="total-label">Total de la Factura:</span>
                    <span class="total-amount">Q 986.5</span>
                </div>

                <div class="actions">
                    <button class="btn btn-generar">Imprimir Factura</button>
                </div>
            </div>
        </div>
    </body>
</html>