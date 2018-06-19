package org.cit.mokjo.restorant.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.assertj.core.internal.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator;
import org.cit.mokjo.restorant.migration_tabels.BookTable;
import org.cit.mokjo.restorant.migration_tabels.Users;
import org.cit.mokjo.restorant.service.BookTableServiceImpl;
import org.cit.mokjo.restorant.service.FoodServiceImpl;
import org.cit.mokjo.restorant.service.TabelServiceImpl;
import org.cit.mokjo.restorant.service.UserService;
import org.cit.mokjo.restorant.validation.RegisterValidator;
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
    private TabelServiceImpl tabelService;

    @Autowired
    private UserService userService;

    @Autowired
    private BookTableServiceImpl bookTableService;

    private Random rand = new Random();

    private RegisterValidator validator = new RegisterValidator();

    @RequestMapping(value = { "/", "home", "" }, method = RequestMethod.GET)
    public String welcome(Model model) {
	model.addAttribute("foods", foodService.getAllItems());
	return "index";
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.GET)
    public String login() {
	return "loginC";
    }

    @RequestMapping(value = { "/register" }, method = RequestMethod.GET)
    public String register() {
	return "register";
    }

    @RequestMapping(value = { "/out" }, method = RequestMethod.GET)
    public void out(HttpServletResponse res) {
	try {
	    res.sendRedirect("/");
	} catch (IOException e) {
	    e.printStackTrace();
	}
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.POST)
    public String enterSys(@RequestParam String email, String password, Model model) {

	if (!email.isEmpty() || !password.isEmpty()) {

	    if (userService.findUsersByEmailAndPassword(email, password) == null) {
		model.addAttribute("errorLogin", "Canot find user! Register First");
		return "/loginC";

	    } else {
		model.addAttribute("foods", foodService.getAllItems());
		model.addAttribute("tabel", tabelService.getAllItems());
		System.out.println("It is logt");
		return "/auth_user/home_user";
	    }

	} else {
	    model.addAttribute("errorLogin", "Empty the filds please");
	    return "/loginC";
	}

    }

    @RequestMapping(value = { "/register" }, method = RequestMethod.POST)
    public String regUser(@RequestParam String name, String email, String password, String confirm, Model model) {

	if (password.length() > 7) {
	    if (password.equals(confirm)) {
		if (validator.validateEmail(email)) {
		    if (userService.findUsersByEmail(email) != null) {
			model.addAttribute("userExist", "The User Exist In database");
		    } else {
			userService.saveUser(new Users(name, password, email, 1));
			return "loginC";
		    }
		} else {
		    model.addAttribute("emailError", "Enter a valid email");
		}
	    } else {
		model.addAttribute("notSamePassword", "The password and confirm password dont mathch");
	    }
	} else {
	    model.addAttribute("notSamePassword", "The password length should be bigger than 7");
	}

	return "/register";

    }

    @RequestMapping(value = { "/auth_user/home_user" }, method = RequestMethod.GET)
    public String authenticateUser(Model model) {
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("tabel", tabelService.getAllItems());
	return "/auth_user/home_user";
    }

    @RequestMapping(value = { "/book" }, method = RequestMethod.POST)
    public String book(Model model, @RequestParam String name, Date date, String email, String table, String phone,
	    String people, String message) {

	if (name.isEmpty() || date.equals(null) || email.isEmpty() || table.isEmpty() || phone.isEmpty()
		|| people.isEmpty() || message.isEmpty()) {
	    model.addAttribute("fildsMess", "Plesase empty all fils");
	} else {
	    Integer reserv = rand.nextInt(1000000);
	    bookTableService.bookTable(new BookTable(name, email, Integer.parseInt(people), String.valueOf(reserv),
		    table, phone, message, date));
	    return "/auth_user/success";
	}
	return "/auth_user/home_user";

    }

}
