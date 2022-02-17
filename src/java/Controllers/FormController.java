/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Models.PetBean;
import Models.UserBean;
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
public class FormController {
    
    @RequestMapping(value = "jstlform_user.htm", method = RequestMethod.GET)
    public ModelAndView getUserForm(){
        return new ModelAndView("Views/jstlform_user", "command", new UserBean());
    }
    
    @RequestMapping(value = "jstlform_user.htm", method = RequestMethod.POST)
    public String postUserForm(UserBean ub, ModelMap map){
        map.addAttribute("ub", ub);
        return "Views/jstlview_user";
    }
    
    @RequestMapping(value = "jstlform_pet.htm", method = RequestMethod.GET)
    public ModelAndView getPetForm(){
        return new ModelAndView("Views/jstlform_pet", "command", new PetBean());
    }
    
    @RequestMapping(value = "jstlform_pet.htm", method = RequestMethod.POST)
    public String postPetForm(PetBean pb, ModelMap map){
        map.addAttribute("pet", pb);
        return "Views/jstlview_pet";
    }
    
}
