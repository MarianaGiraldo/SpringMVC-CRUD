/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author Mariana
 */
public class PetBeanValidation implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return PetBean.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        PetBean pb = (PetBean) o;
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "name", "required.name", "The name field is required"
        );
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "born_year", "required.born_year", "The born year field is required"
        );
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "color", "required.color", "The color field is required"
        );
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "breed", "required.breed", "The breed field is required"
        );
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "pet_type", "required.pet_type", "The pet type field is required"
        );
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "is_adopted", "required.is_adopted", "The is_adopted field is required"
        );
        
    }
    
}
