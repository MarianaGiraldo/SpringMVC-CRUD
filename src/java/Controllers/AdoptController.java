/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Models.AdoptBean;
import Models.PetBean;
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
public class AdoptController {
    
    @RequestMapping(value = "form_adoptpet.htm", method = RequestMethod.GET)
    public ModelAndView getAdoptForm(){
        return new ModelAndView("Views/jstlform_adoptpet", "adoptpet", new AdoptBean());
    }
    
    
    @RequestMapping(value = "form_adoptpet.htm", method = RequestMethod.POST)
    public String postAdoptForm(AdoptBean ab, ModelMap map){
        map.addAttribute("adopt", ab);
        return "Views/jstlview_adoptpet";
    }
    
    @RequestMapping(value = "listpets.htm", method = RequestMethod.GET)
    public ModelAndView getPetList(){
        return new ModelAndView("Views/list_pets", "pet", new PetBean());
    }
    
}
