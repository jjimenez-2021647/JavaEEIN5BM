<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>KC Store - Metodo Pago</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/metodoPago.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="mispedidos.jsp">Mis Pedidos</a></li>
                </ul>
            </div>

        </nav>
        <div class="main-container">
            <h2>Agregar método de pago</h2>

            <div class="form-row">
                <!-- Método de pago -->
                <div class="form-group">
                    <select class="select-options" required>
                        <option value="" disabled selected hidden></option>
                        <option value="tarjeta">Tarjeta</option>
                        <option value="efectivo">Efectivo</option>
                    </select>
                    <label>Método de Pago</label>
                </div>

                <!-- Entidad Financiera -->
                <div class="form-group">
                    <input type="text" required placeholder=" " />
                    <label>Entidad Financiera</label>
                </div>

                <!-- Moneda -->
                <div class="form-group">
                    <input type="text" required placeholder=" " />
                    <label>Moneda</label>
                </div>
            </div>

            <div class="button-container">
                <button type="button" class="btn_agregar_metodopago">
                    <span class="bnt_texto">Validar Método de Pago</span>
                    <span class="btn_icono">
                        <i class="fa-solid fa-check-to-slot"></i>
                    </span>
                </button>
            </div>


        </div>

    </body>

</html>