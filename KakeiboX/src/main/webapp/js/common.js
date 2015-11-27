
//Enterキー押下時にフォーカスをあてる項目を指定
//form名称は「form」にしておくこと
//引数１ オブジェクトID
function setCursorOnEnter(objName){
	if (event.keyCode == 13){
		document.form.elements[objName].focus();
	}
}

//Numericチェック
function chkNumeric(objId,objName){
	if(document.form.elements[objId].value.match(/[^0-9]+/)){
		alert(objName + 'に数字以外が入力されています。');
		setCursorOnEnter(objId);
	}
}