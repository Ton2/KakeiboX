package jp.co.KakeiboX.common;

import java.io.File;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class GetProp {
	
	public Properties cfg = new Properties();
	
	public String SQLDriverName;
	public String DBLocation;
	public String DBName;
	public String DBUser;
	public String DBPass;
	
	public GetProp(){
		try{
			//System.out.println(new File(".").getAbsolutePath()); 
			//InputStream inpt = new FileInputStream(new File("KakeiboX.properties"));
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
}