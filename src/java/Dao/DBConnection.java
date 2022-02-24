/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Mariana
 */
public class DBConnection {
    public DriverManagerDataSource connect(){
        //TODO Hacer el try catch
        DriverManagerDataSource dtsource = new DriverManagerDataSource();
        dtsource.setDriverClassName("com.mysql.jdbc.Driver");
        dtsource.setUrl("jdbc:mysql://localhost:3306/adopt_pets_db");
        dtsource.setUsername("root");
        dtsource.setPassword("");
        
        return dtsource;
    }
    
}
