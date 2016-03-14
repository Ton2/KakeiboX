package jp.co.KakeiboX.common;

import java.io.IOException;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class GetProp {

	public Properties cfg = new Properties();

	private String SQLDriverName;
	private String DBLocation;
	private String DBName;
	private String DBUser;
	private String DBPass;

	public GetProp(){
		try{
			InputStream inpt = new FileInputStream("KakeiboX.properties");
			cfg.load(inpt);
			SQLDriverName = cfg.getProperty("SQLDriverName");
			DBLocation = cfg.getProperty("DBLocation");
			DBName = cfg.getProperty("DBName");
			DBUser = cfg.getProperty("DBUser");
			DBPass = cfg.getProperty("DBPass");
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	public String getSQLDriverName(){ return SQLDriverName; }
	public String getDBLocation(){ return DBLocation; }
	public String getDBName(){ return DBName; }
	public String getDBUser(){ return DBUser; }
	public String getDBPass(){ return DBPass; }
}