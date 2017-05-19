/**
 * 
 */
package com.spring.sioaprilcolombia.model;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * @author yenny.velez
 *
 */
public class UtilsScript {

	private JdbcTemplate jdbcMysqlSalud;
	private JdbcTemplate jdbcMysqlComercial;
	private JdbcTemplate jdbcTemplatePostgresql;

	public UtilsScript() {
		
		Connection_DataBase bd = new Connection_DataBase();
		this.jdbcMysqlSalud = new JdbcTemplate(bd.connectionMysql("157.101.91.109", "april_sales_operation_system_laboratorio"));
		this.jdbcMysqlComercial = new JdbcTemplate(bd.connectionMysql("157.101.91.109", "april_sales_operation_system_laboratorio"));
		this.jdbcTemplatePostgresql = new JdbcTemplate(bd.connectionPostgresql());
	}
	
	/**
	 * Datos cotizacion*/
	public List<?> getQoutation(int id_quotation){
		
		List<?> quotations= null;
		
		String sql = "select nom_prod, vlr_usd, vlr_cop, tasac, tipoemi, fechaini, fechafin, nropasajeros, vlr_total "
				+ "from ws_april_ctrl_cotizaciones where id=?";
		//System.out.println(sql);
		try {
			quotations = this.jdbcMysqlComercial.queryForList(sql,id_quotation);
	
		} catch (DataAccessException ex) {
			System.out.println("Leyendo datos de usuarios tipo "
					+ id_quotation + "ERROR: " + ex);

		}
		return quotations;
	}
	
}
