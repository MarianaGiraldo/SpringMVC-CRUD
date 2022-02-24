/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Dao.DBConnection;
import Models.PetBean;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mariana
 */
@Controller
public class PetController {

    private final JdbcTemplate jdbcTemplate;

    public PetController() {
        DBConnection con = new DBConnection();
        this.jdbcTemplate = new JdbcTemplate(con.connect());
    }

    @RequestMapping(value = "listpets.htm", method = RequestMethod.GET)
    public ModelAndView listPets() {
        ModelAndView mav = new ModelAndView();
        try {
            String sql = "SELECT * from pets";
            List pets;
            pets = this.jdbcTemplate.queryForList(sql);
            System.out.println("List: "+ pets);
            mav.addObject("pets", pets);
            mav.setViewName("Views/list_pets");
        }
        catch(DataAccessException e){
            System.err.print(e.getMessage());
        }
        return mav;
    }

}
