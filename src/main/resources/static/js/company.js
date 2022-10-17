
/* 기업회원 탈퇴*/
$("#btn_delete").click(() => {
  Delete();
});

$("#btn_delete").click(() => {
  Delete();
});

$("#btn_join").click(() => {
  join();
});

$("#btn_update").click(() => {
  companyUpdate();
});

$("#btn_login").click(() => {
  coLogin();
});


/* 기업회원 탈퇴*/

function Delete() {

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
  let checkBoxArr = [];
  $("input:checkbox[name='job_checkbox']:checked").each(function () {
    checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
  })

  console.log(checkBoxArr);

  let data = {
    companyNumber: $("#companyNumber").val(),
    companyName: $("#companyName").val(),
    companyEmail: $("#companyEmail").val(),
    companyTel: $("#companyTel").val(),
    companyLocation: $("#companyLocation").val(),
    companyUsername: $("#companyUsername").val(),
    companyPassword: $("#companyPassword").val(),
    jobIds: checkBoxArr
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