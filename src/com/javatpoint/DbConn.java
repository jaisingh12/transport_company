package com.javatpoint;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn {
	
	public static Connection getConnection() throws Exception
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@(DESCRIPTION =  (ADDRESS = (PROTOCOL = TCP)(HOST = IBM1046.daytonoh.ncr.com)(PORT = 1521)) (CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME=CLTE))) ",
				"socom_custom", "castor");
		return con;
	}

}
