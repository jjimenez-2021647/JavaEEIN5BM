package com.kinalitosclothes.view;

import com.kinalitosclothes.modelo.ProductosDAO;
import java.util.Scanner;

public class MenuProducto {

    public void MenuProductos() {
        Scanner leer = new Scanner(System.in);
        int op = -1;
        
        ProductosDAO pr = new ProductosDAO();
        int idProducto = 0;

        do {
            System.out.println("-------------------------------------------------");
            System.out.println("Bienvenido al Menu Productos de KinalitosClothes");
            System.out.println("Elije una de las siguientes opciones para acceder a sus menus");
            System.out.println("1. Agregar Producto");
            System.out.println("2. Listar Producto");
            System.out.println("3. Buscar Producto");
            System.out.println("4. Eliminar Producto");
            System.out.println("5. Editar Producto");
            System.out.println("0. Salir");
            System.out.println("-------------------------------------------------");

            try {
                op = leer.nextInt();

                switch (op) {
                    case 1:
                        pr.agregarProducto();
                        break;
                    case 2:
                        pr.listarProductos();
                        break;
                    case 3:
                        pr.buscarProducto(idProducto);
                        break;
                    case 4:
                        pr.eliminarProducto(idProducto);
                        break;
                    case 5:
                        pr.editarProducto();
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
                System.out.println("Entrada inválida. Por favor, ingresa un número.");
                leer.nextLine();
            }
        } while (op != 0);
    }
}

