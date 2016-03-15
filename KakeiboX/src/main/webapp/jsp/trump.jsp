<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="initPage();">
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/trump.js"></script>
<script type="text/javascript">
function initPage(){
	resetCards();
}
function test1(){
	var cards;
	cards = getElementsByClassName("card")
	for(i = 0; i < cards.length; i++){
		for(j = 0; j < 54; j++){
			var wkCard = choice1Card();
			if(isFoundInYamafuda(wkCard)){
				pick1CardFromYamafuda(wkCard);
				getElementById(cards[i].id).value = getCardName(wkCard);
				j = 99;
			}
		}
	}
}
</script>
<form>
<input type="button" id="b1" value="test" onclick="test1();">
<input type="text" id="card1" class="card" size="2">
<input type="text" id="card2" class="card" size="2">
<input type="text" id="card3" class="card" size="2">
<input type="text" id="card4" class="card" size="2">
<input type="text" id="card5" class="card" size="2">
<br>
<input type="button" id="b2" value="reset" onclick="resetCards();">
</form>
</body>
</html>