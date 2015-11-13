package th.co.aware.alumnus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import th.co.aware.alumnus.bean.user;
import th.co.aware.alumnus.dao.UserDao;
import th.co.aware.alumnus.dao.Validation;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;
	@Autowired
	Validation validate;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("login", "command", new user());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute("user") user user, ModelMap model) {
		Validation Validate = new Validation();

		int loginResult = Validate.validate(user.getUsername(), user.getPassword());

		if (loginResult == 1) {

			return "redirect:/users";
		} else if (loginResult == 2) {
			return "redirect:/search";
		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping("/users")
	public String home(Model model) {
		List<user> list = userDao.getuser();
		model.addAttribute("users", list);
		return "users";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public ModelAndView add() {

		return new ModelAndView("insertuser", "command", new user());
	}

	@RequestMapping("/adduser")
	public String add(@ModelAttribute user user) {
		userDao.insertUser(user);
		return "redirect:/users";
	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		System.out.println("id = " + id);
		userDao.deleteData(id);
		return "redirect:/users";
	}

	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam int id) {

		user list = userDao.getUserById(id);

		return new ModelAndView("edituser", "edit", list);

	}

	@RequestMapping("/search")
	public ModelAndView search() {
		return new ModelAndView("search", "command", new user());
	}

	@RequestMapping("/userByName")
	public String userByName(@RequestParam String fname, Model model) {

		List<user> users = userDao.getUserByName(fname);
		model.addAttribute("users", users);
		return "showsearch";
	}

	@RequestMapping("/userByFac")
	public String userByFac(@RequestParam String faculty, Model model) {

		List<user> users = userDao.getUserByFac(faculty);
		model.addAttribute("users", users);
		return "showsearch";
	}

	@RequestMapping("/userByYear")
	public String userByYear(@RequestParam String graduate_stop, Model model) {

		List<user> users = userDao.getUserByYear(graduate_stop);
		model.addAttribute("users", users);
		return "showsearch";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		
		return "redirect:/";
	}
	@RequestMapping("/shows")
	public String show(Model model) {
		List<user> list = userDao.getuser();
		model.addAttribute("show", list);
		return "show";
	}

}

