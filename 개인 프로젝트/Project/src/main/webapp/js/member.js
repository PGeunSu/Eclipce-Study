function checkForm() {
	if (document.memberInfoForm.userID.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (document.memberInfoForm.userEmail.value == "") {
		alert("이메일을 입력하세요.");
		return false;
	}
	

	if (document.memberInfoForm.userPassword.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}

	if (document.memberInfoForm.userPassword.value != document.memberInfoForm.UserPassword_confirm.value) {
		alert("비밀번호를 동일하게 입력하세요.");
		return false;
	}
	
	if (document.memberInfoForm.userEnFirstName.value == "") {
		alert("영문 성을 입력하세요.");
		return false;
	}
	if (document.memberInfoForm.userEnLastName.value == "") {
		alert("영문 이름을 입력하세요.");
		return false;
	}
	
	if (document.memberInfoForm.userKoName.value == "") {
		alert("한글이름을 입력하세요.");
		return false;
	}
	if (document.memberInfoForm.userBirth.value == "") {
		alert("생년월일을 입력하세요.");
		return false;
	}
	if (document.memberInfoForm.userNumber.value == "") {
		alert("전화번호를 입력하세요.");
		return false;
	}
	
	if(document.memberInfoForm.idCheckResult.value == "0"){
		alert("아이디 중복확인을 해주세요");
		return false;
	}
	
	if(document.memberInfoForm.emailCheckResult.value == "0"){
		alert("이메일 중복확인을 해주세요");
		return false;
	}	
}


function DuplicateId(frm){ //폼에서 액션 경로를 여러개 사용하기 위한 함수
	frm.action = "idCheck.jsp"; //두번째로 보낼 경로
	frm.submit();
	memberInfoForm.idCheckResult.value = "1" //사용가능한 아이디 일시 history.back() 뒤로가기 기능을 통해 value 값 유지
	return false;
}

function DuplicateEmail(frm){ 
	frm.action = "emailCheck.jsp"; 
	frm.submit();
	memberInfoForm.emailCheckResult.value = "1"
	return false;
}

function resetAction(frm){
	frm.action = "processAddMember.jsp";
}