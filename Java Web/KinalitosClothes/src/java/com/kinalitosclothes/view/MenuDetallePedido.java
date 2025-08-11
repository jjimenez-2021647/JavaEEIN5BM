package com.kinalitosclothes.view;

import java.util.Scanner;
import com.kinalitosclothes.modelo.DetallePedidosDAO;

public class MenuDetallePedido {

    public void menuDetallePedidos() {
        Scanner leer = new Scanner(System.in);
        int op = 1;
        DetallePedidosDAO dc = new DetallePedidosDAO();

        while (op != 0) {
            System.out.println("-----------------------------------");
            System.out.println("Bienvenido al menú de Detalle de Pedidos");
            System.out.println("Por favor elija una opción:");
            System.out.println("1. Agregar");
            System.out.println("2. Listar");
            System.out.println("3. Eliminar");
            System.out.println("4. Buscar");
            System.out.println("5. Editar");
            System.out.println("0. Salir");
            System.out.println("-----------------------------------");
            op = leer.nextInt();
            leer.nextLine(); // Limpiar el buffer

            switch (op) {
                case 1:
                    dc.agregarDetallePedidos();
                    break;
                case 2:
                    dc.listarDetallePedidos();
                    break;
                case 3:
                    dc.eliminarDetallePedidos();
                    break;
                case 4:
                    dc.buscarDetallePedidos();
                    break;
                case 5:
                    dc.editarDetallePedidos();
                    break;
                case 0:
                    dc.salir();
                    break;
                default:
                    System.out.println("Por favor seleccione una de las opciones válidas.");
            }
        }
    }
}
