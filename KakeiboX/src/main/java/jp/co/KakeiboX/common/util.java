package jp.co.KakeiboX.common;

import java.util.*;
import java.text.*;

public class util {
	
	//���ڂ̒�`
	public String todayYYYY;
	public String todayMM;
	public String todayDD;
	public String todayYYYYMMDD;
	public Date dtoday = new Date();
	
	//�ŏ��͔N
	public SimpleDateFormat today = new SimpleDateFormat("yyyy");
	
	public util(){
		//�N���擾
		todayYYYY = today.format(dtoday);
		
		//�����擾
		today.applyPattern("MM");
		todayMM = today.format(dtoday);
		
		//�����擾
		today.applyPattern("dd");
		todayDD = today.format(dtoday);
		
		//�N�������쐬
		todayYYYYMMDD = todayYYYY + todayMM + todayDD;
	}
}

