package com.kinalitosclothes.view;

import java.util.Scanner;
import com.kinalitosclothes.modelo.UsuariosDAO;

public class MenuUsuarios {

    public void menuUsuarios() {
        Scanner leer = new Scanner(System.in);
        int op = 1;
        UsuariosDAO uc = new UsuariosDAO();
        while (op != 0) {
            System.out.println("-----------------------------------");
            System.out.println("Bienvenido al menu de Usuarios");
            System.out.println("Por favor elija una opcion:");
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
                    uc.agregarUsuario();
                    break;
                case 2:
                    uc.listarUsuarios();
                    break;
                case 3:
                    uc.eliminarUsuarios();
                    break;
                case 4:
                    uc.buscarUsuarios();
                    break;
                case 5:
                    uc.editarUsuarios();
                    break;

                case 0:
                    uc.salir();
                    break;
                default:
                    System.out.println("Por favor seleecione una de las opciones validas");
            }
        }

    }
}
