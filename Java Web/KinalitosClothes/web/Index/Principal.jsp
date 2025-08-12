<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>K.C - Inicio</title>
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/menu.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- SECTOR 1: NAVBAR Y HERO -->
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="#">INICIO</a></li>
                    <li><a href="conocenos.jsp">NOSOTROS</a></li>
                    <li><a href="vistaproducto.jsp">TIENDA</a></li>
                    <li><a href="vistaadmin.jsp">ADMINISTRACION</a></li>
                    <li><a href="mispedidos.jsp">MIS PEDIDOS</a></li>
                </ul>
                <div class="iconos">
                    <a href="#"><i class="fa fa-search"></i></a>
                    <a href="mispedidos.jsp"><i class="fa fa-shopping-cart"></i></a>
                    <a href="VistaUsuarioCliente.jsp" class="logo-usuario">
                        <img src="../Images/Logo_K.C.png" alt="Usuario">
                    </a>
                </div>
            </div>
        </nav>
        <section class="hero">
            <div class="hero-content">
                <span class="descuento">hasta 30% de descuento</span>
                <h1>LA MEJOR ROPA URBANA</h1>
                <h2>PARA TU ESTILO UNICO</h2>
                <a href="#NuevosProductos" class="btn-coleccion">VER COLECCION</a>
            </div>
        </section>
        <!-- SECTOR 2: OFERTAS DESTACADAS -->
        <section class="ofertas-destacadas">
            <div class="oferta">
                <img src="../Images/ropa1.jpg" alt="Oferta Laptop">
                <div class="oferta-info">
                    <h3>OFERTA DEL DIA</h3>
                    <p>Hasta 45% de descuento en camicetas</p>
                    <a href="vistaproducto.jsp" class="btn-oferta">COMPRAR AHORA</a>
                </div>
            </div>
            <div class="oferta">
                <img src="../Images/ropa2.jpg" alt="Oferta Reloj">
                <div class="oferta-info">
                    <h3>EL MAS VENDIDO</h3>
                    <p>Precio desde $100</p>
                    <a href="vistaproducto.jsp" class="btn-oferta">COMPRAR AHORA</a>
                </div>
            </div>
        </section>
        <!-- SECTOR 3: NUEVOS PRODUCTOS -->
        <section id="NuevosProductos" class="nuevos-productos-titulo">
            <h2>NUEVOS PRODUCTOS</h2>
            <a href="vistaproducto.jsp" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line two">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line three">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line four">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line five">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line six">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line seven">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="../Images/ropap3.jpg" alt="Producto 1">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropap4.jpg" alt="Producto 2">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropap5.jpg" alt="Producto 3">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropap6.jpg" alt="Producto 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line two">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line three">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line four">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line five">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line six">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                    <div class="line seven">
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                        <div class="round"></div>
                    </div>
                </div>
            </button>
        </section>
        <!-- SECTOR 4: RESEÃAS Y BANNER -->
        <section class="resenas-clientes">
            <h2 class="titulo-resenas">RESEÑAS DE NUESTROS CLIENTES</h2>
            <div class="resenas-lista">
                <div class="resena">
                    <p>"Â¡La calidad de la ropa es excelente y el envÃ­o fue muy rÃ¡pido! Sin duda volverÃ© a comprar."</p>
                    <span class="cliente">ANA PÃREZ</span>
                </div>
                <div class="resena">
                    <p>"Me encantÃ³ la variedad de estilos y los precios accesibles. Â¡Muy recomendable!"</p>
                    <span class="cliente">CARLOS RAMÃREZ</span>
                </div>
                <div class="resena">
                    <p>"El servicio al cliente fue muy atento y la ropa llegÃ³ en perfecto estado."</p>
                    <span class="cliente">MARÃA LÃPEZ</span>
                </div>
            </div>
            <div class="resenas-puntos">
                <span class="punto activo"></span>
                <span class="punto"></span>
                <span class="punto"></span>
            </div>
        </section>
        <section class="banner-imagen">
            <img src="../Images/fondoh.jpg" alt="Banner Tienda" class="banner-img">
        </section>
        <!-- SECTOR 5: PRODUCTOS DESTACADOS Y ARTÃCULOS DE MODA -->
        <section class="nuevos-productos-titulo">
            <h2>PRODUCTOS DESTACADOS</h2>
            <a href="vistaproducto.jsp" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="../Images/ropasec2.jpg" alt="Producto Destacado 1">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec2.3.jpg" alt="Producto Destacado 2">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec2.4.jpg" alt="Producto Destacado 3">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec2.5.jpg" alt="Producto Destacado 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
        </section>
        <section class="nuevos-productos-titulo">
            <h2>ARTICULOS DE MODA</h2>
            <a href="vistaproducto.jsp" class="btn-ver-todo">VER TODO</a>
        </section>
        <section class="acciones-imagenes-con-flechas">
            <button class="carrusel-flecha flecha-izq" aria-label="Anterior">
                <div class="button flecha-personalizada">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
            <section class="acciones-imagenes">
                <div class="accion-imagen">
                    <img src="../Images/ropasec3.jpg" alt="Producto Destacado 1">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec3.2.jpg" alt="Producto Destacado 2">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec3.4.jpg" alt="Producto Destacado 3">
                </div>
                <div class="accion-imagen">
                    <img src="../Images/ropasec3.3.jpg" alt="Producto Destacado 4">
                </div>
            </section>
            <button class="carrusel-flecha flecha-der" aria-label="Siguiente">
                <div class="button flecha-personalizada" style="transform: rotate(180deg)">
                    <div class="line one"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line two"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line three"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line four"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line five"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line six"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                    <div class="line seven"><div class="round"></div><div class="round"></div><div class="round"></div><div class="round"></div></div>
                </div>
            </button>
        </section>

        <br></br>
        <br></br>

        <footer class="footer">
            <div class="footer-contenido">
                <div class="footer-logo">
                    <span>KinalitosClothes</span>
                </div>
            </div>
            <div class="footer-copy">
                © Todos los derechos reservados por KinalitosClothes 👻
            </div>
        </footer>
    </body>

</html>