/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Dao.AdoptDao;
import Dao.DBConnection;
import Dao.UserDao;
import Models.AdoptBean;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mariana
 */
@Controller
@RequestMapping(value = "form_adoptpet.htm")
public class AdoptController {
    private final JdbcTemplate jdbcTemplate;
    private final UserDao userDao;
    private final AdoptDao adoptDao;

    public AdoptController() {
       DBConnection con = new DBConnection();
       this.jdbcTemplate = new JdbcTemplate(con.connect());
       this.userDao = new UserDao();
       this.adoptDao = new AdoptDao();
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getAdoptForm(HttpServletRequest request){
        AdoptBean ab = new AdoptBean();
        ModelAndView mav = new ModelAndView("Views/jstlform_adoptpet");
        int code = this.adoptDao.getCode();
        mav.addObject("adopt", ab);
        
        String pet_id = request.getParameter("pet_id");
        mav.addObject("pet_id", pet_id);
        
        List users = userDao.listUsers();
        mav.addObject("userList", users);
        
        return mav;
    }
    
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView postAdoptForm(AdoptBean ab, ModelMap map){
        map.addAttribute("adopt", ab);
        ModelAndView mav = new ModelAndView();
        String sql = "INSERT INTO `adoptings`(`user_id`, `pet_id`) VALUES (?, ?)";
        this.jdbcTemplate.update(sql, ab.getUser_id(), ab.getPet_id());
//        
//        String sql2 = "UPDATE `pets` SET `is_adopted` = '1' WHERE `pets`.`id` = (?);";
//        this.jdbcTemplate.update(sql2, ab.getPet_id());
        mav.setViewName("Views/jstlview_adoptpet");
        
        return mav;
    }
    
    
}
