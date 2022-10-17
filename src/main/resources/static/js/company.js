
/* 기업회원 탈퇴*/
$("#btn_delete").click(() => {
  Delete();
});

$("#btn_delete").click(()=>{
  Delete();
});

$("#btn_join").click(()=>{
  join();
});

$("#btn_update").click(()=>{
  companyUpdate();
});

$("#btn_login").click(()=>{
  coLogin();
});

// 유저네임 중복 체크
$("#btnCompanyUsernameSameCheck").click(() => {
	checkUsername();
});


/* 기업회원 탈퇴*/

function Delete(){
  
  console.log("삭제");
  let companyId = $("#companyId").val();

  $.ajax("/co/companyDelete/" + companyId, {
    type: "DELETE",
    dataType: "json"

  }).done((res) => {
    if (res.code == 1) {
      alert("기업회원탈퇴 완료");
      console.log(res);
      location.href = "/";
    } else {
      alert("회원탈퇴에 실패하였습니다");
    }
  });
}

/* 기업정보 수정*/

function companyUpdate() {

  let companyId = $("#companyId").val();

  let data = {
    companyNumber: $("#companyNumber").val(),
    companyName: $("#companyName").val(),
    companyEmail: $("#companyEmail").val(),
    companyTel: $("#companyTel").val(),
    companyLocation: $("#companyLocation").val(),
    companyUsername: $("#companyUsername").val(),
    companyPassword: $("#companyPassword").val()
  };
  console.log("업데이트");

  $.ajax("/co/companyUpdate/" + companyId, {
    type: "PUT",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json; charset=utf-8"
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("기업정보수정 완료");
      console.log(res);
      location.reload;
    } else {
      alert("업데이트에 실패하였습니다");
    }
  });
}

//기업회원 로그인
function coLogin() {

  let data = {
    companyUsername: $("#coUsername").val(),
    companyPassword: $("#coPassword").val(),
    remember: $("#remember").prop("checked")
  }
  $.ajax("/co/login", {
    type: "POST",
    dataType: "json", //응답데이터 타입명
    data: JSON.stringify(data), // 요청데이터 타입명
    headers: {
      "Content-Type": "application/json; charset=utf-8", // spring에게 알려주는 것 - json으로 보내겠다. mime type - 필수
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("로그인 성공");
      location.href = "/co";
    } else {
      alert("로그인 실패, 아이디 패스워드를 확인해주세요");
    }
  });
}

// 기업회원가입
function join() {

  if (isCompanyUsernameSameCheck == false) {
		alert("아이디 중복 체크를 진행해주세요");
		return;
	}

  if (companyPasswordSameCheck() == true) {
		alert("비밀번호가 일치하지 않습니다.")
		return;
	}

  // if(emailCheck() == false){
  //   alert("이메일 형식이 맞지 않습니다.")
  //   return;
  // }
  



  let data = {
    companyNumber: $("#companyNumber").val(),
    companyName: $("#companyName").val(),
    companyEmail: $("#companyEmail").val(),
    companyTel: $("#companyTel").val(),
    companyLocation: $("#companyLocation").val(),
    companyUsername: $("#companyUsername").val(),
    companyPassword: $("#companyPassword").val(),
    job_Id: $("input:checkbox[value='frontend']").is(":checked")
  };

  $.ajax("/co/join", {
    type: "POST",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json"
    }
  }).done((res) => {
    if (res.code == 1) {
      alert("회원가입 완료");
      console.log(res);
      location.href = "/co";
    } else {
      alert(res.msg);
    }
  });
}

let isCompanyUsernameSameCheck = false;

function checkUsername() {
	
	let companyUsername = $("#companyUsername").val();
  
	$.ajax(`/company/usernameSameCheck?companyUsername=${companyUsername}`, {
		type: "GET",
		dataType: "json",
		async: true
	}).done((res) => { 	
		if (res.code == 1) {	
			if (res.data == false) {
				alert("아이디가 중복되지 않았습니다.")
				isCompanyUsernameSameCheck = true;
			} else {
				alert("아이디가 중복되었어요. 다른 아이디를 사용해주세요")
				isCompanyUsernameSameCheck = false;
				$("#companyUsername").val(""); 
			}
		}
	});
}


function companyPasswordSameCheck() {
	let companyPassword = $("#companyPassword").val();
	let companyPasswordSame = $("#companyPasswordSame").val();
	if (companyPassword != companyPasswordSame) {
		companyPassword.value = "";
		companyPasswordSame.value = "";
		return true;
	} else{
		return false;
	}
}

// function emailCheck() {
// 	let email = $("#email").val();
// 	let form = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

// 	if (form.test(email)) {
// 		return true;
// 	} else {
// 		return false;
// 	}
// }
