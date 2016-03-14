package jp.co.KakeiboX.common;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class ConDB {

	//プロパティの取得
	GetProp prop = new GetProp();

	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;

	public Connection ConnectDB() throws Exception {
		GetProp prop = new GetProp();
		Driver d = (Driver) Class.forName(prop.getSQLDriverName()).newInstance();
		String connUrl = prop.getDBLocation() + "database=" + prop.getDBName() +
			"integratedSecurity=false;user=" + prop.getDBUser() + "password=" + prop.getDBPass();
		this.con = d.connect(connUrl, new Properties());
		return this.con;
		}

	public ResultSet resultSet(){
		return this.rs;
	}

	public PreparedStatement preparedStatement(){
		return this.stmt;
	}

	}