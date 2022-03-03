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
public class AdoptDao {
    private JdbcTemplate jdbcTemplate;

    public AdoptDao() {
        DBConnection con = new DBConnection();
        this.jdbcTemplate = new JdbcTemplate(con.connect());
    }
    
    
    public List listAdoptions(){
        String sql = "select * from adoptings";
        List adoptions = this.jdbcTemplate.queryForList(sql);
        return adoptions;
    }
    
    public int getCode(){
        int code = 0;
        String sql = "select max(id)+1 as code from adoptings";
        code = jdbcTemplate.queryForObject(sql, Integer.class);
        return code;
    }
    
}
