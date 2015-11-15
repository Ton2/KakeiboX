package jp.co.KakeiboX.common;

import java.util.*;
import java.text.*;

public class util {
	
	//項目の定義
	public String todayYYYY;
	public String todayMM;
	public String todayDD;
	public String todayYYYYMMDD;
	public Date dtoday = new Date();
	
	//最初は年
	public SimpleDateFormat today = new SimpleDateFormat("yyyy");
	
	public util(){
		//年を取得
		todayYYYY = today.format(dtoday);
		
		//月を取得
		today.applyPattern("MM");
		todayMM = today.format(dtoday);
		
		//日を取得
		today.applyPattern("dd");
		todayDD = today.format(dtoday);
		
		//年月日を作成
		todayYYYYMMDD = todayYYYY + todayMM + todayDD;
	}
}

