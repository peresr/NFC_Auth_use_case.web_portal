package ulusofona.tfc.web_portal.controller;

import java.math.BigDecimal;
import java.util.Date;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ulusofona.tfc.web_portal.model.User;
import ulusofona.tfc.web_portal.repository.UserRepository;

/**
 * Created by Ricardo Peres on 14/11/15.
 */
@Controller
public class HomeController {

	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome() {
		return "login";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String register(@PathVariable String email, @PathVariable String password, Model model) {
		model.addAttribute(userRepository.insert(new User()));
		return "";
	}
}