// 共通変数
var trumps = {0:"s1",1:"s2",2:"s3",3:"s4",4:"s5",5:"s6",6:"s7",7:"s8",8:"s9",9:"s10",10:"s11",11:"s12",12:"s13",13:"c1",14:"c2",15:"c3",16:"c4",17:"c5",18:"c6",19:"c7",20:"c8",21:"c9",22:"c10",23:"c11",24:"c12",25:"c13",26:"d1",27:"d2",28:"d3",29:"d4",30:"d5",31:"d6",32:"d7",33:"d8",34:"d9",35:"d10",36:"d11",37:"d12",38:"d13",39:"h1",40:"h2",41:"h3",42:"h4",43:"h5",44:"h6",45:"h7",46:"h8",47:"h9",48:"h10",49:"h11",50:"h12",51:"h13",52:"j1",53:"j2"};
var yamafuda = [];
/**
 * getRandom
 * 1～（引数）までの乱数を生成する
 * @param num
 * @returns out
 */
function getRandom(num){
	var out = Math.floor(Math.random() * num);
	return out;
}
/**
 * resetCards
 * 山札をリセットする
 */
function resetCards(){
	for(looper = 0; looper < 54; looper++){
		this.yamafuda[looper] = 1;
	}
}
/**
 * choice1Card
 * カードを１枚選ぶ
 * @returns カードID
 */
function choice1Card(){
	var out = getRandom(54);
	return out;
}
/**
 * pick1CardFromYamafuda
 * 山札から１枚引く
 * @param id
 */
function pick1CardFromYamafuda(id){
	this.yamafuda[id] = 0;
}
/**
 * getCardName
 * カードIDからカード名を取得する
 * @param id
 * @returns
 */
function getCardName(id){
	return this.trumps[id];
}
/**
 * isFoundInYamafuda
 * カードが山札にあるかをチェックする
 * @param カードID
 * @returns 山札にカードがある場合true/ない場合false
 */
function isFoundInYamafuda(id){
	if(this.yamafuda[id] == 1){
		return true;
	} else {
		return false;
	}
}
/**
 * getDice
 * サイコロを振る
 * @returns
 */
function getDice(){
	var out = getRandom(6) + 1;
	return out;
}