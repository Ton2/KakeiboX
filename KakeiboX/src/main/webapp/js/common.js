//******************************************************************
//getElementById
//�����Fid
//�߂�l�Felement
//*******************************
function getElementById(id){
	var element;
	element = document.getElementById(id);
	return element;
}
//******************************************************************
//Function setCursorOnEnter
//
//�����FobjId
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
//�����FobjId
//*******************************
function setFocus(objId){
	getElementById(objId).focus;
	return;
}
//******************************************************************
//Function chkNumeric
//����1�FobjId
//����2�FobjName
//*******************************
function chkNumeric(objId,objName){
	if(getElementById(objId).value.match(/[^0-9]+/)){
		alert(objName + '�ɂ͐����݂̂���͂��Ă��������B');
		setFocus(objId);
		return false;
	}
	return true;
}
//******************************************************************
//Function chkRequiredText
//����1�FobjId
//����2�FobjName
//�߂�l�@OK��True
//�@�@�@�@�@NG��False
//*******************************
function chkRequiredText(objId,objName){
	if(getElementById(objId).value == ""){
		alert(objName + '�͕K�{���ڂł��B');
		setFocus(objId);
		return false;
	} 
	return true;
}
//******************************************************************