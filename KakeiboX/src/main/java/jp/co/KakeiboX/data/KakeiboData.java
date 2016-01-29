package jp.co.KakeiboX.data;

import java.sql.*;
import jp.co.KakeiboX.common.ConDB;

/**家計簿内容データクラス
 * 
 * @author Ton2
 *
 */

public class KakeiboData {
	
	// データ保持
	private int inputyear = 0;
	private int inputmonth = 0;
	private int inputday = 0;
	private int inputymd = 0;
	private int suitokbn = 0;
	private String suitonam = "";
	private int naiyokbn = 0;
	private String naiyonam = "";
	private String shosai = "";
	private String biko = "";
	
	// セット
	public void SetInputDate1(int year, int month, int day){
		this.inputyear = year;
		this.inputmonth = month;
		this.inputday = day;
		this.inputymd = (year * 10000) + (month * 100) + day;
	}
	public void SetInputDate2(int ymd){
		String ymdStr;
		ymdStr = String.valueOf(ymd);
		this.inputyear = Integer.parseInt(ymdStr.substring(0, 4));
		this.inputmonth = Integer.parseInt(ymdStr.substring(4, 2));
		this.inputday = Integer.parseInt(ymdStr.substring(6, 2));
		this.inputymd = ymd;
	}
	public void SetSuitoKBN(int kbn){ this.suitokbn = kbn; }
	public void SetSuitoName(String nam){ this.suitonam = nam; }
	public void SetNaiyoKBN(int kbn){ this.naiyokbn = kbn; }
	public void SetNaiyoName(String nam){ this.naiyonam = nam; }
	public void SetShosai(String sho){ this.shosai = sho; }
	public void SetBiko(String biko){ this.biko = biko; }
	
	// 出力
	public int GetInputYMD() { return this.inputymd; }
	public int GetInputYear() { return this.inputyear; };
	public int GetInputMonth() { return this.inputmonth; };
	public int GetInputDay() { return this.inputday; };
	public int GetSuitoKBN(){ return this.suitokbn; }
	public String GetSuitoName(){ return this.suitonam; }
	public int GetNaiyoKBN(){ return this.naiyokbn; }
	public String GetNaiyoName(){ return this.naiyonam; }
	public String GetShosai(){ return this.shosai; }
	public String getBiko(){ return this.biko; }
	
}