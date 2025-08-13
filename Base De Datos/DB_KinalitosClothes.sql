-- Por Josué Gilberto Jiménez Ajtún, Sebastian alejandro Molina Herrera, Rhandy Estuardo Cana Subuyj, Joshua Alejandro Santa Cruz Chicas, 
-- Alejandro Jose Arocha Virula, Jefry Andre Cruz Yuman, Roberto Andre Rodriguez Gonzalez, Jeremy Jhoel Mendez Palencia
-- 2021647, 2021528, 2021639, 2024254, 2024203, 2021644, 2023342, 2021550
-- IN5BM
-- 07/07/2025

-- Creación de la base de datos
Drop Database if exists DB_KinalitosClothes; 
Create Database DB_KinalitosClothes;
Use DB_KinalitosClothes;

-- ---------- Entidades ----------
-- Proveedores 
Create table Proveedores(
	codigoProveedor int auto_increment,
    nombreProveedor varchar(100) not null,
    telefonoProveedor varchar(20) not null,
    correoProveedor varchar(200) not null,
    paisProveedor varchar(150),
    primary key PK_codigoProveedor (codigoProveedor)
);

-- Categorías
Create table Categorias(
	codigoCategoria int auto_increment,
    nombreCategoria varchar(100) not null,
    descripcionCategoria varchar(200) not null,
    genero enum('Hombre', 'Mujer', 'Unisex') not null,
    rangoEdad enum('Infantil', 'Juvenil', 'Adultos') not null,
    primary key PK_codigoCategoria (codigoCategoria)
);

-- Metodo Pagos
Create table MetodoPagos(
	codigoMetodoPago int auto_increment,
    tipoMetodoPago enum('Tarjeta', 'Efectivo') not null,
    entidadFinanciaera varchar(200) not null,
    moneda varchar(150) not null,
    primary key PK_codigoMetodoPago (codigoMetodoPago)
);

-- Usuarios
Create table Usuarios(
	codigoUsuario int auto_increment,
	nombreUsuario varchar(100) not null,
	apellidoUsuario varchar(100) not null,
	correoUsuario varchar(150) not null,
	telefonoUsuario varchar(20) not null,
	direccionUsuario varchar(200) not null,
    contraseñaUsuario varchar(100) not null,
    tipoUsuario enum('Empleado', 'Cliente') not null,
    fechaRegistro date,
	primary key PK_codigoUsuario (codigoUsuario)
);

-- Productos
Create table Productos(
	codigoProducto int auto_increment,
    nombreProducto varchar(100) not null,
    descripcionProducto varchar(200) not null,
    precioProducto double(5,2) not null,
    talla varchar(50) not null,
    stock int not null,
    codigoProveedor int not null,
    codigoCategoria int not null,
    primary key PK_codigoProducto (codigoProducto),
    constraint FK_codigoProveedor foreign key (codigoProveedor)
		references Proveedores (codigoProveedor),
	constraint FK_codigoCategoria foreign key (codigoCategoria)
		references Categorias (codigoCategoria)
);

-- Pedidos
Create table Pedidos(
	codigoPedido int auto_increment,
    horaPedido time not null,
    fechaPedido date not null,
    estadoPedido enum('Pendiente', 'Enviado', 'Entregado') not null, 
    total double(10,2) not null,
    codigoUsuario int not null,
    codigoMetodoPago int not null,
    primary key PK_codigoPedido (codigoPedido),
	constraint FK_codigoUsuario foreign key (codigoUsuario)
		references Usuarios (codigoUsuario),
	constraint FK_codigoMetodoPago foreign key (codigoMetodoPago)
		references MetodoPagos (codigoMetodoPago)
);
-- Detalle Pedidos
Create table DetallePedidos(
	codigoDetalleP int auto_increment,
    cantidad int not null,
    subtotal double(5,2) not null,
    descripcion varchar(200) not null, 
    codigoPedido int not null,
    codigoProducto int not null,
    primary key PK_codigoDetalleP (codigoDetalleP),
	constraint FK_codigoPedido foreign key (codigoPedido)
		references Pedidos (codigoPedido),
	constraint FK_codigoProducto foreign key (codigoProducto)
		references Productos (codigoProducto)
);

-- Factura
Create table Facturas(
	codigoFactura int auto_increment,
    fechaEmision date not null,
    descuentoAplicado double(5,2),
    totalFactura double(10,2) not null,
    estadoFactura enum('Emitida','Anulada','Pagada'),
    formaEntrega enum('Fisica','Electronica'),
    codigoPedido int not null,
    codigoUsuario int not null,
    primary key PK_codigoFactura (codigoFactura),
    constraint FK_facturaCodigoPedido foreign key (codigoPedido)
        references Pedidos (codigoPedido),
    constraint FK_facturaCodigoUsuario foreign key (codigoUsuario)
        references Usuarios (codigoUsuario)    
);

-- --------------------------- Triggers -----------------------------------
-- Trigger para cargar los descuentos a la entidad Factura 
Delimiter //
	Create trigger tr_Before_Insert_FacturaDescuento
		Before Insert on Facturas
		For each row
			Begin	
				Declare totalF double(10,2);
				Select total into totalF From Pedidos where codigoPedido = New.codigoPedido;
                
                 if (totalF >= 1000) then
					set New.descuentoAplicado = 300.00;
				elseif (totalF >= 500) then
					set New.descuentoAplicado = 150.00;
				else
					set New.descuentoAplicado = 0.00;
				end if;
                
				set New.totalFactura = totalF - New.descuentoAplicado;
			End //
Delimiter ;

-- Trigger para cargar la fecha a la entidad Usuarios 
Delimiter //
	Create trigger tr_Before_Insert_Usuarios
		Before Insert on Usuarios
		For each row
			Begin	
					set New.fechaRegistro = curdate();
			End //
Delimiter ;

-- Trigger para cargar la fecha a Factura 
Delimiter //
	Create trigger tr_Before_Insert_Facturas
		Before Insert on Facturas
		For each row
			Begin	
					set New.fechaEmision= curdate();
			End //
Delimiter ;

-- Trigger para actualizar el total y descuento de factura despues de un update a pedido
Delimiter //
	Create trigger tr_After_Update_Pedido
		After Update on Pedidos
		For each row
			Begin	
				Declare nuevoTotal double(10,2);
				declare nuevoDescuento double(5,2);

				set nuevoTotal = New.total;
				
                if (nuevoTotal >= 1000) then
					set nuevoDescuento = 300.00;
				elseif (nuevoTotal >= 500) then
					set nuevoDescuento = 150.00;
				else
					set nuevoDescuento = 0.00;
				end if;
				
                Update Facturas
					set descuentoAplicado = nuevoDescuento,
						totalFactura = nuevoTotal - nuevoDescuento
							where codigoPedido = NEW.codigoPedido;
			End //
Delimiter ;

-- --------------------------- Procedimientos almacenados ---------------------------
-- --------------------------- Entidad Proveedor --------------------------- 
-- Agregar Proveedor
Delimiter //
	Create procedure sp_AgregarProveedor(
    in nombreProveedor varchar(100), 
    in telefonoProveedor varchar(20), 
    in correoProveedor varchar(200), 
    in paisProveedor varchar(150))
		Begin
			Insert into Proveedores(nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor)
				Values(nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor);
        End //
