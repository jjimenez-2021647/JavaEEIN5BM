package Controlador;

import com.kinalitosclothes.modelo.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        Usuarios usuarios = new Usuarios();
        UsuariosDAO usuariosDao = new UsuariosDAO();
        Facturas facturas = new Facturas();
        FacturasDAO facturasDao = new FacturasDAO();
        int codUsuario;

        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Index/Principal.jsp").forward(request, response);
        }else if (menu.equals("Index")) {
            request.getRequestDispatcher("index.jsp").forward(request, response); 
        } else if (menu.equals("Usuarios")) {
            switch (accion) {
                case "Listar":
                    List listaUsuarios = usuariosDao.listar();
                    request.setAttribute("usuarios", listaUsuarios);
                    break;
                case "Buscar":

                    break;
                case "Agregar":
                    String nombreUsuario = request.getParameter("txtNombreUsuario");
                    String apellidoUsuario = request.getParameter("txtApellidoUsuario");
                    String correoUsuario = request.getParameter("txtCorreoUsuario");
                    String telefonoUsuario = request.getParameter("txtTelefonoUsuario");
                    String direccionUsuario = request.getParameter("txtDireccionUsuario");
                    String contraseñaUsuario = request.getParameter("txtpassword");
                    String tipoUsuario = request.getParameter("txtTipoUsuario");
                    usuarios.setNombreUsuario(nombreUsuario);
                    usuarios.setApellidoUsuario(apellidoUsuario);
                    usuarios.setCorreoUsuario(correoUsuario);
                    usuarios.setTelefonoUsuario(telefonoUsuario);
                    usuarios.setDireccionUsuario(direccionUsuario);
                    usuarios.setContraseñaUsuario(contraseñaUsuario);
                    usuarios.setTipoUsuario(Usuarios.TipoUsuarios.valueOf(tipoUsuario));
                    usuariosDao.agregar(usuarios);
                    if (usuarios != null) {
                        request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
                    }else{
                        System.out.println("No sale");
                    }
                    break;
                case "Editar":

                    break;
                case "Actualizar":

                    break;
                case "Eliminar":

                    break;
                default:
                    System.out.println("No se encontro");
            }
            request.getRequestDispatcher("/Index/VistaUsuarioAdmin.jsp").forward(request, response);
        } else if (menu.equals("Proveedor")) {
            request.getRequestDispatcher("Index/vistaproveedoradmin.jsp").forward(request, response);
        } else if (menu.equals("Categoria")) {
            request.getRequestDispatcher("Index/vistacategoria.jsp").forward(request, response);
        } else if (menu.equals("MetodoPago")) {
            request.getRequestDispatcher("Index/metodopagoadmin.jsp").forward(request, response);
        } else if (menu.equals("Producto")) {
            request.getRequestDispatcher("Index/vistaproductoadmin.jsp").forward(request, response);
        } else if (menu.equals("Pedido")) {
            request.getRequestDispatcher("Index/vistapedidoadmin.jsp").forward(request, response);
        } else if (menu.equals("DetallePedido")) {
            request.getRequestDispatcher("Index/vistadetallepedidoadmin.jsp").forward(request, response);
        } else if (menu.equals("Factura")) {
            switch (accion) {
                case "Listar":
                    List listaFacturas = facturasDao.listar();
                    request.setAttribute("facturas", listaFacturas);
                    break;
                case "Buscar":

                    break;
                case "Agregar":
                    String estadoFactura = request.getParameter("txtEstadoFactura");
                    String formaEntrega = request.getParameter("txtFormaEntrega");
                    String codigoPedido = request.getParameter("txtCodigoPedido");
                    String codigoUsuario = request.getParameter("txtCodigoUsuarios");
                    int codigoP = Integer.parseInt(codigoPedido);
                    int codigoU = Integer.parseInt(codigoUsuario);
                    facturas.setEstadoFactura(Facturas.EstadoFactura.valueOf(estadoFactura));
                    facturas.setFormaEntrega(Facturas.FormaEntrega.valueOf(formaEntrega));
                    facturas.setCodigoPedido(codigoP);
                    facturas.setCodigoUsuario(codigoU);
                    facturasDao.agregar(facturas);
                    if (facturas != null) {
                        request.getRequestDispatcher("Controlador?menu=Factura&accion=Listar").forward(request, response);
                    }else{
                        System.out.println("No sale");
                    }
                    break;
                case "Editar":

                    break;
                case "Actualizar":

                    break;
                case "Eliminar":

                    break;
                default:
                    System.out.println("No se encontro");
            }
            request.getRequestDispatcher("Index/VistaFacturaAdmin.jsp").forward(request, response);
        } else if (menu.equals("VistaAdmin")) {
            request.getRequestDispatcher("Index/vistaadmin.jsp").forward(request, response);
        } else if (menu.equals("MetodoPagoC")) {
            request.getRequestDispatcher("Index/MetodoPago.jsp").forward(request, response);
        } else if (menu.equals("VistaFacturaC")) {
            request.getRequestDispatcher("Index/VistaFacturaCliente.jsp").forward(request, response);
        } else if (menu.equals("VistaUsuariosC")) {
            request.getRequestDispatcher("Index/VistaUsuariosCliente.jsp").forward(request, response);
        } else if (menu.equals("Conocenos")) {
            request.getRequestDispatcher("Index/conocenos.jsp").forward(request, response);
        } else if (menu.equals("Hombre")) {
            request.getRequestDispatcher("Index/hombre.jsp").forward(request, response);
        } else if (menu.equals("MisPedidos")) {
            request.getRequestDispatcher("Index/mispedidos.jsp").forward(request, response);
        } else if (menu.equals("Mujer")) {
            request.getRequestDispatcher("Index/mujer.jsp").forward(request, response);
        } else if (menu.equals("VistaCategoria")) {
            request.getRequestDispatcher("Index/vistacategoria.jsp").forward(request, response);
        } else if (menu.equals("VistaDetallePedido")) {
            request.getRequestDispatcher("Index/vistadetallepedido.jsp").forward(request, response);
        } else if (menu.equals("VistaProducto")) {
            request.getRequestDispatcher("Index/vistaproducto.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
