package org.cit.mokjo.restorant.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegisterValidator {
    
    private Pattern validator;

    public boolean validateEmail(String email) {
        validator = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
        Matcher matcher = validator.matcher(email);
        return matcher.find();
    }

    public boolean validatePhone(String id) {
        validator = Pattern.compile("((((\\+|0{2})355)|0)6(7|8|9)(\\d{7}))");
        Matcher matcher = validator.matcher(id);
        return matcher.find();
    }

}
