package com.kinalitosclothes.view;

import com.kinalitosclothes.modelo.PedidosDAO;
import java.util.Scanner;

public class MenuPedidos {

    public void MenuPedidos() {
        Scanner leer = new Scanner(System.in);
        int op = -1;
        
        PedidosDAO pe = new PedidosDAO();
        int idPedido = 0;

        do {
            System.out.println("-------------------------------------------------");
            System.out.println("Bienvenido al Menu Pedidos de KinalitosClothes");
            System.out.println("Elije una de las siguientes opciones para acceder \na sus menus");
            System.out.println("1. Agregar Pedido");
            System.out.println("2. Listar Pedidos");
            System.out.println("3. Buscar Pedidos");
            System.out.println("4. Eliminar Pedidos");
            System.out.println("5. Editar Pedidos");
            System.out.println("0. Salir");
            System.out.println("-------------------------------------------------");

            try {
                op = leer.nextInt();

                switch (op) {
                    case 1:
                        pe.agregarPedido();
                        break;
                    case 2:
                        pe.listarPedidos();
                        break;
                    case 3:
                        pe.buscarPedidos(idPedido);
                        break;
                    case 4:
                        pe.eliminarPedido(idPedido);
                        break;
                    case 5:
                        pe.editarPedido();
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
