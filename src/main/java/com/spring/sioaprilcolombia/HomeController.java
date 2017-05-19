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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private JdbcTemplate jdbcTemplateMysql;
	private JdbcTemplate jdbcTemplatePostgresql;
	
	public HomeController(){
		Connection_DataBase bd = new Connection_DataBase();
		this.jdbcTemplateMysql = new JdbcTemplate(bd.connectionMysql());
		this.jdbcTemplatePostgresql = new JdbcTemplate(bd.connectionPostgresql());
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		model.addAttribute("title", "SIO APRI");
		
		return "home";
	}
	
	@RequestMapping(value = "/context", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request) {
	    
		model.addAttribute("title", "SIO APRIL- Pasarela de pago");
		
		//validar si la id de cotizacion no viene vacio
		if(request.getParameter("id_quotation") != null || request.getParameter("id_quotation").equals("")){
			
			//model.addAttribute("quotation", request.getParameter("id_quotation"));
			String sql = "select nom_prod, vlr_usd, vlr_cop, tasac, tipoemi, fechaini, fechafin, nropasajeros, vlr_total "
					+ "from ws_april_ctrl_cotizaciones where id=?";
			System.out.println(sql);
			try{
				List quotations = this.jdbcTemplateMysql.queryForList(sql, Integer.parseInt(request.getParameter("id_quotation")));
				model.addAttribute("quotations", quotations);
			}catch (DataAccessException ex) {
			    System.out.println("Leyendo datos de usuarios tipo " +  Integer.parseInt(request.getParameter("id_quotation")) + "ERROR: "+ ex);
			    
			  }
		}
	    return "context";
	}
	
	@RequestMapping(value = "/confirmation", method = RequestMethod.GET)
	public String pay_confirmation(Model model) {
	    
		
		model.addAttribute("title", "SIO APRIL- Pasarela de pago");
		
		
	    return "confirmation";
	}
	
}
