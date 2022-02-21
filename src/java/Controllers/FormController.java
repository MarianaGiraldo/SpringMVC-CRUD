/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Models.AdoptBean;
import Models.PetBean;
import Models.PetBeanValidation;
import Models.UserBean;
import Models.UserBeanValidation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mariana
 */
@Controller
public class FormController {
    private final PetBeanValidation validate_pet;
    private final UserBeanValidation validate_user;

    public FormController() {
        this.validate_pet = new PetBeanValidation();
        this.validate_user = new UserBeanValidation();
    }
    
    
    @RequestMapping(value = "form_user.htm", method = RequestMethod.GET)
    public ModelAndView getUserForm(){
        return new ModelAndView("Views/jstlform_user", "user", new UserBean());
    }
    
    @RequestMapping(value = "form_pet.htm", method = RequestMethod.GET)
    public ModelAndView getPetForm(){
        return new ModelAndView("Views/jstlform_pet", "pet", new PetBean());
    }
    
    
    /***
      Form Validation
     * @param pb
     * @param result
     * @param status
      @return ModelAndView
    ***/
    @RequestMapping(value = "form_pet.htm", method = RequestMethod.POST)
    public ModelAndView valpostPetForm(
            @ModelAttribute("pet") PetBean pb, 
            BindingResult result,
            SessionStatus status
            ){
        ModelAndView mav = new ModelAndView();
        this.validate_pet.validate(pb, result);
        if(result.hasErrors()){
            mav.addObject("pet", new PetBean());
            mav.setViewName("Views/jstlform_pet");
        }else{
            mav.addObject("pet", pb);
            mav.setViewName("Views/jstlview_pet");
        }
        return mav;
    }
    
    @RequestMapping(value = "form_user.htm", method = RequestMethod.POST)
    public ModelAndView valpostUserForm(
            @ModelAttribute("user") UserBean ub, 
            BindingResult result,
            SessionStatus status
            ){
        ModelAndView mav = new ModelAndView();
        this.validate_user.validate(ub, result);
        if(result.hasErrors()){
            mav.addObject("ub", new UserBean());
            mav.setViewName("Views/jstlform_user");
        }else{
            mav.addObject("ub", ub);
            mav.setViewName("Views/jstlview_user");
        }
        return mav;
    }
    
    
}
