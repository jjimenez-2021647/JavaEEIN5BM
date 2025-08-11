package com.kinalitosclothes.view;

import com.kinalitosclothes.modelo.MetodoPagosDAO;
import java.util.Scanner;

public class MenuMetodoPago {

    public void menuMetodoPagos() {
        Scanner leer = new Scanner(System.in);
        int op = 1;
        MetodoPagosDAO mpc = new MetodoPagosDAO();

        while (op != 0) {
            System.out.println("-----------------------------------");
            System.out.println("Bienvenido al menú de Métodos de Pago");
            System.out.println("Por favor elija una opción:");
            System.out.println("1. Agregar");
            System.out.println("2. Listar");
            System.out.println("3. Eliminar");
            System.out.println("4. Buscar");
            System.out.println("5. Editar");
            System.out.println("0. Salir");
            System.out.println("-----------------------------------");
            op = leer.nextInt();
            leer.nextLine();

            switch (op) {
                case 1:
                    mpc.agregarMetodoPago();
                    break;
                case 2:
                    mpc.listarMetodoPagos();
                    break;
                case 3:
                    mpc.eliminarMetodoPago();
                    break;
                case 4:
                    mpc.buscarMetodoPago();
                    break;
                case 5:
                    mpc.editarMetodoPago();
                    break;
                case 0:
                    mpc.salir();
                    break;
                default:
                    System.out.println("Por favor seleccione una de las opciones válidas.");
            }
        }
    }
}
