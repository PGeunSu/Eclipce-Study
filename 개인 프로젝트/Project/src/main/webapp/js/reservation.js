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
	document.regForm.r_price.value = parseInt(document.regForm.price.value) + parseInt(diffday)*(20000*document.regForm.breakfast.value);
	
}
