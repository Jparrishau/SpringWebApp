package com.josephtaylorparrish.webapp;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController
{

	@GetMapping(value = { "/", "/index" })
	public String welcome(Model model)
	{
		return "index";
	}

	@GetMapping(value = "/forsale")
	public String forSale(Model model)
	{
		return "forsale";
	}

	@GetMapping(value = "/about")
	public String about(Model model)
	{
		return "about";
	}

	@GetMapping(value = "/contact")
	public String contact(Model model)
	{
		return "contact";
	}

	@GetMapping(value = "/admin")
	public String admin(Model model, Principal principal)
	{

		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String userInfo = WebUtils.toString(loginedUser);
		model.addAttribute("userInfo", userInfo);

		return "admin";
	}

	@GetMapping(value = "/login")
	public String login(Model model)
	{
		return "login";
	}

	@GetMapping(value = "/userInfo")
	public String userInfo(Model model, Principal principal)
	{

		// After user login successfully.
		String userName = principal.getName();

		System.out.println("User Name: " + userName);

		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String userInfo = WebUtils.toString(loginedUser);
		model.addAttribute("userInfo", userInfo);

		return "userInfo";
	}

	@GetMapping(value = "/403")
	public String accessDenied(Model model, Principal principal)
	{

		if (principal != null)
		{
			User loginedUser = (User) ((Authentication) principal).getPrincipal();

			String userInfo = WebUtils.toString(loginedUser);

			model.addAttribute("userInfo", userInfo);

			String message = "Hi " + principal.getName() //
					+ "<br> You do not have permission to access this !";
			model.addAttribute("message", message);

		}

		return "error403";
	}

}