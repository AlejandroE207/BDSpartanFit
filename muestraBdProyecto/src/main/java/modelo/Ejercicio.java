/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author USUARIO
 */
public class Ejercicio {
    private int id;
    private String nombre;
    private String descripcion;
    private String url;

    private JdbcTemplate jTemplate;
    public Ejercicio() {
        ConexionBD con = new ConexionBD();
        this.jTemplate = new JdbcTemplate(con.conectar());
    }

    public Ejercicio(int id, String nombre, String descripcion, String url) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public JdbcTemplate getjTemplate() {
        return jTemplate;
    }

    public void setjTemplate(JdbcTemplate jTemplate) {
        this.jTemplate = jTemplate;
    }
    
    public ArrayList mostrarEjercicios() {
        
        String sql = "SELECT * FROM tblejercicios";
        List<Ejercicio> lista = jTemplate.query(sql, new Object[]{}, new RowMapper<Ejercicio>() {
            public Ejercicio mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ejercicio eje = new Ejercicio();
                eje.setId(rs.getInt("id"));
                eje.setNombre(rs.getString("nombre"));
                eje.setDescripcion(rs.getString("descripcion"));
                eje.setUrl(rs.getString("url"));
                
                
                return eje;
            }
        });
        return (ArrayList) lista;
    }
    
    
}
