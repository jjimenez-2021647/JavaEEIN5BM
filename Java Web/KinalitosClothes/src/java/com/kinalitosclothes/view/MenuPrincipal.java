package com.kinalitosclothes.view;

import com.kinalitosclothes.model.*;

import java.util.Scanner;

public class MenuPrincipal {

    public void mostrarMenu() {
        Scanner leer = new Scanner(System.in);
        int op = -1;

        do {
            System.out.println("-------------------------------------------------");
            System.out.println("Bienvenido al Menu Principal de KinalitosClothes");
            System.out.println("Elije una de las siguientes opciones para acceder \na sus menus");
            System.out.println("1. Proveedores");
            System.out.println("2. Categorias");
            System.out.println("3. Metodo Pagos");
            System.out.println("4. Usuarios");
            System.out.println("5. Clientes");
            System.out.println("6. Empleados");
            System.out.println("7. Productos");
            System.out.println("8. Pedidos");
            System.out.println("9. Detalle Pedidos");
            System.out.println("10. Facturas");
            System.out.println("0. Salir");
            System.out.println("-------------------------------------------------");

            try {
                op = leer.nextInt();
                leer.nextLine();

                switch (op) {
                    case 1:
                        MenuProveedor mepr = new MenuProveedor();
                        mepr.mostrarMenu();
                        break;
                    case 2:
                        MenuCategorias mc = new MenuCategorias();
                        mc.menuCategorias();
                        break;
                    case 3:
                        MenuMetodoPago metodopagos = new MenuMetodoPago();
                        metodopagos.menuMetodoPagos();
                        break;
                    case 4:
                        MenuUsuarios mu = new MenuUsuarios();
                        mu.menuUsuarios();
                        break;
                    case 5:
                        MenuClientes mcl = new MenuClientes();
                        mcl.menuClientes();
                        break;
                    case 6:
                        MenuEmpleado meem = new MenuEmpleado();
                        meem.mostrarMenu();
                        break;
                    case 7:
                        MenuProducto mpr = new MenuProducto();
                        mpr.MenuProductos();
                        break;
                    case 8:
                        MenuPedidos mpe = new MenuPedidos();
                        mpe.MenuPedidos();
                        break;
                    case 9:
                        DetallePedidosDAO dpc = new DetallePedidosDAO();
                        dpc.iniciar();
                        break;
                    case 10:
                        MenuFacturas mf = new MenuFacturas();
                        mf.MenuFacturas();
                        break;
                    case 0:
                        System.out.println("---------------------");
                        System.out.println("Saliendo...");
                        System.out.println("---------------------");
                        break;
                    default:
                        System.out.println("Por favor, selecciona una opción válida.");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (op != 0);
    }
}
