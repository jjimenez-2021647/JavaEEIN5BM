    package com.kinalitosclothes.modelo;

    import java.util.Date;

    public class Empleados {

        private int codigoEmpleado;
        private String nombreEmpleado;
        private String apellidoEmpleado;
        private String correoEmpleado;
        private String telefonoEmpleado;
        private String direccionEmpleado;
        private String nombreUsuario;
        private String contraseñaUsuario;
        private Date fechaRegistro;

        public Empleados() {
        }

        public Empleados(int codigoEmpleado, String nombreEmpleado, String apellidoEmpleado, String correoEmpleado, String telefonoEmpleado, String direccionEmpleado, String nombreUsuario, String contraseñaUsuario, Date fechaRegistro) {
            this.codigoEmpleado = codigoEmpleado;
            this.nombreEmpleado = nombreEmpleado;
            this.apellidoEmpleado = apellidoEmpleado;
            this.correoEmpleado = correoEmpleado;
            this.telefonoEmpleado = telefonoEmpleado;
            this.direccionEmpleado = direccionEmpleado;
            this.nombreUsuario = nombreUsuario;
            this.contraseñaUsuario = contraseñaUsuario;
            this.fechaRegistro = fechaRegistro;
        }

        public int getCodigoEmpleado() {
            return codigoEmpleado;
        }

        public void setCodigoEmpleado(int codigoEmpleado) {
            this.codigoEmpleado = codigoEmpleado;
        }

        public String getNombreEmpleado() {
            return nombreEmpleado;
        }

        public void setNombreEmpleado(String nombreEmpleado) {
            this.nombreEmpleado = nombreEmpleado;
        }

        public String getApellidoEmpleado() {
            return apellidoEmpleado;
        }

        public void setApellidoEmpleado(String apellidoEmpleado) {
            this.apellidoEmpleado = apellidoEmpleado;
        }

        public String getCorreoEmpleado() {
            return correoEmpleado;
        }

        public void setCorreoEmpleado(String correoEmpleado) {
            this.correoEmpleado = correoEmpleado;
        }

        public String getTelefonoEmpleado() {
            return telefonoEmpleado;
        }

        public void setTelefonoEmpleado(String telefonoEmpleado) {
            this.telefonoEmpleado = telefonoEmpleado;
        }

        public String getDireccionEmpleado() {
            return direccionEmpleado;
        }

        public void setDireccionEmpleado(String direccionEmpleado) {
            this.direccionEmpleado = direccionEmpleado;
        }

        public String getNombreUsuario() {
            return nombreUsuario;
        }

        public void setNombreUsuario(String nombreUsuario) {
            this.nombreUsuario = nombreUsuario;
        }

        public String getContraseñaUsuario() {
            return contraseñaUsuario;
        }

        public void setContraseñaUsuario(String contraseñaUsuario) {
            this.contraseñaUsuario = contraseñaUsuario;
        }

        public Date getFechaRegistro() {
            return fechaRegistro;
        }

        public void setFechaRegistro(Date fechaRegistro) {
            this.fechaRegistro = fechaRegistro;
        }

        /*
        @Overridea
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Empleados{");
            sb.append("codigoEmpleado=").append(codigoEmpleado);
            sb.append(", nombreEmpleado=").append(nombreEmpleado);
            sb.append(", apellidoEmpleado=").append(apellidoEmpleado);
            sb.append(", correoEmpleado=").append(correoEmpleado);
            sb.append(", telefonoEmpleado=").append(telefonoEmpleado);
            sb.append(", direccionEmpleado=").append(direccionEmpleado);
            sb.append(", codigoUsuario=").append(codigoUsuario);
            sb.append('}');
            return sb.toString();
        }*/


    }
