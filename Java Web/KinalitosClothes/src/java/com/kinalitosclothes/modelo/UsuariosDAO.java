package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuariosDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public Usuarios validar(String correoUsuario, String contraseñaUsuario){
        //instanciar el objeto de la entidad Empleado
        Usuarios usuarios = new Usuarios();
        //agregar una variable de tipo Select * from Usuarios where nombreUsuario = ? and contraseñaUsuario = ?" String para muestra de consulta sql
        String sql = "Select * from Usuarios where correoUsuario = ? and contraseñaUsuario = ?;";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, correoUsuario);
            ps.setString(2, contraseñaUsuario);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuarios.setCodigoUsuario(rs.getInt("codigoUsuario"));
                usuarios.setNombreUsuario(rs.getString("nombreUsuario"));
                usuarios.setApellidoUsuario(rs.getString("apellidoUsuario"));
                usuarios.setCorreoUsuario(rs.getString("correoUsuario"));
                usuarios.setTelefonoUsuario(rs.getString("telefonoUsuario"));
                usuarios.setDireccionUsuario(rs.getString("direccionUsuario"));
                usuarios.setContraseñaUsuario(rs.getString("contraseñaUsuario"));
                usuarios.setTipoUsuario(Usuarios.TipoUsuarios.valueOf(rs.getString("tipoUsuario")));
                usuarios.setFechaRegistro(rs.getDate("fechaRegistro"));
            }
        } catch (Exception e) {
            System.out.println("El usuario o contraseña son incorrectos");
            e.printStackTrace();
        }
        return usuarios;
    }
}
