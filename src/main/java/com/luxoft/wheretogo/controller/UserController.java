package com.luxoft.wheretogo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.luxoft.wheretogo.models.User;
import com.luxoft.wheretogo.services.UsersService;

@RestController
public class UserController {

	@Autowired
	private UsersService usersService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	@ResponseBody
	public User login() {
		return new User();
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public User login(@RequestBody User user, HttpServletRequest request) {
		User sessionUser = usersService.findByLogin(user.getLogin());
		if (sessionUser == null || !sessionUser.getPassword().equals(user.getPassword())) {
			return null;
		}
		request.getSession().setAttribute("user", sessionUser);

		return sessionUser;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	@ResponseBody
	public boolean logout(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		if (user != null) {
			request.getSession().setAttribute("user", null);
		}
		return true;
	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	@ResponseBody
	public User user(HttpServletRequest request) {
		return (User) request.getSession().getAttribute("user");
	}

}
