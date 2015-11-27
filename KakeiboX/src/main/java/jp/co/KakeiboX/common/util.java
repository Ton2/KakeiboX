package jp.co.KakeiboX.common;

import java.util.*;
import java.text.*;

public class util {
	
	//項目の定義
	public Date dtoday = new Date();
	private static String year;
	private String month;
	private String day;
	private String ymd;
	
	//最初は年
	public SimpleDateFormat today = new SimpleDateFormat("yyyy");
	

	public util(){
		//年を取得
		year = today.format(dtoday);
		
		//月を取得
		today.applyPattern("MM");
		month = today.format(dtoday);
		
		//日を取得
		today.applyPattern("dd");
		day = today.format(dtoday);
		
		//年月日を作成
		ymd = year + month+ day;
	}
	
	private static String todayYYYY(){
		return null;
		}
	private static String todayMM(){
		return null;
		}
	private static String todayDD(){
		return null;
		}
	private static String todayYYYYMMDD(){
		return null;
		}
	public static String getYYYY(){
		String todayYYYY;
		todayYYYY = "";
		return todayYYYY();
		}
	
	public static String getMM(){
		String todayMM;
		return todayMM();
		}
	
	public static String getDD(){
		String todayDD;
		return todayDD();
		}

	public static String getYYYYMMDD(){
		String todayYYYYMMDD;
		return todayYYYYMMDD();
	}
		
		
	}

