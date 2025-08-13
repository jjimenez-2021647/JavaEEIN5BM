<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KC Store - Sección Mujer</title>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;600;700;900&display=swap" rel="stylesheet">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/Images/Logo_K.C.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/vistaproducto.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
        <nav class="navbar">
            <div class="nav-content">
                <div class="logo">K<span>C</span></div>
                <ul class="menu">
                    <li><a href="Controlador?menu=Principal">INICIO</a></li>
                    <li><a href="Controlador?menu=Conocenos">NOSOTROS</a></li>
                    <li><a href="Controlador?menu=VistaAdmin">ADMINISTRACION</a></li>
                </ul>
            </div>
        </nav>

        <div class="container" style="margin-top:80px;">
            <div class="hero">
                <h1><span>KC</span> Store - Sección Mujer</h1>
            </div>
            <form>
                <div class="barrabuscar">
                    <select onchange="if (this.value)
            window.location.href = this.value;">
                        <option value="">Selecciona categoría</option>
                        <option value="Controlador?menu=Hombre">Hombre</option>
                            <option value="Controlador?menu=Mujer">Mujer</option>
                        <option value="#">Juvenil</option>
                    </select>
                </div>
            </form>
            <div class="products-grid">
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/ropasec2.jpg" alt="Pantalon Casual de Mujer">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Pantalon Casual de Mujer</h3>
                        <p class="product-description">Pantalon casual de mezclilla, diseño olgado. Comodidad garantizada.</p>
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
                                <i class="fa-solid fa-cart-shopping"></i>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/Images/ropasec2.3.jpg" alt="Vestido Elegante">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">Vestido Elegante</h3>
                        <p class="product-description">Vestido elegante de diseño exclusivo, perfecto para ocasiones especiales. Tela de alta calidad y corte favorecedor.</p>
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
                                <i class="fa-solid fa-cart-shopping"></i>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>