package com.portfolio.jdportfolio;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/subpage")
public class SubpageController {
	
	private static final Logger logger = LoggerFactory.getLogger(SubpageController.class);
	
	@RequestMapping(value = "/Dong", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		System.out.println("subpage/profile");

		return "subpage/profile";
	}
	@RequestMapping(value = "/Joeh", method = RequestMethod.GET)
	public String joeh(Locale locale, Model model) {
		System.out.println("subpage/Joeh");

		return "subpage/Joeh";
	}
	@RequestMapping(value = "/resume", method = RequestMethod.POST)
	public String resume(Locale locale, Model model) {
		
		return "subpage/resume";
	}
	
	
}
