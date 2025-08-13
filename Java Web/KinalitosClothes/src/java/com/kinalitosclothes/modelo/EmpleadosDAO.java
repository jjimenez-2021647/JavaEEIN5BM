package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpleadosDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public Empleados validar(String nombreUsuario, String contraseñaUsuario){
        //instanciar el objeto de la entidad Empleado
        Empleados empleados = new Empleados();
        //agregar una variable de tipo Select * from Empelados where nombreUsuario = ? and contraseñaUsuario = ?" String para muestra de consulta sql
        String sql = "Select * from Empleados where nombreUsuario = ? and contraseñaUsuario = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, nombreUsuario);
            ps.setString(2, contraseñaUsuario);
            rs = ps.executeQuery();
            while (rs.next()) {
                empleados.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleados.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleados.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleados.setCorreoEmpleado(rs.getString("correoEmpleado"));
                empleados.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                empleados.setDireccionEmpleado(rs.getString("direccionEmpleado"));
                empleados.setNombreUsuario(rs.getString("nombreUsuario"));
                empleados.setContraseñaUsuario(rs.getString("contraseñaUsuario"));
                empleados.setFechaRegistro(rs.getDate("fechaRegistro"));
            }
        } catch (Exception e) {
            System.out.println("El usuario o contraseña son incorrectos");
            e.printStackTrace();
        }
        return empleados;
    }
    
}
