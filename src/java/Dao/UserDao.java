/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Mariana
 */
public class UserDao {
    private JdbcTemplate jdbcTemplate;

    public UserDao() {
        DBConnection con = new DBConnection();
        this.jdbcTemplate = new JdbcTemplate(con.connect());
    }
    
    
    public List listUsers(){
        String sql = "select * from users";
        List users = this.jdbcTemplate.queryForList(sql);
        return users;
    }
    
}
