package jp.co.KakeiboX.common;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class ConDB {
	
	//�v���p�e�B�̎擾
	GetProp prop = new GetProp();
	
	public String GetSSTKbn(int KBN)
	{
		String strSST = "";
		try{
			Driver d = (Driver) Class.forName(prop.SQLDriverName).newInstance();
			String connUrl = prop.DBLocation + "database=" + prop.DBName +
					"integratedSecurity=false;user=" + prop.DBUser + "password=" + prop.DBPass;
			Connection con = d.connect(connUrl, new Properties());
			String SQL = "SELECT * FROM M_�x�o�敪 where �x�o�敪�R�[�h = " + KBN;
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL); 
			rs.next();
			strSST = rs.getString("�x�o�敪");
			rs.close();
			stmt.close();
			
			} 
				catch (Exception e)
		{
					e.printStackTrace(); 
	}
		return strSST;
	}
}