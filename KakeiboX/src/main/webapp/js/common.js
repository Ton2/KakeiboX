//******************************************************************
//getElementById
//引数：id
//戻り値：element
//*******************************
function getElementById(id){
	var elm = document.getElementById(id);
	return elm;
}
function getElementsByClassName(className){
	var elms = document.getElementsByClassName(className);
	return elms;
}
//******************************************************************
//Function setCursorOnEnter
//
//引数：objId
//*******************************
function setCursorOnEnter(objId){
	if (event.keyCode == 13){
		setFocus(objId);
		return;
	}
}
//******************************************************************
//Function setFocus
//
//引数：objId
//*******************************
function setFocus(objId){
	getElementById(objId).focus;
	return;
}
//******************************************************************
//Function chkNumeric
//引数1：objId
//引数2：objName
//*******************************
function chkNumeric(objId,objName){
	if(getElementById(objId).value.match(/[^0-9]+/)){
		alert(objName + 'には数字のみを入力してください。');
		setFocus(objId);
		return false;
	}
	return true;
}
//******************************************************************
//Function chkRequiredText
//引数1：objId
//引数2：objName
//戻り値　OK→True
//　　　　　NG→False
//*******************************
function chkRequiredText(objId,objName){
	if(getElementById(objId).value == ""){
		alert(objName + 'は必須項目です。');
		setFocus(objId);
		return false;
	} 
	return true;
}
//******************************************************************