Delimiter ;
call sp_AgregarProveedor('Textiles Centro', '+502 2456-7890', 'textiles.centro@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Distribuidora El Faro', '+502 3345-1234', 'elfaro.proveedores@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Moda Global', '+502 5566-7788', 'modaglobal@gmail.com', 'México');
call sp_AgregarProveedor('Colores y Telas', '+502 4789-0012', 'coloresytelas@gmail.com', 'El Salvador');
call sp_AgregarProveedor('Fashion Import', '+502 5123-4567', 'fashionimport@gmail.com', 'Estados Unidos');
call sp_AgregarProveedor('Ropa Latina', '+502 6034-5678', 'ropalatina@gmail.com', 'Honduras');
call sp_AgregarProveedor('Tejidos Maya', '+502 7234-1122', 'tejidosmaya@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Estilo Urbano', '+502 3109-8765', 'estilourbano@gmail.com', 'Costa Rica');
call sp_AgregarProveedor('Boutique Express', '+502 4490-2233', 'boutique.express@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Importadora del Sur', '+502 5678-3344', 'import.sur@gmail.com', 'Panamá');
call sp_AgregarProveedor('Distribuciones Vera', '+502 6012-4455', 'vera.distribuciones@gmail.com', 'Nicaragua');
call sp_AgregarProveedor('Telas del Norte', '+502 4343-5566', 'telasnorte@gmail.com', 'México');
call sp_AgregarProveedor('Universal Ropa', '+502 7201-6677', 'universalropa@gmail.com', 'Colombia');
call sp_AgregarProveedor('Ropa Moderna', '+502 8182-7788', 'ropamoderna@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Estampados GT', '+502 9093-8899', 'estampados.gt@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Tendencias del Istmo', '+502 4567-9900', 'tendenciasistmo@gmail.com', 'El Salvador');
call sp_AgregarProveedor('Comercial La Moda', '+502 2121-3344', 'comercialmoda@gmail.com', 'Honduras');
call sp_AgregarProveedor('Distribuciones América', '+502 3678-4455', 'america.dist@gmail.com', 'Costa Rica');
call sp_AgregarProveedor('Tiendas FashionMix', '+502 4532-6677', 'fashionmix.proveedor@gmail.com', 'Guatemala');
call sp_AgregarProveedor('Estilo Joven', '+502 2345-7788', 'estilojoven.gt@gmail.com', 'México');


-- Listar Proveedor
Delimiter //
	Create procedure sp_ListarProveedor()
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor from Proveedores;
        End //
Delimiter ;
call sp_ListarProveedor();

-- Eliminar Proveedor
Delimiter //
	Create procedure sp_EliminarProveedor(
    in _codigoProveedor int)
		Begin
			set foreign_key_checks = 0;
				Delete from Proveedores
					where codigoProveedor = _codigoProveedor;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarProveedor(15);

-- Buscar Proveedor
Delimiter //
	Create procedure sp_BuscarProveedor(
    in _codigoProveedor int)
		Begin
			Select codigoProveedor, nombreProveedor, telefonoProveedor, correoProveedor, paisProveedor from Proveedores
				where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_BuscarProveedor(1);

-- Editar Proveedor
Delimiter //
	Create procedure sp_EditarProveedor(
    in _codigoProveedor int,
    in _nombreProveedor varchar(100), 
    in _telefonoProveedor varchar(20), 
    in _correoProveedor varchar(200), 
    in _paisProveedor varchar(150))
		Begin
			Update Proveedores
				set nombreProveedor = _nombreProveedor,
					telefonoProveedor = _telefonoProveedor,
                    correoProveedor = _correoProveedor,
                    paisProveedor = _paisProveedor
					where codigoProveedor = _codigoProveedor;
        End //
Delimiter ;
call sp_EditarProveedor(16, 'Tendencias del Sur', '+502 4567-8899', 'tendenciassur@gmail.com', 'Costa Rica');
call sp_EditarProveedor(17, 'La Moda Express', '+502 2122-4455', 'lamodaexpress@gmail.com', 'Honduras');
call sp_EditarProveedor(18, 'Distribuciones Continental', '+502 3678-5566', 'dist.continental@gmail.com', 'Colombia');
call sp_EditarProveedor(19, 'FashionMix Proveedores', '+502 4533-6788', 'proveedor.fashionmix@gmail.com', 'Guatemala');
call sp_EditarProveedor(20, 'Estilo Joven Plus', '+502 2346-7899', 'estilojovenplus@gmail.com', 'México');

-- --------------------------- Entidad Categoria --------------------------- 
-- Agregar Categoria
Delimiter //
	Create procedure sp_AgregarCategoria(
    in nombreCategoria varchar(100), 
    in descripcionCategoria varchar(200), 
    in genero enum('Hombre','Mujer','Unisex'), 
    in rangoEdad enum('Infantil','Juvenil','Adultos'))
		Begin
			Insert into Categorias(nombreCategoria, descripcionCategoria, genero, rangoEdad)
				Values(nombreCategoria, descripcionCategoria, genero, rangoEdad);
        End //
Delimiter ;
call sp_AgregarCategoria('Camisas Casual', 'Camisas de uso diario y relajado', 'Hombre', 'Adultos');
call sp_AgregarCategoria('Blusas Elegantes', 'Blusas para eventos y trabajo', 'Mujer', 'Adultos');
call sp_AgregarCategoria('Ropa Deportiva', 'Prendas para hacer ejercicio', 'Unisex', 'Juvenil');
call sp_AgregarCategoria('Pijamas', 'Conjunto de dormir cómodo', 'Unisex', 'Infantil');
call sp_AgregarCategoria('Vestidos de Fiesta', 'Vestidos elegantes para eventos', 'Mujer', 'Juvenil');
call sp_AgregarCategoria('Camisas Formales', 'Camisas para oficina o reuniones', 'Hombre', 'Adultos');
call sp_AgregarCategoria('Pantalones Cargo', 'Pantalones con bolsillos utilitarios', 'Hombre', 'Juvenil');
call sp_AgregarCategoria('Faldas Casual', 'Faldas para el día a día', 'Mujer', 'Adultos');
call sp_AgregarCategoria('Shorts', 'Shorts para clima cálido', 'Unisex', 'Juvenil');
call sp_AgregarCategoria('Suéteres', 'Prendas abrigadoras para frío', 'Unisex', 'Adultos');
call sp_AgregarCategoria('Ropa Escolar', 'Uniformes y prendas escolares', 'Unisex', 'Infantil');
call sp_AgregarCategoria('Chaquetas', 'Prendas para el frío y estilo', 'Unisex', 'Juvenil');
call sp_AgregarCategoria('Ropa de Playa', 'Ropa ligera para el verano', 'Unisex', 'Adultos');
call sp_AgregarCategoria('Leggins', 'Ropa ajustada y cómoda', 'Mujer', 'Juvenil');
call sp_AgregarCategoria('Jeans', 'Pantalones de mezclilla', 'Unisex', 'Juvenil');
call sp_AgregarCategoria('Trajes', 'Ropa formal para eventos', 'Hombre', 'Adultos');
call sp_AgregarCategoria('Vestidos Casual', 'Vestidos para uso diario', 'Mujer', 'Adultos');
call sp_AgregarCategoria('Sudaderas', 'Ropa cómoda para clima fresco', 'Unisex', 'Juvenil');
call sp_AgregarCategoria('Conjuntos Infantiles', 'Ropa para niños pequeños', 'Unisex', 'Infantil');
call sp_AgregarCategoria('Camisas Polo', 'Camisas semiformales de algodón', 'Hombre', 'Juvenil');

