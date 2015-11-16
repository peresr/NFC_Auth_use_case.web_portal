package ulusofona.tfc.web_portal.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ulusofona.tfc.web_portal.repository.UserRepository;

/**
 * Created by Ricardo Peres on 14/11/15.
 */
@Controller
public class HomeController {

	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView test() {
		return new ModelAndView("home");
	}
}