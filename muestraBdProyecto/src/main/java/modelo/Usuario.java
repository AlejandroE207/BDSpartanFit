/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class Usuario {
    private String correo;
    private String contraseña;
    private String genero;
    private String nombre;
    private String apellidos;
    private int edad;
    private int peso;
    private int estatura;
    private String objetivo;
    private String recuperacion;
    private double caloriasMant;
    
    private JdbcTemplate jTemplate;

    public Usuario() {
        ConexionBD con = new ConexionBD();
        this.jTemplate = new JdbcTemplate(con.conectar());
    }

    public Usuario(String correo, String contraseña, String genero, String nombre, String apellidos, int edad, int peso, int estatura, String objetivo, String recuperacion, double caloriasMant) {
        this.correo = correo;
        this.contraseña = contraseña;
        this.genero = genero;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
        this.peso = peso;
        this.estatura = estatura;
        this.objetivo = objetivo;
        this.recuperacion = recuperacion;
        this.caloriasMant = caloriasMant;
    }


    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getEstatura() {
        return estatura;
    }

    public void setEstatura(int estatura) {
        this.estatura = estatura;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public String getRecuperacion() {
        return recuperacion;
    }

    public void setRecuperacion(String recuperacion) {
        this.recuperacion = recuperacion;
    }

    public double getCaloriasMant() {
        return caloriasMant;
    }

    public void setCaloriasMant(double caloriasMant) {
        this.caloriasMant = caloriasMant;
    }
    
    
    
    public ArrayList mostrarUsuarios() {
        
        String sql = "SELECT * FROM tblusuarios";
        List<Usuario> lista = jTemplate.query(sql, new Object[]{}, new RowMapper<Usuario>() {
            public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
                Usuario user = new Usuario();
                user.setCorreo(rs.getString("correo"));
                user.setContraseña(rs.getString("contraseña"));
                user.setGenero(rs.getString("genero"));
                user.setNombre(rs.getString("nombre"));
                user.setApellidos(rs.getString("apellidos"));
                user.setEdad(rs.getInt("edad"));
                user.setPeso(rs.getInt("peso"));
                user.setEstatura(rs.getInt("estatura"));
                user.setObjetivo(rs.getString("objetivo"));
                user.setRecuperacion(rs.getString("recuperacion"));
                user.setCaloriasMant(rs.getDouble("caloriasMant"));
                return user;
            }
        });
        return (ArrayList) lista;
    }
    
    public void imprimirLis(){
        ArrayList<Usuario> listado = new ArrayList<Usuario>();
        listado=mostrarUsuarios();
        
        Iterator it = listado.iterator();
        while(it.hasNext()){
            Usuario objeto = (Usuario)it.next();
            System.out.println("CORREOOOOO HPTA: "+objeto.getCorreo());
        }
    }
    
//    public List<Usuario> todaTabla() {
//        String sql = "SELECT * FROM tblusuarios";
//        
//        return jTemplate.query(
//                sql,
//                (rs, rowNum)->
//                        new Usuario(
//                            rs.getString("correo");
//                          rs.getString("contraseña");
//              rs.getString("genero");
//              rs.getString("nombre");
//              rs.getString("apellidos");
//              rs.getInt("edad");
//              rs.getInt("peso");
//              rs.getInt("estatura");
//              rs.getString("objetivo");
//              rs.getString("recuperacion");
//                 rs.getInt("caloriasMant");
//
//                 ));}
    
    
}