-- Listar Categoria
Delimiter //
	Create procedure sp_ListarCategoria()
		Begin
			Select codigoCategoria, nombreCategoria, descripcionCategoria, genero, rangoEdad from Categorias;
        End //
Delimiter ;
call sp_ListarCategoria();

-- Eliminar Categoria
Delimiter //
	Create procedure sp_EliminarCategoria(
    in _codigoCategoria int)
		Begin
			set foreign_key_checks = 0;
				Delete from Categorias
					where codigoCategoria = _codigoCategoria;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarCategoria(15);

-- Buscar Categoria
Delimiter //
	Create procedure sp_BuscarCategoria(
    in _codigoCategoria int)
		Begin
			Select codigoCategoria, nombreCategoria, descripcionCategoria, genero, rangoEdad from Categorias
				where codigoCategoria = _codigoCategoria;
        End //
Delimiter ;
call sp_BuscarCategoria(1);

-- Editar Categoria
Delimiter //
	Create procedure sp_EditarCategoria(
    in _codigoCategoria int,
    in _nombreCategoria varchar(100), 
    in _descripcionCategoria varchar(200), 
    in _genero enum('Hombre','Mujer','Unisex'), 
    in _rangoEdad enum('Infantil','Juvenil','Adultos'))
		Begin
			Update Categorias
				set nombreCategoria = _nombreCategoria,
                    descripcionCategoria = _descripcionCategoria,
                    genero = _genero,
                    rangoEdad = _rangoEdad
					where codigoCategoria = _codigoCategoria;
        End //
Delimiter ;
call sp_EditarCategoria(16, 'Trajes Ejecutivos', 'Ropa formal para oficina y eventos', 'Hombre', 'Adultos');
call sp_EditarCategoria(17, 'Vestidos de Verano', 'Vestidos frescos para clima cálido', 'Mujer', 'Adultos');
call sp_EditarCategoria(18, 'Sudaderas Estampadas', 'Prendas juveniles con diseño gráfico', 'Unisex', 'Juvenil');
call sp_EditarCategoria(19, 'Ropa Escolar Moderna', 'Conjuntos escolares actualizados', 'Unisex', 'Infantil');
call sp_EditarCategoria(20, 'Camisas Polo Juveniles', 'Polo juveniles para el día a día', 'Hombre', 'Juvenil');

-- --------------------------- Entidad Metodo Pago --------------------------- 
-- Agregar MetodoPago
Delimiter //
	Create procedure sp_AgregarMetodoPago(
    in tipoMetodoPago enum('Tarjeta','Efectivo'), 
    in entidadFinanciaera varchar(200), 
    in moneda varchar(150))
		Begin
			Insert into MetodoPagos(tipoMetodoPago, entidadFinanciaera, moneda)
				Values(tipoMetodoPago, entidadFinanciaera, moneda);
        End //
