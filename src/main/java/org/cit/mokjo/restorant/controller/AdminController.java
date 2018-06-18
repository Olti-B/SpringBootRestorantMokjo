package org.cit.mokjo.restorant.controller;

import org.cit.mokjo.restorant.migration_tabels.FoodItems;
import org.cit.mokjo.restorant.service.BookTableServiceImpl;
import org.cit.mokjo.restorant.service.FoodServiceImpl;
import org.cit.mokjo.restorant.service.TabelServiceImpl;
import org.cit.mokjo.restorant.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		model.addAttribute("bookTable", bookTableService.getAllItems());
		model.addAttribute("table", tableService.getAllItems());
		model.addAttribute("mode", "VIEW");
		return "/admin/admin";
	}

	@RequestMapping(value = { "/updateFood" }, method = RequestMethod.GET)
	public String updateFood(Model model, @RequestParam Long id) {
		model.addAttribute("food", foodService.findOneValue(id));
		model.addAttribute("mode", "EDIT_FOOD");
		return "/admin/admin";
	}

	@RequestMapping(value = { "/edtiUser" }, method = RequestMethod.GET)
	public String updateUser(Model model, @RequestParam String email) {
		model.addAttribute("user", userService.findUsersByEmail(email));
		model.addAttribute("mode", "EDIT_USER");
		return "/admin/admin";
	}

	@RequestMapping(value = { "/editBookTable" }, method = RequestMethod.GET)
	public String updateBookedTable(Model model, @RequestParam Long id) {
		model.addAttribute("book", bookTableService.findOne(id));
		model.addAttribute("mode", "EDIT_BOOK_TABLE");
		return "/admin/admin";
	}

	@RequestMapping(value = { "/edtitTable" }, method = RequestMethod.GET)
	public String updateTable(Model model, @RequestParam Long id) {
		model.addAttribute("t", tableService.findOne(id));
		model.addAttribute("mode", "EDIT_TABLE");
		return "/admin/admin";
	}

	@RequestMapping(value = { "/saveFood" }, method = RequestMethod.POST)
	public String save(Model model, @ModelAttribute FoodItems food) {
		foodService.save(food);
		model.addAttribute("foods", foodService.getAllItems());
		model.addAttribute("users", userService.getAllUsers());
		model.addAttribute("bookTable", bookTableService.getAllItems());
		model.addAttribute("table", tableService.getAllItems());
		model.addAttribute("mode", "VIEW");
		return "/admin/admin";
	}

}
