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
public class UsuarioxRutina {
    private int id;
    private String correo;
    private String nivel;
    private JdbcTemplate jTemplate;

    public UsuarioxRutina() {
        ConexionBD con = new ConexionBD();
        this.jTemplate = new JdbcTemplate(con.conectar());
    }

    public UsuarioxRutina(int id, String correo, String nivel) {
        this.id = id;
        this.correo = correo;
        this.nivel = nivel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
    public ArrayList mostrarUsuxRut() {
        
        String sql = "SELECT * FROM tblusuarioxrutina";
        List<UsuarioxRutina> lista = jTemplate.query(sql, new Object[]{}, new RowMapper<UsuarioxRutina>() {
            public UsuarioxRutina mapRow(ResultSet rs, int rowNum) throws SQLException {
                UsuarioxRutina eje = new UsuarioxRutina();
                eje.setId(rs.getInt("idUsuxRut"));
                eje.setCorreo(rs.getString("correoUsu"));
                eje.setNivel(rs.getString("nivelRut"));                
                return eje;
            }
        });
        return (ArrayList) lista;
    }
}
