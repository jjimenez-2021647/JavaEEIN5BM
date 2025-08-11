package com.kinalitosclothes.view;

import com.kinalitosclothes.modelo.EmpleadosDAO;
import java.util.Scanner;

public class MenuEmpleado {

    private static final Scanner sc = new Scanner(System.in);

    public void mostrarMenu() {
        int opcion;
        do {
            System.out.println("|   *** MENÚ DE EMPLEADOS ***  | ");
            System.out.println("|  1. Agregar Empleado          | ");
            System.out.println("|  2. Listar Empleados          | ");
            System.out.println("|  3. Buscar Empleado           | ");
            System.out.println("|  4. Editar Empleado           | ");
            System.out.println("|  5. Eliminar Empleado         | ");
            System.out.println("|  6. Salir                     | ");
            System.out.print("Seleccione una opción: ");
            opcion = sc.nextInt();
            sc.nextLine(); // Limpiar buffer

            switch (opcion) {
                case 1 -> EmpleadosDAO.agregarEmpleado();
                case 2 -> EmpleadosDAO.listarEmpleados();
                case 3 -> EmpleadosDAO.buscarEmpleado();
                case 4 -> EmpleadosDAO.editarEmpleado();
                case 5 -> EmpleadosDAO.eliminarEmpleado();
                case 6 -> System.out.println("-*-*- Saliendo del menú...");
                default -> System.out.println("******* Opción no válida *******");
            }
        } while (opcion != 6);
    }
}
