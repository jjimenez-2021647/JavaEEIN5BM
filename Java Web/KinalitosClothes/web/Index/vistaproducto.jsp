<%-- 
    Document   : vistaproducto
    Created on : 22 jul 2025, 13:14:20
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KC Store - Ropa de Calidad</title>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;600;700;900&display=swap" rel="stylesheet">
        <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
        <link rel="stylesheet" href="../Styles/vistaproducto.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
        <link rel="stylesheet" href="../Styles/vistacaategoria.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="menu.jsp">INICIO</a></li>
                    <li><a href="conocenos.jsp">NOSOTROS</a></li>
                    <li><a href="vistaadmin.jsp">ADMINISTRACION</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="hero">
                <h1><span>KC</span> Store</h1>
                <!-- Barra de búsqueda -->
                <form>
                    <div class="barrabuscar">
                        <select onchange="if (this.value)
                                    window.location.href = this.value;">
                            <option value="">Selecciona categoría</option>
                            <option value="hombre.jsp">Hombre</option>
                            <option value="mujer.jsp">Mujer</option>
                            <option value="#">Juvenil</option>
                        </select>
                    </div>
                </form>
            </div>


            <div class="products-grid">
                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropap5.jpg" alt="playera oversize">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Camiseta de <b>Los Angeles</b></h3>
                        <p class="product-description">Camiseta de algodón 100%, con un tipo de corte moderno tipo oversize
                            calida para chuleriar dijo aquel.</p>
                        <div class="size-selector">
                            <div class="size-option">XS</div>
                            <div class="size-option">S</div>
                            <div class="size-option">M</div>
                            <div class="size-option">L</div>
                            <div class="size-option">XL</div>
                        </div>
                        <div class="product-price">Q 181.50</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropasec2.jpg" alt="playera oversize">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Pantalon Casual de Mujer</h3>
                        <p class="product-description">Pantalon casual de mezclilla, diseño olgado. Comodidad garantizada.
                        </p>
                        <div class="size-selector">
                            <div class="size-option">28</div>
                            <div class="size-option">30</div>
                            <div class="size-option">32</div>
                            <div class="size-option">34</div>
                            <div class="size-option">36</div>
                        </div>
                        <div class="product-price">Q 241.60</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropap6.jpg" alt="playera oversize">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Sudadera Con Capucha</h3>
                        <p class="product-description">Sudadera con capucha verde y blanco, interior suave y cálido. Ideal
                            para cualquier temporada.</p>
                        <div class="size-selector">
                            <div class="size-option">XS</div>
                            <div class="size-option">S</div>
                            <div class="size-option">M</div>
                            <div class="size-option">L</div>
                            <div class="size-option">XL</div>
                        </div>
                        <div class="product-price">Q 200.00</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropa2.jpg" alt="playera oversize">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Sudadera sin capucha</h3>
                        <p class="product-description">Sudadera sin capucha color blanco, interior suave y cálido. Ideal
                            para cualquier temporada.</p>
                        <div class="size-selector">
                            <div class="size-option">XS</div>
                            <div class="size-option">S</div>
                            <div class="size-option">M</div>
                            <div class="size-option">L</div>
                            <div class="size-option">XL</div>
                        </div>
                        <div class="product-price">Q 350.00</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropasec2.3.jpg" alt="Vestido Elegante">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Vestido Elegante</h3>
                        <p class="product-description">Vestido elegante de diseño exclusivo, perfecto para ocasiones
                            especiales. Tela de alta calidad y corte favorecedor.</p>
                        <div class="size-selector">
                            <div class="size-option">XS</div>
                            <div class="size-option">S</div>
                            <div class="size-option">M</div>
                            <div class="size-option">L</div>
                            <div class="size-option">XL</div>
                        </div>
                        <div class="product-price">Q 150.00</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

                <div class="product-card">
                    <div class="product-image">
                        <img src="../Images/ropasec2.5.jpg" alt="Pantalon de Hombre">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Pantalon de Hombre</h3>
                        <p class="product-description">Popelina de algodón crujiente con un toque de elasticidad.
                            Bolsillos laterales en las costuras y bolsillos traseros de parche y bolsillos de carga.</p>
                        <div class="size-selector">
                            <div class="size-option">28</div>
                            <div class="size-option">30</div>
                            <div class="size-option">32</div>
                            <div class="size-option">34</div>
                            <div class="size-option">36</div>
                        </div>
                        <div class="product-price">Q 140.00</div>
                        <button type="button" class="btn_comprar_producto">
                            <span class="bnt_texto">Comprar Producto</span>
                            <span class="btn_icono">
                                <i class="fa-solid fa-cart-shopping"></i> </span>
                        </button>
                    </div>
                </div>

            </div>
        </div>

    </body>

</html>
