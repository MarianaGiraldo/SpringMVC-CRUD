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
public class UserBeanValidation implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return UserBean.class.isAssignableFrom(type);
    }
    
    @Override
    public void validate(Object o, Errors errors) {
        UserBean ub = (UserBean) o;
        
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "name", "required.name", "The name field is required"
        );
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "email", "required.name", "The email field is required"
        );
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "phoneNumber", "required.phoneNumber", "The phoneNumber field is required"
        );
        ValidationUtils.rejectIfEmptyOrWhitespace(
                errors, "id", "required.id", "The id field is required"
        );
        
        
    }
    
}
