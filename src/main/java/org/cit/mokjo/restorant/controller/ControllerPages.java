package org.cit.mokjo.restorant.controller;

import org.cit.mokjo.restorant.migration_tabels.Users;
import org.cit.mokjo.restorant.service.FoodServiceImpl;
import org.cit.mokjo.restorant.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerPages {

    @Autowired
    private FoodServiceImpl foodService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = { "/", "home", "" }, method = RequestMethod.GET)
    public String welcome(Model model) {
	model.addAttribute("foods", foodService.getAllItems());

	return "index";
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
    public String login() {
	return "login";
    }

    @RequestMapping(value = { "/register" }, method = RequestMethod.GET)
    public String register() {
	return "register";
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.POST)
    public String enterSys(@RequestParam String email, String password, Model model) {

	if (!email.isEmpty() || !password.isEmpty()) {
	    if (userService.findUsersByEmailAndPassword(email, password) == null) {
		model.addAttribute("errorLogin", "Canot find user! Register First");
	    } else {
		return "/auth_user/home_user";
	    }
	    model.addAttribute("foods", foodService.getAllItems());

	} else {
	    model.addAttribute("errorLogin", "Empty the filds please");
	}
	return "/login";

    }

    @RequestMapping(value = { "/register" }, method = RequestMethod.POST)
    public String regUser(@RequestParam String name, String email, String password, String confirm, Model model) {
	if (password.equals(confirm)) {
	    if (userService.findUsersByEmail(email) != null) {
		model.addAttribute("userExist", "The User Exist In database");
	    } else {
		userService.saveUser(new Users(name, password, email, 1));
		return "login";
	    }
	} else {
	    model.addAttribute("notSamePassword", "The password and confirm password dont mathch");
	}

	return "/register";

    }

    @RequestMapping(value = { "/auth_user/home_user" }, method = RequestMethod.GET)
    public String authenticateUser(Model model) {
	model.addAttribute("foods", foodService.getAllItems());
	return "auth_user/home_user";
    }

}
