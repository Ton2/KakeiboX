package jp.co.KakeiboX.common;

import java.util.*;
import java.text.*;

public class util {
	
	//���ڂ̒�`
	public Date dtoday = new Date();
	private static String year;
	private String month;
	private String day;
	private String ymd;
	
	//�ŏ��͔N
	public SimpleDateFormat today = new SimpleDateFormat("yyyy");
	

	public util(){
		//�N���擾
		year = today.format(dtoday);
		
		//�����擾
		today.applyPattern("MM");
		month = today.format(dtoday);
		
		//�����擾
		today.applyPattern("dd");
		day = today.format(dtoday);
		
		//�N�������쐬
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

