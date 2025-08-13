package com.kinalitosclothes.modelo;

import com.kinalitosclothes.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
        String sql = "call sp_BuscarUsuariosNC(?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
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
    
    public List listar(){
        String sql = "call sp_ListarUsuarios();";
        List<Usuarios> listaUsuarios = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuarios us = new Usuarios();
                us.setCodigoUsuario(rs.getInt(1));
                us.setNombreUsuario(rs.getString(2));
                us.setApellidoUsuario(rs.getString(3));
                us.setCorreoUsuario(rs.getString(4));
                us.setTelefonoUsuario(rs.getString(5));
                us.setDireccionUsuario(rs.getString(6));
                us.setContraseñaUsuario(rs.getString(7));
                us.setTipoUsuario(Usuarios.TipoUsuarios.valueOf(rs.getString(8)));
                us.setFechaRegistro(rs.getDate(9));
                listaUsuarios.add(us);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaUsuarios;
    }
    
    public int agregar(Usuarios us){
        String sql = "call sp_AgregarUsuario( ?, ?, ?, ?, ?, ?, ?);";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getNombreUsuario());
            ps.setString(2, us.getApellidoUsuario());
            ps.setString(3, us.getCorreoUsuario());
            ps.setString(4, us.getTelefonoUsuario());
            ps.setString(5, us.getDireccionUsuario());
            ps.setString(6, us.getContraseñaUsuario());
            ps.setString(7, us.getTipoUsuario().name());
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
}
