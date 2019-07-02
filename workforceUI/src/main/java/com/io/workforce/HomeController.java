package com.io.workforce;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value={"/","/{id}"})
	public String home(@RequestParam(required = false) Integer id,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("teamId", id );
		System.out.println("Plan ID :: "+id);
		
		return "home";
	}
	
	
	  @RequestMapping(value = "/home", method = RequestMethod.GET) 
	  public String homeplan(@RequestParam(required = false) Integer id,Locale locale, Model model) {
		  logger.info("Welcome home! The client locale is {}.", locale);
		  
		  Date date = new Date(); DateFormat dateFormat =
		  DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		  
		  String formattedDate = dateFormat.format(date);
		  model.addAttribute("serverTime", formattedDate );
		  model.addAttribute("teamId", id );
		  System.out.println("Plan ID Home :: "+id);
		  
		  return "home"; 
	  }
	 
	
	@RequestMapping(value = "/available", method = RequestMethod.GET)
	public String AvailabilityMatrix(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		return "avl_matrix";
	}
	
	/*
	 * @RequestMapping(value = "/shifts/", method = RequestMethod.GET) public String
	 * shifts(@RequestParam("id")int id, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", id);
	 * System.out.println("Team id:: " + id);
	 * 
	 * return "shifts"; }
	 */
	

		@RequestMapping("/shifts")
		public String method1(@RequestParam(required = false) Integer id,Model model){
			
			System.out.println("Shifts id :: "+id);
			model.addAttribute("teamId", id );
			return "shifts";
			
		}

	
	
	/*
	 * @RequestMapping(value = "/shifts/{team_id}", method = RequestMethod.GET)
	 * public String shiftsId(@PathVariable("team_id")int id, Model model) {
	 * logger.info("Welcome home! The client locale is {}.", id);
	 * System.out.println("Team id:: " + id);
	 * 
	 * return "shifts"; }
	 */
	 
	
	@RequestMapping(value = "/slots", method = RequestMethod.GET)
	public String slots(@RequestParam(required = false) Integer id,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		System.out.println("Slot id :: "+id);
		model.addAttribute("teamId", id );
		
		return "slots";
	}
	
	@RequestMapping(value = "/skillls", method = RequestMethod.GET)
	public String skillls(@RequestParam(required = false) Integer id,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		System.out.println("Skill id :: "+id);
		model.addAttribute("teamId", id );
		
		return "skillls";
	}
	
	@RequestMapping("/roaster")
	public String roaster(@RequestParam(required = false) Integer id,Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		System.out.println("Roaster id :: "+id);
		model.addAttribute("teamId", id );
		
		return "roaster";
	}
	
	@RequestMapping(value = "/constraints", method = RequestMethod.GET)
	public String constraints(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "constraints";
	}
	
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String testplan(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "schedule";
	}
	
}
