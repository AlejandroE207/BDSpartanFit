/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class ConexionBD {
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource data = new DriverManagerDataSource();
        data.setDriverClassName("com.mysql.cj.jdbc.Driver");
        data.setUrl("jdbc:mysql://localhost:3306/bdspartanfit?useSSL=false");
        data.setUsername("root");
        data.setPassword("alejandro2007");
        return data;
    }
}
