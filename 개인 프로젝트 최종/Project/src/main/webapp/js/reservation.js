function reservationCheck(){
	if (document.regForm.r_checkin.value.length == 0) {
		alert("체크인 날짜를 선택해주세요.");
		regForm.r_checkin.focus();
		return false;
	}
	
	if (document.regForm.r_checkout.value.length == 0) {
		alert("체크아웃 날짜를 선택해주세요.");
		regForm.r_checkout.focus();
		return false;
	}
	
	if (document.regForm.r_adults.value < 1) {
		alert("성인 인원수를 선택해주세요");
		regForm.r_adults.focus();
		return false;
	} 
	
	if (document.regForm.r_checkout.value <= document.regForm.r_checkin.value) {
		alert("체크아웃 날짜를 다시 선택해주세요");
		return false;
	}
	
	return true;
}
function breakfastCheck(diffday){
	document.regForm.r_price.value = parseInt(document.regForm.price.value) + parseInt(diffday)*(50000*document.regForm.breakfast.value);
	
}
function cancelCheck(){
	var cancel = document.getElementsByName("reserve");
	var checkedNum = 0;
	
	for(var i=0;i<cancel.length;i++){
		if(cancel[i].checked==true){
			checkedNum += 1;
		}
	}
	
	if(checkedNum == 0){
		alert("최소 1개 이상의 내역을 선택하여 주세요");
		return false;
	}
	return true;
}
