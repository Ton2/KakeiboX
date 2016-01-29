package jp.co.KakeiboX.common;

import java.sql.Connection;
import java.sql.Driver;
import java.util.Properties;

public class ConDB {
	
	//プロパティの取得
	GetProp prop = new GetProp();
	
	public static Connection ConnectDB() throws Exception {
			GetProp prop = new GetProp();
			Driver d = (Driver) Class.forName(prop.SQLDriverName).newInstance();
			String connUrl = prop.DBLocation + "database=" + prop.DBName +
					"integratedSecurity=false;user=" + prop.DBUser + "password=" + prop.DBPass;
			Connection con = d.connect(connUrl, new Properties());
			return con;
			}
	}