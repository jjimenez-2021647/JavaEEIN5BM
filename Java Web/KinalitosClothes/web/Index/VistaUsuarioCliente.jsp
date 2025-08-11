<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Usuario y Cliente</title>
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/UsuarioCliente.css">
    </head>
    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="menu.jsp">Inicio</a></li>
                </ul>
            </div>  
        </nav>

        <div class="container">
            <!-- Contenedor Usuario -->
            <div class="factura-card">
                <div class="factura-header">
                    <h1><span>Usuario</span> Registrado</h1>
                </div>

                <div class="factura-info">
                    <div class="profile-image-section">
                        <div class="profile-image-container">
                            <img src="../Images/CO-K.C.jpg" alt="Foto de perfil" class="profile-image" id="profileImage">
                        </div>
                        <button class="btn-edit-photo" id="editarFoto">Editar</button>
                    </div>
                    <div class="info-item">
                        <div class="info-label">Código Usuario</div>
                        <div class="info-value">#1</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Nombre Usuario</div>
                        <div class="info-value">admin123</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Contraseña</div>
                        <div class="info-value">••••••••</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Tipo Usuario</div>
                        <div class="info-value">
                            <span class="factura-estado estado-emitida">Empleado</span>
                        </div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Fecha Registro</div>
                        <div class="info-value">21/07/2025</div>
                    </div>
                </div>

                <div class="total-section">
                    <span class="total-label">Estado del Usuario:</span>
                    <span class="total-amount">Activo</span>
                </div>

                <div class="actions">
                    <a id="editarUsuario" class="btn btn-generar" href="#">Editar Usuario</a>
                </div>
            </div>

            <!-- Contenedor Cliente -->
            <div class="factura-card">
                <div class="factura-header">
                    <h1><span>Cliente</span> Registrado</h1>
                </div>

                <div class="factura-info">
                    <div class="info-item">
                        <div class="info-label">Código Cliente</div>
                        <div class="info-value">#101</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Nombre</div>
                        <div class="info-value">Juan Carlos</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Apellido</div>
                        <div class="info-value">García Pérez</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Correo Electrónico</div>
                        <div class="info-value">juan.garcia@email.com</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Teléfono</div>
                        <div class="info-value">+502 1234-5678</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Dirección</div>
                        <div class="info-value">Zona 10, Ciudad de Guatemala</div>
                    </div>

                    <div class="info-item">
                        <div class="info-label">Usuario Registrado</div>
                        <div class="info-value">admin123</div>
                    </div>
                </div>

                <div class="total-section">
                    <span class="total-label">Estado del Cliente:</span>
                    <span class="total-amount">Activo</span>
                </div>

                <div class="actions">
                    <a id="editarCliente" class="btn btn-generar" href="#">Editar Cliente</a>
                </div>
            </div>
        </div>

        <!-- Botón Cerrar Sesión -->
        <div class="logout-section">
            <a id="CerrarSesion" class="btn btn-logout" href="../index.jsp">Cerrar Sesión</a>
        </div>
    </body>
</html>