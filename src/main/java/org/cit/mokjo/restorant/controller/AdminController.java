package org.cit.mokjo.restorant.controller;

import org.cit.mokjo.restorant.service.BookTableServiceImpl;
import org.cit.mokjo.restorant.service.FoodServiceImpl;
import org.cit.mokjo.restorant.service.TabelServiceImpl;
import org.cit.mokjo.restorant.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @Autowired
    private FoodServiceImpl foodService;

    @Autowired
    private TabelServiceImpl tableService;

    @Autowired
    private UserService userService;

    @Autowired
    private BookTableServiceImpl bookTableService;

    @RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
    public String admin(Model model) {
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("table", bookTableService.getAllItems());
	return "/admin/admin";
    }

}
