/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Models.PetBean;
import Models.UserBean;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mariana
 */

@Controller
public class homeController {
    
    @RequestMapping("form_user.htm")
    public ModelAndView userForm(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Views/form_user");
        
        return mav;
    }
    
    @RequestMapping("form_pet.htm")
    public ModelAndView petForm(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Views/form_pet");
        
        return mav;
    }
    
    @RequestMapping("view_user.htm")
    public ModelAndView userView(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        
        String name = request.getParameter("txtName");
        String email = request.getParameter("txtEmail");
        String phoneNumber = request.getParameter("txtPhone");
        int id = Integer.parseInt(request.getParameter("txtId"));
        
        UserBean ub = new UserBean(name, phoneNumber, email, id);
        
        mav.addObject("user", ub);
        
        mav.setViewName("Views/view_user");
        
        return mav;
    }
    
    @RequestMapping("view_pet.htm")
    public ModelAndView petView(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        
        String name = request.getParameter("txtName");
        int born_year = Integer.parseInt(request.getParameter("txtBornYear"));
        String color = request.getParameter("txtColor");
        String breed = request.getParameter("txtBreed");
        String pet_type= request.getParameter("txtPetType");
        Boolean is_adopted= Boolean.parseBoolean(request.getParameter("txtIs_adopted"));
        String is_adopted_string= (Boolean.parseBoolean(request.getParameter("txtIs_adopted"))) ? "Sí" : "No";
        
        PetBean pb = new PetBean(pet_type, name, born_year, color, breed, is_adopted);
        mav.addObject("pet", pb);
        mav.addObject("is_adopted", is_adopted_string);
        
        mav.setViewName("Views/view_pet");
        
        return mav;
    }
    
}
