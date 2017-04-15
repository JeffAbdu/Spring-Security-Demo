package org.java.springsecurity;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		System.out.println(request.getRemoteAddr());
		return "home";
	}

	@RequestMapping(value = "/admin/privatePage", method = RequestMethod.GET)
	public String privatePage() {
		return "privatePage";
	}
	
		
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login(Model model) {
			
			System.out.println("Login handler running");
			String randomMessageOfTheDay = "Keep your head up!";
			model.addAttribute("randomMessageOfTheDay", randomMessageOfTheDay);
			return "login";
		}

		
		@RequestMapping(value = "/loginFail", method = RequestMethod.GET)
		public String loginFail(Model model) {
			
			System.out.println("Login fail handler running");
			String errorMessage = "Oops, there was a problem loggin in.";
			model.addAttribute("errorMessage", errorMessage);
			return "login";
		}

}
