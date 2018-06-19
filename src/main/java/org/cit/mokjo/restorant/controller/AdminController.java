package org.cit.mokjo.restorant.controller;

import java.sql.Date;

import org.cit.mokjo.restorant.migration_tabels.BookTable;
import org.cit.mokjo.restorant.migration_tabels.FoodItems;
import org.cit.mokjo.restorant.migration_tabels.RestorantTabel;
import org.cit.mokjo.restorant.service.BookTableServiceImpl;
import org.cit.mokjo.restorant.service.FoodServiceImpl;
import org.cit.mokjo.restorant.service.TabelServiceImpl;
import org.cit.mokjo.restorant.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @RequestMapping(value = { "/deleteFood" }, method = RequestMethod.GET)
    public String deleteFood(@RequestParam Long id, Model model ) {
	foodService.delete(id);
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }
    
    @RequestMapping(value = { "/deleteUser" }, method = RequestMethod.GET)
    public String deleteUser(@RequestParam Long id, Model model ) {
	userService.delete(id);
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }

    @RequestMapping(value = { "/deleteBookTable"}, method = RequestMethod.GET)
    public String deleteBookTable(@RequestParam Long id, Model model ) {
	bookTableService.delete(id);
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }
    
    @RequestMapping(value = { "/deleteTable"}, method = RequestMethod.GET)
    public String deleteTable(@RequestParam Long id, Model model ) {
	tableService.delete(id);
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }
    
    

    @RequestMapping(value = { "/insertFood"}, method = RequestMethod.POST)
    public String insertBookTable (@RequestParam String foodName,String description, String timeServing, String foodId, Double price, Model model ) {
	foodService.save(new FoodItems(foodName, description, timeServing, foodId, price));
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }    
    
    @RequestMapping(value = { "/insertFood"}, method = RequestMethod.GET)
    public String getFoodToInsert( Model model ) {
	model.addAttribute("mode", "EDIT_FOOD");
	return "/admin/admin";
    }
    

    @RequestMapping(value = { "/insertBookTable"}, method = RequestMethod.POST)
    public String insertFood(@RequestParam String name, String email, Integer people, String phone, String tableid ,String message, String reserveId, Date date, Model model ) {
	bookTableService.save(new BookTable(name, email, people, reserveId, tableid, phone, message, date));
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }
    
    
    @RequestMapping(value = { "/insertBookTable"}, method = RequestMethod.GET)
    public String getBookTableToInsert( Model model ) {
	model.addAttribute("mode", "EDIT_BOOK_TABLE");
	return "/admin/admin";
    }
    
    
    @RequestMapping(value = { "/insertTable"}, method = RequestMethod.POST)
    public String insertTable(@RequestParam Boolean isAvailable, Date date, Integer numberOfChairs, String tableid, Model model ) {
//	name email people phone tableid message reserveId date
	tableService.save( new RestorantTabel(isAvailable, date, numberOfChairs, tableid));
	model.addAttribute("foods", foodService.getAllItems());
	model.addAttribute("users", userService.getAllUsers());
	model.addAttribute("bookTable", bookTableService.getAllItems());
	model.addAttribute("table", tableService.getAllItems());
	model.addAttribute("mode", "VIEW");
	return "/admin/admin";
    }
    
    
    @RequestMapping(value = { "/insertTable"}, method = RequestMethod.GET)
    public String getTableToInsert( Model model ) {
	model.addAttribute("mode", "EDIT_TABLE");
	return "/admin/admin";
    }
    
}
