package com.spring.sioaprilcolombia;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.sioaprilcolombia.model.Connection_DataBase;
import com.spring.sioaprilcolombia.model.UtilsScript;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		model.addAttribute("title", "SIO APRI");

		return "home";
	}

	@RequestMapping(value = "/context", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request) {

		model.addAttribute("title", "SIO APRIL- Pasarela de pago");

		// validar si la id de cotizacion no viene vacio
		if (request.getParameter("id_quotation") != null && !request.getParameter("id_quotation").equals("")) {

			// model.addAttribute("quotation",
			// request.getParameter("id_quotation"));
			UtilsScript obj_script = new UtilsScript();

			List<?> quotations = obj_script.getQoutation(Integer.parseInt(request.getParameter("id_quotation")));
			model.addAttribute("quotations", quotations);

		}
		return "context";
	}

	@RequestMapping(value = "/confirmation", method = RequestMethod.GET)
	public String pay_confirmation(Model model) {

		model.addAttribute("title", "SIO APRIL- Pasarela de pago");

		return "confirmation";
	}

}
