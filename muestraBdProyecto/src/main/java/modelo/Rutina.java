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

public class Rutina {
    private String nivel;
    private String lunes;
    private String martes;
    private String miercoles;
    private String jueves;
    private String viernes;
    private String sabado;
    private String domingo;

    private JdbcTemplate jTemplate;
    public Rutina() {
        ConexionBD con = new ConexionBD();
        this.jTemplate = new JdbcTemplate(con.conectar());
    }

    public Rutina(String nivel, String lunes, String martes, String miercoles, String jueves, String viernes, String sabado, String domingo) {
        this.nivel = nivel;
        this.lunes = lunes;
        this.martes = martes;
        this.miercoles = miercoles;
        this.jueves = jueves;
        this.viernes = viernes;
        this.sabado = sabado;
        this.domingo = domingo;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getLunes() {
        return lunes;
    }

    public void setLunes(String lunes) {
        this.lunes = lunes;
    }

    public String getMartes() {
        return martes;
    }

    public void setMartes(String martes) {
        this.martes = martes;
    }

    public String getMiercoles() {
        return miercoles;
    }

    public void setMiercoles(String miercoles) {
        this.miercoles = miercoles;
    }

    public String getJueves() {
        return jueves;
    }

    public void setJueves(String jueves) {
        this.jueves = jueves;
    }

    public String getViernes() {
        return viernes;
    }

    public void setViernes(String viernes) {
        this.viernes = viernes;
    }

    public String getSabado() {
        return sabado;
    }

    public void setSabado(String sabado) {
        this.sabado = sabado;
    }

    public String getDomingo() {
        return domingo;
    }

    public void setDomingo(String domingo) {
        this.domingo = domingo;
    }
    
    public ArrayList mostrarRutinas() {
        
        String sql = "SELECT * FROM tblrutina";
        List<Rutina> lista = jTemplate.query(sql, new Object[]{}, new RowMapper<Rutina>() {
            public Rutina mapRow(ResultSet rs, int rowNum) throws SQLException {
                Rutina rutina = new Rutina();
                rutina.setNivel(rs.getString("nivel"));
                rutina.setLunes(rs.getString("lunes"));
                rutina.setMartes(rs.getString("martes"));
                rutina.setMiercoles(rs.getString("miercoles"));
                rutina.setJueves(rs.getString("jueves"));
                rutina.setViernes(rs.getString("viernes"));
                rutina.setSabado(rs.getString("sabado"));
                rutina.setDomingo(rs.getString("domingo"));
                
                return rutina;
            }
        });
        return (ArrayList) lista;
    }
}