Delimiter ;
call sp_AgregarMetodoPago('Tarjeta', 'Banco Industrial', 'Quetzal');
call sp_AgregarMetodoPago('Efectivo', 'Ninguna', 'Quetzal');
call sp_AgregarMetodoPago('Tarjeta', 'Banrural', 'Quetzal');
call sp_AgregarMetodoPago('Tarjeta', 'BAC Credomatic', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Banco G&T Continental', 'Quetzal');
call sp_AgregarMetodoPago('Efectivo', 'Ninguna', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Visa', 'Quetzal');
call sp_AgregarMetodoPago('Tarjeta', 'Mastercard', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Banco Promérica', 'Euro');
call sp_AgregarMetodoPago('Tarjeta', 'Davivienda', 'Quetzal');
call sp_AgregarMetodoPago('Efectivo', 'Ninguna', 'Euro');
call sp_AgregarMetodoPago('Tarjeta', 'InterBanco', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'American Express', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Banco Azteca', 'Quetzal');
call sp_AgregarMetodoPago('Efectivo', 'Ninguna', 'Quetzal');
call sp_AgregarMetodoPago('Tarjeta', 'Paypal', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Zelle', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Western Union', 'Dollar');
call sp_AgregarMetodoPago('Efectivo', 'Ninguna', 'Dollar');
call sp_AgregarMetodoPago('Tarjeta', 'Stripe', 'Dollar');

-- Listar MetodoPago
Delimiter //
	Create procedure sp_ListarMetodoPago()
		Begin
			Select codigoMetodoPago, tipoMetodoPago, entidadFinanciaera, moneda from MetodoPagos;
        End //
Delimiter ;
call sp_ListarMetodoPago();

-- Eliminar MetodoPago
Delimiter //
	Create procedure sp_EliminarMetodoPago(
    in _codigoMetodoPago int)
		Begin
			set foreign_key_checks = 0;
				Delete from MetodoPagos
					where codigoMetodoPago= _codigoMetodoPago;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarMetodoPago(15);

-- Buscar MetodoPago
Delimiter //
	Create procedure sp_BuscarMetodoPago(
    in _codigoMetodoPago int)
		Begin
			Select codigoMetodoPago, tipoMetodoPago, entidadFinanciaera, moneda from MetodoPagos
				where codigoMetodoPago= _codigoMetodoPago;
        End //
Delimiter ;
call sp_BuscarMetodoPago(1);

-- Editar MetodoPago
Delimiter //
	Create procedure sp_EditarMetodoPago(
    in _codigoMetodoPago int,
	in _tipoMetodoPago enum('Tarjeta','Efectivo'), 
    in _entidadFinanciaera varchar(200), 
    in _moneda varchar(150))
		Begin
			Update MetodoPagos
				set tipoMetodoPago = _tipoMetodoPago,
					entidadFinanciaera = _entidadFinanciaera,
                    moneda = _moneda
					where codigoMetodoPago= _codigoMetodoPago;
        End //
Delimiter ;
call sp_EditarMetodoPago(16, 'Tarjeta', 'TransferWise', 'Dollar');
call sp_EditarMetodoPago(17, 'Tarjeta', 'Zelle Corp', 'Dollar');
call sp_EditarMetodoPago(18, 'Tarjeta', 'WU Servicios', 'Dollar');
call sp_EditarMetodoPago(19, 'Efectivo', 'Caja Local', 'Quetzal');
call sp_EditarMetodoPago(20, 'Tarjeta', 'Stripe Global', 'Dollar');

-- --------------------------- Entidad Usuarios --------------------------- 
-- Agregar Usuario
Delimiter //
	Create procedure sp_AgregarUsuario(
    in nombreUsuario varchar(100),
    in apellidoUsuario varchar(100), 
    in correoUsuario varchar(150), 
    in telefonoUsuario varchar(20), 
    in direccionUsuario varchar(200),
    in contraseñaUsuario varchar(100),
    in tipoUsuario enum('Empleado', 'Cliente'))
		Begin
			Insert into Usuarios(nombreUsuario, apellidoUsuario, correoUsuario, telefonoUsuario, direccionUsuario, tipoUsuario, contraseñaUsuario)
				Values(nombreUsuario, apellidoUsuario, correoUsuario, telefonoUsuario, direccionUsuario, tipoUsuario, contraseñaUsuario);
        End //
Delimiter ;
call sp_AgregarUsuario('Carlos', 'Ramírez', 'carlos.ramirez@gmail.com', '+502 5123-4567', 'Zona 1, Ciudad de Guatemala', 'CRamirez#2025', 'Cliente');
call sp_AgregarUsuario('Ana', 'Gómez', 'ana.gomez@gmail.com', '+502 4785-1234', 'Zona 10, Guatemala', 'AGomez*88', 'Cliente');
call sp_AgregarUsuario('Luis', 'Martínez', 'luis.martinez@gmail.com', '+502 2234-5678', 'Zona 7, Mixco', 'LMartinez@11', 'Cliente');
call sp_AgregarUsuario('María', 'Fernández', 'maria.fernandez@gmail.com', '+502 5566-7788', 'San Cristóbal, Mixco', 'MFernandez#01', 'Cliente');
call sp_AgregarUsuario('Jorge', 'Lopez', 'jorge.lopez@gmail.com', '+502 4356-7890', 'Villa Nueva, zona 4', 'JLopez@45', 'Cliente');
call sp_AgregarUsuario('Andrea', 'Soto', 'andrea.soto@gmail.com', '+502 3278-9012', 'Zona 15, Vista Hermosa', 'ASoto*92', 'Cliente');
call sp_AgregarUsuario('Fernando', 'Ortega', 'fernando.ortega@gmail.com', '+502 4123-6543', 'Zona 5, Guatemala', 'FOrtega#73', 'Cliente');
call sp_AgregarUsuario('Lucía', 'Pérez', 'lucia.perez@gmail.com', '+502 5456-7789', 'Amatitlán, Guatemala', 'LPerez!64', 'Cliente');
call sp_AgregarUsuario('Diego', 'Alvarado', 'diego.alvarado@gmail.com', '+502 6345-1230', 'Zona 16, Cayalá', 'DAlvarado@20', 'Cliente');
call sp_AgregarUsuario('Camila', 'Hernández', 'camila.hernandez@gmail.com', '+502 7543-2109', 'Zona 12, La Reformita', 'CHernandez#55', 'Cliente');
call sp_AgregarUsuario('Esteban', 'Chávez', 'esteban.chavez@gmail.com', '+502 6123-9876', 'Villa Canales, Guatemala', 'EChavez!10', 'Cliente');
call sp_AgregarUsuario('Gabriela', 'Ramos', 'gabriela.ramos@gmail.com', '+502 4231-1020', 'San Miguel Petapa', 'GRamos*77', 'Cliente');
call sp_AgregarUsuario('Pablo', 'Cruz', 'pablo.cruz@gmail.com', '+502 3345-7654', 'Zona 3, Guatemala', 'PCruz@34', 'Cliente');
call sp_AgregarUsuario('Daniela', 'Mejía', 'daniela.mejia@gmail.com', '+502 4567-8901', 'Zona 11, Mariscal', 'DMejia#89', 'Cliente');
call sp_AgregarUsuario('Mario', 'Escobar', 'mario.escobar@gmail.com', '+502 5432-1209', 'Santa Catarina Pinula', 'MEscobar!05', 'Cliente');
call sp_AgregarUsuario('Rebeca', 'Salazar', 'rebeca.salazar@gmail.com', '+502 6677-8902', 'Zona 6, Guatemala', 'RSalazar*44', 'Cliente');
call sp_AgregarUsuario('Óscar', 'Córdova', 'oscar.cordova@gmail.com', '+502 7098-3456', 'Zona 18, El Paraíso', 'OCordova#12', 'Cliente');
call sp_AgregarUsuario('Isabel', 'Ruiz', 'isabel.ruiz@gmail.com', '+502 3210-7654', 'Mixco, zona 8', 'IRuiz@78', 'Cliente');
call sp_AgregarUsuario('1', '1', '1.1@gmail.com', '+502 4890-3211', 'Zona 2, Jocotenango', '1', 'Empleado');
call sp_AgregarUsuario('Josué', 'Jiménez', 'joshua.ja2007@gmail.com', '+502 0505-1055', 'Zona 10, Guatemala', '1818', 'Empleado');

-- Listar Usuarios
Delimiter //
	Create procedure sp_ListarUsuarios()
		Begin
			Select codigoUsuario, nombreUsuario, apellidoUsuario, correoUsuario, telefonoUsuario, direccionUsuario, contraseñaUsuario, tipoUsuario, fechaRegistro from Usuarios;
        End //
Delimiter ;
call sp_ListarUsuarios();

-- Eliminar Usuarios
Delimiter //
	Create procedure sp_EliminarUsuario(
    in _codigoUsuario int)
		Begin
			set foreign_key_checks = 0;
				Delete from Usuarios
					where codigoUsuario = _codigoUsuario;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarUsuario(15);


-- Buscar Usuarios
Delimiter //
	Create procedure sp_BuscarUsuarios(
    in _codigoUsuario int)
		Begin
			Select codigoUsuario, nombreUsuario, apellidoUsuario, correoUsuario, telefonoUsuario, direccionUsuario, contraseñaUsuario, tipoUsuario, fechaRegistro from Usuarios
				where codigoUsuario = _codigoUsuario;
        End //
Delimiter ;
call sp_BuscarUsuarios(1);

-- Editar Usuario
Delimiter //
	Create procedure sp_EditarUsuario(
    in _codigoUsuario int,
    in _nombreUsuario varchar(100),
    in _apellidoUsuario varchar(100), 
    in _correoUsuario varchar(150), 
    in _telefonoUsuario varchar(20), 
    in _direccionUsuario varchar(200),
    in _contraseñaUsuario varchar(100),
    in _tipoUsuario enum('Empleado', 'Cliente'),
    in _fechaRegistro date) 
		Begin
			Update Usuarios
				set nombreUsuario = _nombreUsuario,
				apellidoUsuario = _apellidoUsuario,
				correoUsuario = _correoUsuario,
				telefonoUsuario = _telefonoUsuario,
                direccionUsuario = _direccionUsuario,
                contraseñaUsuario = _contraseñaUsuario,
                tipoUsuario = _tipoUsuario,
                fechaRegistro = _fechaRegistro
					where codigoUsuario = _codigoUsuario;
        End //
Delimiter ;
call sp_EditarUsuario(16, 'Rebeca', 'Hernández', 'rebeca.hernandez@gmail.com', '+502 7689-1234', 'Zona 6, El Gallito', 'RHernandez@16', 'Cliente', '2025-08-12');
call sp_EditarUsuario(17, 'Óscar', 'Ramírez', 'oscar.ramirez@gmail.com', '+502 8090-3456', 'Zona 18, Las Ilusiones', 'ORamirez#17', 'Cliente', '2025-08-12');
call sp_EditarUsuario(18, 'Isabel', 'López', 'isabel.lopez@gmail.com', '+502 3902-8765', 'Mixco, zona 1', 'ClaveSegura#2025', 'Cliente', '2025-08-12');
call sp_EditarUsuario(13, 'Ricardo', 'Estrada', 'ricardo.estrada@gmail.com', '+502 4791-2345', 'Zona 2, El Sauce', 'REstrada!19', 'Cliente', '2025-08-12');
call sp_EditarUsuario(14, 'Valeria', 'Guzmán', 'valeria.guzman@gmail.com', '+502 6012-9876', 'Zona 19, Santa Faz', 'VGuzman@20', 'Cliente', '2025-08-12');
/*
-- --------------------------- Entidad Empleado --------------------------- 
-- Agregar Empleados
Delimiter //
	Create procedure sp_AgregarEmpleado(
    in nombreEmpleado varchar(100),
    in apellidoEmpleado varchar(100), 
    in correoEmpleado varchar(150), 
    in telefonoEmpleado varchar(20), 
    in direccionEmpleado varchar(200),
    in nombreUsuario varchar(100),
    in contraseñaUsuario varchar(100))
		Begin
			Insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, direccionEmpleado, nombreUsuario, contraseñaUsuario)
				Values(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, direccionEmpleado, nombreUsuario, contraseñaUsuario);
        End //
Delimiter ;
call sp_AgregarEmpleado('Juan', 'Ramírez', 'juan.ramirez@empresa.com', '+502 5123-1123', 'Zona 1, Ciudad de Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Karla', 'López', 'karla.lopez@empresa.com', '+502 4789-2210', 'Zona 9, Ciudad de Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Roberto', 'Pérez', 'roberto.perez@empresa.com', '+502 5567-3344', 'Zona 4, Mixco', 'Carlos', '12345678');
call sp_AgregarEmpleado('Sofía', 'Gómez', 'sofia.gomez@empresa.com', '+502 4123-5588', 'Zona 10, Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Luis', 'Castro', 'luis.castro@empresa.com', '+502 6345-1234', 'Zona 2, San Cristóbal', 'Carlos', '12345678');
call sp_AgregarEmpleado('Ana', 'Cabrera', 'ana.cabrera@empresa.com', '+502 7098-4321', 'Zona 6, Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Mario', 'Sánchez', 'mario.sanchez@empresa.com', '+502 3289-7789', 'Zona 5, Mixco', 'Carlos', '12345678');
call sp_AgregarEmpleado('Elena', 'Martínez', 'elena.martinez@empresa.com', '+502 5454-6677', 'Zona 14, Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Carlos', 'Velásquez', 'carlos.velasquez@empresa.com', '+502 6789-1122', 'Villa Nueva, zona 3', 'Carlos', '12345678');
call sp_AgregarEmpleado('María', 'Hernández', 'maria.hernandez@empresa.com', '+502 4321-2345', 'Zona 3, Ciudad de Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Diego', 'Ortega', 'diego.ortega@empresa.com', '+502 7654-1203', 'San Miguel Petapa', 'Carlos', '12345678');
call sp_AgregarEmpleado('Lucía', 'Morales', 'lucia.morales@empresa.com', '+502 8521-9987', 'Zona 7, Mixco', 'Carlos', '12345678');
call sp_AgregarEmpleado('Pablo', 'Reyes', 'pablo.reyes@empresa.com', '+502 9087-2310', 'Zona 16, Cayalá', 'Carlos', '12345678');
call sp_AgregarEmpleado('Andrea', 'García', 'andrea.garcia@empresa.com', '+502 3456-7812', 'Zona 12, La Reformita', 'Carlos', '12345678');
call sp_AgregarEmpleado('Fernando', 'Chávez', 'fernando.chavez@empresa.com', '+502 1111-9999', 'Villa Canales', 'Carlos', '12345678');
call sp_AgregarEmpleado('Isabel', 'Rosales', 'isabel.rosales@empresa.com', '+502 7890-4567', 'Zona 8, Guatemala', 'Carlos', '12345678');
call sp_AgregarEmpleado('Gabriel', 'Torres', 'gabriel.torres@empresa.com', '+502 6234-8765', 'Zona 11, Mariscal', 'Carlos', '12345678');
call sp_AgregarEmpleado('Valeria', 'Navarro', 'valeria.navarro@empresa.com', '+502 9123-4456', 'Amatitlán', 'Carlos', '12345678');
call sp_AgregarEmpleado('Óscar', 'Luna', 'oscar.luna@empresa.com', '+502 8888-1212', 'Jocotenango, zona 2', 'Carlos', '12345678');
call sp_AgregarEmpleado('Rebeca', 'Juárez', 'rebeca.juarez@empresa.com', '+502 7766-3344', 'Santa Catarina Pinula', '1', '1');

-- Listar Empleados
Delimiter //
	Create procedure sp_ListarEmpleados()
		Begin
			Select codigoEmpleado, nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, direccionEmpleado, nombreUsuario, contraseñaUsuario from Empleados;
        End //
Delimiter ;
call sp_ListarEmpleados();

-- Eliminar Cliente
Delimiter //
	Create procedure sp_EliminarEmpleado(
    in _codigoEmpleado int)
		Begin
			set foreign_key_checks = 0;
				Delete from Empleados
					where codigoEmpleado = _codigoEmpleado;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarEmpleado(15);


-- Buscar Empleado
Delimiter //
	Create procedure sp_BuscarEmpleado(
    in _codigoEmpleado int)
		Begin
			Select codigoEmpleado, nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, direccionEmpleado, nombreUsuario, contraseñaUsuario from Empleados
				where codigoEmpleado = _codigoEmpleado;
        End //
Delimiter ;
call sp_BuscarEmpleado(1);

-- Editar Empleado
Delimiter //
	Create procedure sp_EditarEmpleado(
    in _codigoEmpleado int,
    in _nombreEmpleado varchar(100),
    in _apellidoEmpleado varchar(100), 
    in _correoEmpleado varchar(150), 
    in _telefonoEmpleado varchar(20), 
    in _direccionEmpleado varchar(200),
    in _nombreUsuario varchar(100),
    in _contraseñaUsuario varchar(100))
		Begin
			Update Empleados
				set nombreEmpleado = _nombreEmpleado,
				apellidoEmpleado = _apellidoEmpleado,
				correoEmpleado = _correoEmpleado,
				telefonoEmpleado = _telefonoEmpleado,
                direccionEmpleado = _direccionEmpleado,
                nombreUsuario = _nombreUsuario,
                contraseñaUsuario = _contraseñaUsuario
					where codigoEmpleado = _codigoEmpleado;
        End //
Delimiter ;
call sp_EditarEmpleado(16, 'Isabel', 'Rosales', 'isabel.rosales@empresa.com', '+502 7890-4567', 'Zona 8, Guatemala', 'Carlos', '12345678');
call sp_EditarEmpleado(17, 'Gabriel', 'Torres', 'gabriel.torres@empresa.com', '+502 6234-8765', 'Zona 11, Mariscal', 'Carlos', '12345678');
call sp_EditarEmpleado(18, 'Valeria', 'Navarro', 'valeria.navarro@empresa.com', '+502 9123-4456', 'Amatitlán', 'Carlos', '12345678');
call sp_EditarEmpleado(19, 'Óscar', 'Luna', 'oscar.luna@empresa.com', '+502 8888-1212', 'Jocotenango, zona 2', 'Carlos', '12345678');
call sp_EditarEmpleado(20, 'Rebeca', 'Juárez', 'rebeca.juarez@empresa.com', '+502 7766-3344', 'Santa Catarina Pinula', 'Carlos', '12345678');
*/
-- --------------------------- Entidad Producto --------------------------- 
-- Agregar Producto
Delimiter //
	Create procedure sp_AgregarProducto(
    in nombreProducto varchar(100), 
    in descripcionProducto varchar(100), 
    in precioProducto varchar(200),
    in talla varchar(50),
    in stock int, 
    in codigoProveedor int, 
    in codigoCategoria int)
		Begin
			Insert into Productos(nombreProducto, descripcionProducto, precioProducto, talla, stock, codigoProveedor, codigoCategoria)
				Values(nombreProducto, descripcionProducto, precioProducto, talla, stock, codigoProveedor, codigoCategoria);
        End //
Delimiter ;
call sp_AgregarProducto('Camisa Casual Azul', 'Camisa de algodón manga larga', 129.99, 'M', 50, 1, 1);
call sp_AgregarProducto('Blusa Estampada', 'Blusa fresca para verano', 89.50, 'S', 30, 2, 2);
call sp_AgregarProducto('Pantalón Jeans', 'Pantalón de mezclilla juvenil', 199.00, '32', 40, 3, 3);
call sp_AgregarProducto('Vestido Largo', 'Vestido elegante de fiesta', 279.99, 'L', 20, 4, 2);
call sp_AgregarProducto('Short Deportivo', 'Short unisex para deporte', 69.99, 'M', 60, 5, 3);
call sp_AgregarProducto('Sudadera Capucha', 'Sudadera gruesa para frío', 159.75, 'XL', 35, 1, 4);
call sp_AgregarProducto('Falda Negra', 'Falda básica para oficina', 99.25, 'S', 25, 2, 2);
call sp_AgregarProducto('Camisa Polo', 'Polo casual color blanco', 139.00, 'L', 55, 3, 1);
call sp_AgregarProducto('Leggins Deportivos', 'Leggins ajustados y cómodos', 119.95, 'XS', 38, 4, 3);
call sp_AgregarProducto('Conjunto Infantil', 'Ropa para niño con estampado', 89.99, '28', 45, 5, 5);
call sp_AgregarProducto('Camiseta Básica', 'Camiseta algodón unisex', 59.00, 'M', 100, 1, 3);
call sp_AgregarProducto('Pantalón Cargo', 'Pantalón con múltiples bolsillos', 149.50, '34', 22, 2, 1);
call sp_AgregarProducto('Chaqueta Mezclilla', 'Chaqueta juvenil estilo moderno', 199.90, 'L', 18, 3, 3);
call sp_AgregarProducto('Vestido de Verano', 'Vestido fresco estampado', 109.00, 'S', 27, 4, 2);
call sp_AgregarProducto('Pijama Infantil', 'Pijama para niño en algodón', 79.99, '30', 50, 5, 5);
call sp_AgregarProducto('Suéter Largo', 'Suéter largo de punto', 129.99, 'XL', 19, 1, 4);
call sp_AgregarProducto('Falda Jean', 'Falda de mezclilla juvenil', 89.95, 'S', 26, 2, 2);
call sp_AgregarProducto('Camisa Formal', 'Camisa de vestir blanca', 149.99, 'M', 33, 3, 1);
call sp_AgregarProducto('Short Estampado', 'Short veraniego con diseño', 69.99, 'XS', 42, 4, 3);
call sp_AgregarProducto('Traje Infantil', 'Traje elegante para niño', 250.90, 'XS', 18, 3, 3);

-- Listar Producto
Delimiter //
	Create procedure sp_ListarProducto()
		Begin
			Select codigoProducto, nombreProducto, descripcionProducto, precioProducto, talla, stock, codigoProveedor, codigoCategoria from Productos;
        End //
Delimiter ;
call sp_ListarProducto();

-- Eliminar Producto
Delimiter //
	Create procedure sp_EliminarProducto(
    in _codigoProducto int)
		Begin
			set foreign_key_checks = 0;
				Delete from Productos
					where codigoProducto = _codigoProducto;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarProducto(15);

-- Buscar Usuario
Delimiter //
	Create procedure sp_BuscarProducto(
    in _codigoProducto int)
		Begin
			Select codigoProducto, nombreProducto, descripcionProducto, precioProducto, talla, stock, codigoProveedor, codigoCategoria from Productos
				where codigoProducto = _codigoProducto;
        End //
Delimiter ;
call sp_BuscarProducto(1);

-- Editar Producto
Delimiter //
	Create procedure sp_EditarProducto(
    in _codigoProducto int,
    in _nombreProducto varchar(100), 
    in _descripcionProducto varchar(100), 
    in _precioProducto varchar(200), 
    in _talla varchar(50),
    in _stock int, 
    in _codigoProveedor int, 
    in _codigoCategoria int)
		Begin
			Update Productos
				set nombreProducto = _nombreProducto,
					descripcionProducto = _descripcionProducto,
                    precioProducto = _precioProducto,
                    talla = _talla,
                    stock = _stock,
                    codigoProveedor = _codigoProveedor,
                    codigoCategoria = _codigoCategoria
					where codigoProducto = _codigoProducto;
        End //
Delimiter ;
call sp_EditarProducto(16, 'Suéter Corto', 'Suéter juvenil con cuello en V', '139.00', 'XS', 25, 1, 4);
call sp_EditarProducto(17, 'Falda Floral', 'Falda con diseño floral', '94.95', 'M', 22, 2, 2);
call sp_EditarProducto(18, 'Camisa Cuadros', 'Camisa casual a cuadros', '159.00', 'S', 30, 3, 1);
call sp_EditarProducto(19, 'Short Deportivo Niña', 'Short para niña con estampado', '74.99', 'L', 36, 4, 3);

-- --------------------------- Entidad Pedido --------------------------- 
-- Agregar Pedido
Delimiter //
	Create procedure sp_AgregarPedido(
    in horaPedido time, 
    in fechaPedido date, 
    in estadoPedido enum('Pendiente','Enviado','Entregado'), 
    in total double(5,2), 
    in codigoUsuario int, 
    in codigoMetodoPago int)
		Begin
			Insert into Pedidos(horaPedido, fechaPedido, estadoPedido, total, codigoUsuario, codigoMetodoPago)
				Values(horaPedido, fechaPedido, estadoPedido, total, codigoUsuario, codigoMetodoPago);
        End //
Delimiter ;
call sp_AgregarPedido('10:30:00', '2025-06-01', 'Pendiente', 599.99, 1, 1);
call sp_AgregarPedido('11:00:00', '2025-06-02', 'Enviado', 320.50, 2, 2);
call sp_AgregarPedido('14:15:00', '2025-06-03', 'Entregado', 109.00, 3, 3);
call sp_AgregarPedido('09:45:00', '2025-06-04', 'Pendiente', 799.75, 4, 4);
call sp_AgregarPedido('16:00:00', '2025-06-05', 'Pendiente', 239.90, 5, 5);
call sp_AgregarPedido('12:30:00', '2025-06-06', 'Enviado', 420.00, 1, 2);
call sp_AgregarPedido('13:50:00', '2025-06-07', 'Entregado', 990.00, 2, 1);
call sp_AgregarPedido('10:00:00', '2025-06-08', 'Pendiente', 560.25, 3, 3);
call sp_AgregarPedido('15:30:00', '2025-06-09', 'Enviado', 310.40, 4, 4);
call sp_AgregarPedido('08:20:00', '2025-06-10', 'Entregado', 150.00, 5, 5);
call sp_AgregarPedido('14:10:00', '2025-06-11', 'Pendiente', 725.10, 1, 2);
call sp_AgregarPedido('17:00:00', '2025-06-12', 'Enviado', 612.00, 2, 3);
call sp_AgregarPedido('11:45:00', '2025-06-13', 'Entregado', 832.50, 3, 1);
call sp_AgregarPedido('09:00:00', '2025-06-14', 'Pendiente', 195.95, 4, 2);
call sp_AgregarPedido('13:20:00', '2025-06-15', 'Pendiente', 485.35, 5, 3);
call sp_AgregarPedido('16:10:00', '2025-06-16', 'Enviado', 721.00, 1, 4);
call sp_AgregarPedido('10:50:00', '2025-06-17', 'Entregado', 399.99, 2, 5);
call sp_AgregarPedido('12:10:00', '2025-06-18', 'Pendiente', 690.30, 3, 2);
call sp_AgregarPedido('14:55:00', '2025-06-19', 'Enviado', 845.00, 4, 3);
call sp_AgregarPedido('08:40:00', '2025-06-20', 'Entregado', 270.60, 5, 1);

-- Listar Pedido
Delimiter //
	Create procedure sp_ListarPedido()
		Begin
			Select codigoPedido, horaPedido, fechaPedido, estadoPedido, total, codigoUsuario, codigoMetodoPago from Pedidos;
        End //
Delimiter ;
call sp_ListarPedido();

-- Eliminar Pedido
Delimiter //
	Create procedure sp_EliminarPedido(
    in _codigoPedido int)
		Begin
			set foreign_key_checks = 0;
				Delete from Pedidos
					where codigoPedido = _codigoPedido;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarPedido(15);

-- Buscar Pedido
Delimiter //
	Create procedure sp_BuscarPedido(
    in _codigoPedido int)
		Begin
			Select codigoPedido, horaPedido, fechaPedido, estadoPedido, total, codigoUsuario, codigoMetodoPago from Pedidos
				where codigoPedido = _codigoPedido;
        End //
Delimiter ;
call sp_BuscarPedido(1);

-- Editar Pedido
Delimiter //
	Create procedure sp_EditarPedido(
    in _codigoPedido int,
    in _horaPedido time, 
    in _fechaPedido date, 
    in _estadoPedido enum('Pendiente','Enviado','Entregado'), 
    in _total double(5,2), 
    in _codigoUsuario int, 
    in _codigoMetodoPago int)
		Begin
			Update Pedidos
				set horaPedido = _horaPedido,
					fechaPedido = _fechaPedido,
                    estadoPedido = _estadoPedido,
                    total = _total,
                    codigoUsuario = _codigoUsuario,
                    codigoMetodoPago = _codigoMetodoPago
					where codigoPedido = _codigoPedido;
        End //
Delimiter ;
call sp_EditarPedido(16, '15:00:00', '2025-06-16', 'Entregado', 750.00, 1, 5);
call sp_EditarPedido(17, '11:30:00', '2025-06-17', 'Pendiente', 430.20, 2, 1);
call sp_EditarPedido(18, '13:45:00', '2025-06-18', 'Enviado', 980.10, 3, 4);
call sp_EditarPedido(19, '09:30:00', '2025-06-19', 'Entregado', 299.90, 4, 2);
call sp_EditarPedido(20, '10:25:00', '2025-06-20', 'Pendiente', 645.55, 5, 3);

-- --------------------------- Entidad DetallePedido --------------------------- 
-- Agregar DetallePedido
Delimiter //
	Create procedure sp_AgregarDetallePedido(
    in cantidad int, 
    in subtotal double(5,2), 
    in descripcion varchar(200), 
    in codigoPedido int, 
    in codigoProducto int)
		Begin
			Insert into DetallePedidos(cantidad, subtotal, descripcion, codigoPedido, codigoProducto)
				Values(cantidad, subtotal, descripcion, codigoPedido, codigoProducto);
        End //
Delimiter ;
call sp_AgregarDetallePedido(2, 259.98, 'Camisa casual azul', 1, 1);
call sp_AgregarDetallePedido(1, 89.50, 'Blusa estampada', 2, 2);
call sp_AgregarDetallePedido(3, 597.00, 'Pantalón jeans', 3, 3);
call sp_AgregarDetallePedido(1, 279.99, 'Vestido largo', 4, 4);
call sp_AgregarDetallePedido(2, 139.98, 'Short deportivo', 5, 5);
call sp_AgregarDetallePedido(1, 159.75, 'Sudadera capucha', 6, 6);
call sp_AgregarDetallePedido(2, 198.50, 'Falda negra', 7, 7);
call sp_AgregarDetallePedido(1, 139.00, 'Camisa polo', 8, 8);
call sp_AgregarDetallePedido(3, 359.85, 'Leggins deportivos', 9, 9);
call sp_AgregarDetallePedido(2, 179.98, 'Conjunto infantil', 10, 10);
call sp_AgregarDetallePedido(4, 236.00, 'Camiseta básica', 11, 11);
call sp_AgregarDetallePedido(1, 149.50, 'Pantalón cargo', 12, 12);
call sp_AgregarDetallePedido(1, 199.90, 'Chaqueta mezclilla', 13, 13);
call sp_AgregarDetallePedido(2, 218.00, 'Vestido de verano', 14, 14);
call sp_AgregarDetallePedido(1, 79.99, 'Pijama infantil', 1, 1);
call sp_AgregarDetallePedido(2, 259.98, 'Suéter largo', 16, 16);
call sp_AgregarDetallePedido(2, 179.90, 'Falda jean', 17, 17);
call sp_AgregarDetallePedido(1, 149.99, 'Camisa formal', 18, 18);
call sp_AgregarDetallePedido(2, 139.98, 'Short estampado', 19, 19);
call sp_AgregarDetallePedido(1, 189.99, 'Traje infantil', 20, 20);

-- Listar DetallePedido
Delimiter //
	Create procedure sp_ListarDetallePedido()
		Begin
			Select codigoDetalleP, cantidad, subtotal, descripcion, codigoPedido, codigoProducto from DetallePedidos;
        End //
Delimiter ;
call sp_ListarDetallePedido();

-- Eliminar DetallePedido
Delimiter //
	Create procedure sp_EliminarDetallePedido(
    in _codigoDetallePedido int)
		Begin
			set foreign_key_checks = 0;
				Delete from DetallePedidos
					where codigoDetalleP = _codigoDetallePedido;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarDetallePedido(15);

-- Buscar DetallePedido
Delimiter //
	Create procedure sp_BuscarDetallePedido(
    in _codigoDetallePedido int)
		Begin
			Select codigoDetalleP, cantidad, subtotal, descripcion, codigoPedido, codigoProducto from DetallePedidos
				where codigoDetalleP = _codigoDetallePedido;
        End //
Delimiter ;
call sp_BuscarDetallePedido(1);

-- Editar DetallePedido
Delimiter //
	Create procedure sp_EditarDetallePedido(
    in _codigoDetalleP int,
    in _cantidad int, 
    in _subtotal double(5,2), 
    in _descripcion varchar(200), 
    in _codigoPedido int, 
    in _codigoProducto int)
		Begin
			Update DetallePedidos
				set cantidad = _cantidad,
					subtotal = _subtotal,
                    descripcion = _descripcion,
                    codigoPedido = _codigoPedido,
                    codigoProducto = _codigoProducto
					where codigoDetalleP = _codigoDetalleP;
        End //
Delimiter ;
call sp_EditarDetallePedido(16, 3, 389.97, 'Suéter cuello V juvenil', 16, 16);
call sp_EditarDetallePedido(17, 1, 89.95, 'Falda con flores', 17, 17);
call sp_EditarDetallePedido(18, 2, 318.00, 'Camisa a cuadros', 18, 18);
call sp_EditarDetallePedido(19, 1, 74.99, 'Short niña con diseño', 19, 19);
call sp_EditarDetallePedido(20, 1, 199.99, 'Traje niño formal', 20, 20);

-- --------------------------- Entidad Factura --------------------------- 
-- Agregar Factura
Delimiter //
	Create procedure sp_AgregarFactura(
    in estadoFactura enum('Emitida','Anulada','Pagada'), 
    in formaEntrega enum('Fisica','Electronica'), 
    in codigoPedido int,
    in codigoUsuario int)
		Begin
			Insert into Facturas(estadoFactura, formaEntrega, codigoPedido, codigoUsuario)
				Values(estadoFactura, formaEntrega, codigoPedido, codigoUsuario);
        End //
Delimiter ;
call sp_AgregarFactura('Emitida', 'Electronica', 1, 1);
call sp_AgregarFactura('Emitida', 'Fisica', 2, 2);
call sp_AgregarFactura('Emitida', 'Electronica', 3, 3);
call sp_AgregarFactura('Emitida', 'Fisica', 4, 4);
call sp_AgregarFactura('Emitida', 'Electronica', 5, 5);
call sp_AgregarFactura('Emitida', 'Fisica', 6, 6);
call sp_AgregarFactura('Pagada', 'Electronica', 7, 7);
call sp_AgregarFactura('Pagada', 'Fisica', 8, 8);
call sp_AgregarFactura('Emitida', 'Electronica', 9, 9);
call sp_AgregarFactura('Pagada', 'Fisica', 10, 10);
call sp_AgregarFactura('Emitida', 'Electronica', 11, 11);
call sp_AgregarFactura('Emitida', 'Electronica', 12, 12);
call sp_AgregarFactura('Pagada', 'Fisica', 13, 13);
call sp_AgregarFactura('Emitida', 'Electronica', 14, 14);
call sp_AgregarFactura('Emitida', 'Electronica', 16, 16);
call sp_AgregarFactura('Emitida', 'Electronica', 17, 17);
call sp_AgregarFactura('Emitida', 'Fisica', 18, 18);
call sp_AgregarFactura('Pagada', 'Electronica', 19, 19);
call sp_AgregarFactura('Emitida', 'Fisica', 20, 20);

-- Listar Factura
Delimiter //
	Create procedure sp_ListarFactura()
		Begin
			Select codigoFactura, fechaEmision, descuentoAplicado, totalFactura, estadoFactura, formaEntrega, codigoPedido, codigoUsuario from Facturas;
        End //
Delimiter ;
call sp_ListarFactura();

-- Eliminar Factura
Delimiter //
	Create procedure sp_EliminarFactura(
    in _codigoFactura int)
		Begin
			set foreign_key_checks = 0;
				Delete from Facturas
					where codigoFactura = _codigoFactura;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
        End//
Delimiter ;
call sp_EliminarFactura(14);

-- Buscar Factura
Delimiter //
	Create procedure sp_BuscarFactura(
    in _codigoFactura int)
		Begin
			Select codigoFactura, fechaEmision, descuentoAplicado, totalFactura, estadoFactura, formaEntrega, codigoPedido, codigoUsuario from Facturas
				where codigoFactura = _codigoFactura;
        End //
Delimiter ;
call sp_BuscarFactura(1);

-- Editar Factura
Delimiter //
	Create procedure sp_EditarFactura(
    in _codigoFactura int,
    in _fechaEmision date, 
    in _descuentoAplicado double (5,2), 
    in _totalFactura double (10,2),
    in _estadoFactura enum('Emitida','Anulada','Pagada'), 
    in _formaEntrega enum('Fisica','Electronica'), 
    in _codigoPedido int,
    in _codigoUsuario int)
		Begin
			Update Facturas
				set fechaEmision = _fechaEmision,
					descuentoAplicado = _descuentoAplicado,
					totalFactura = _totalFactura,
					estadoFactura = _estadoFactura,
					formaEntrega = _formaEntrega,
					codigoPedido = _codigoPedido,
                    codigoUsuario = _codigoUsuario
						where codigoFactura = _codigoFactura;
        End //
Delimiter ;
call sp_EditarFactura(16, '2025-07-01', 10.00, 740.00, 'Pagada', 'Fisica', 16, 16);
call sp_EditarFactura(17, '2025-07-02', 5.00, 425.20, 'Emitida', 'Electronica', 17, 17);
call sp_EditarFactura(18, '2025-07-03', 15.00, 950.10, 'Emitida', 'Fisica', 18, 18);
call sp_EditarFactura(19, '2025-07-04', 0.00, 299.90, 'Anulada', 'Fisica', 19, 19);
call sp_EditarFactura(20, '2025-07-05', 20.00, 625.55, 'Emitida', 'Electronica', 20, 20);

-- Busqueda del Empleado por nombre y contraseña
Delimiter //
	Create procedure sp_BuscarUsuariosNC(
    in _correoUsuario varchar(100),
    in _contraseñaUsuario varchar(100))
		Begin
			Select * from Usuarios where correoUsuario = _correoUsuario and contraseñaUsuario = _contraseñaUsuario;
        End //
Delimiter ;
call sp_BuscarUsuariosNC('joshua.ja2007@gmail.com', '1818');

