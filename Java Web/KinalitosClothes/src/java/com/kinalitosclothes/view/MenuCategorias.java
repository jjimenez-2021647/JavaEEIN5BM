package com.kinalitosclothes.view;

import java.util.Scanner;
import com.kinalitosclothes.modelo.CategoriasDAO;

public class MenuCategorias {

    public void menuCategorias() {
        Scanner leer = new Scanner(System.in);
        int op = 1;
        CategoriasDAO cc = new CategoriasDAO();

        while (op != 0) {
            System.out.println("-----------------------------------");
            System.out.println("Bienvenido al menú de Categorías");
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
                    cc.agregarCategoria();
                    break;
                case 2:
                    cc.listarCategorias();
                    break;
                case 3:
                    cc.eliminarCategoria();
                    break;
                case 4:
                    cc.buscarCategoria();
                    break;
                case 5:
                    cc.editarCategoria();
                    break;
                case 0:
                    cc.salir();
                    break;
                default:
                    System.out.println("Por favor seleccione una de las opciones válidas.");
            }
        }
    }
}
