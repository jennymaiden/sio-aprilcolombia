/**
 * 
 */
package com.spring.sioaprilcolombia.model;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * @author yenny.velez
 *
 */
public class Connection_DataBase {

	/**
	 * Metodo de conexion para Mysql*/
	public DriverManagerDataSource connectionMysql(){
		
		DriverManagerDataSource dataSourceMysql = new DriverManagerDataSource();
		dataSourceMysql.setDriverClassName("com.mysql.jdbc.Driver");
		dataSourceMysql.setUrl("jdbc:mysql://157.101.91.109/april_sales_operation_system_laboratorio");
		dataSourceMysql.setUsername("yenny.velez");
		dataSourceMysql.setPassword("YeVe78963$$");
		
		return dataSourceMysql;
	}
	
	/**
	 * Metodo de conexion para postgresql*/
	public DriverManagerDataSource connectionPostgresql(){
		
		DriverManagerDataSource dataSourceMysql = new DriverManagerDataSource();
		dataSourceMysql.setDriverClassName("org.postgresql.Driver");
		dataSourceMysql.setUrl("jdbc:postgresql://localhost:5432/sio.april");
		dataSourceMysql.setUsername("postgres");
		dataSourceMysql.setPassword("123456");
		
		return dataSourceMysql;
	}
}
