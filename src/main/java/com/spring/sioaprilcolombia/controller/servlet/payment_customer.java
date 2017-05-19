package com.spring.sioaprilcolombia.controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;


/**
 * Servlet implementation class payment_customer
 */
public class payment_customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment_customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("caducado");
		//Los datos del cliente
		
		HttpSession misession= (HttpSession) request.getSession();
		
		Object client = misession.getAttribute("jsonCustomer");
		Object tbl_client = misession.getAttribute("tableCustomer");
		
		JSONObject json = new JSONObject();
		json.put("name", request.getParameter("txt_inf_name"));
		json.put("lastname", request.getParameter("txt_inf_lastname"));
		json.put("genero", request.getParameter("sel_inf_gender"));
		json.put("email", request.getParameter("txt_inf_mail"));
		json.put("birth_date", request.getParameter("txt_inf_birthdate"));
		json.put("country_birth", request.getParameter("sel_inf_country_birth"));
		json.put("country_residence", request.getParameter("sel_inf_country_residence"));
		json.put("city_residence", request.getParameter("sel_inf_city_residence"));
		json.put("province", request.getParameter("sel_inf_province"));
		json.put("address", request.getParameter("txt_inf_address"));
		json.put("landline", request.getParameter("txt_inf_landline"));
		json.put("mobile_phone", request.getParameter("txt_inf_mobile_phone"));
		
		//json del cliente nuevo
		if(client == null || client.equals("")){
			request.getSession().setAttribute("jsonCustomer", json.toString());
		}else{
			request.getSession().setAttribute("jsonCustomer", client.toString()+","+json.toString());
		}
		
		//tabla de clientes
		if(tbl_client == null || tbl_client.equals("")){
			
			request.getSession().setAttribute("tableCustomer", getTblCustomer(json));
		}else{
			request.getSession().setAttribute("tableCustomer", tbl_client.toString()+" "+getTblCustomer(json));
		}
		
		response.sendRedirect("/sioaprilcolombia/context");
		
	}

	/**
	 * Metodo para mostrar los tr de la tabla cliente
	 * @param JSONObject
	 * @return String */
	public String getTblCustomer(JSONObject obj){
		
		String html = "";
		html+= "<tr>";
			html+="<td style='width:157px;' align='center'><input type='radio' name='pagador' value='"+ obj.getString("name")+"' class='paymaster' style='display: none'></td>";
			html+="<td>"+ obj.getString("name") +" (new)</td>";
			html+="<td><button type='button' class='btn btn-success btn-xs modalCuatomer' data-toggle='modal' data-target='#modalCustomer' data-type='info_beneficiary'> "
					+ "<i class='glyphicon glyphicon-plus'></i>Info</button></td>";
		html+="</tr>";
		return html;
	}

}
