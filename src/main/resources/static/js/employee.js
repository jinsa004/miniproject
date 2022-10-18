$("#btn_join").click(() => {
  join();
});

$("#btnEmployeeUpdate").click(() => {
  employeeUpdate();
});

$("#btnEmployeeDelete").click(() => {
  employeeDelete();
});

$("#btnEmployeeDelete").click(() => {
  employeeDelete();
});

$("#btn_login").click(() => {
  login();
});

$("#btn_recruit").click(() => {
  applicate();
});


//회원가입
function join() {

  let checkBoxArr = [];
  $("input:checkbox[name='job_checkbox']:checked").each(function () {
    checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
  })

  console.log(checkBoxArr);

  let data = {
    employeeUsername: $("#employeeUsername").val(),
    employeePassword: $("#employeePassword").val(),
    employeeSex: $("#employeeSex").val(),
    employeeEmail: $("#employeeEmail").val(),
    employeeName: $("#employeeName").val(),
    employeeBirth: $("#employeeBirth").val(),
    employeeTel: $("#employeeTel").val(),
    employeeLocation: $(".employeeLocation").val(),
    jobIds: checkBoxArr
  };

  $.ajax("/emp/join", {
    type: "POST",
    dataType: "json", //응답데이터 타입명
    data: JSON.stringify(data), // 요청데이터 타입명
    headers: {
      "Content-Type": "application/json; charset=utf-8" // spring에게 알려주는 것 - json으로 보내겠다. mime type - 필수
    }
  }).done((res) => {
    if (res.code == 1) {
      alert("회원가입 성공");
      location.href = "/";
    } else if (isUsernameSameCheck == false) {
      alert("아이디 중복 체크를 진행해주세요.");
      return;
      //alert(res.msg);
    } else if (ischeckPassword == false) {
      alert("비밀번호 확인 체크를 진행해주세요.");
      return;
    } else if (ischeckEmail == false) {
      alert("이메일 확인 체크를 진행해주세요.");
      return;
    }
  });
  //람다식을 사용하면 코드가 간결해지고, 스코프가 명확해진다.
}
/**개인회원 수정 */

// function jobJoin() {
//   let checkBoxArr = [];
//   $("input:checkbox[name='job_checkbox']:checked").each(function () {
//     checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
//   })

//   $.ajax("/emp/join", {
//     type: "POST",
//     dataType: "json", //응답데이터 타입명
//     data: {
//       checkBoxArr: checkBoxArr
//     },
//     async: false
//   }).done((res) => {
//     if (res.code == 1) {
//       alert("관심분야 등록 성공");
//       location.href = "/";
//     } else {
//       alert(res.msg);
//     }
//   });
// }

function employeeUpdate() {
  let employeeId = $("#employeeId").val();

  let checkBoxArr = [];
  $("input:checkbox[name='job_checkbox']:checked").each(function () {
    checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
  });

  let data = {
    employeeUsername: $("#employeeUsername").val(),
    employeePassword: $("#employeePassword").val(),
    employeeSex: $("#employeeSex").val(),
    employeeEmail: $("#employeeEmail").val(),
    employeeName: $("#employeeName").val(),
    employeeBirth: $("#employeeBirth").val(),
    employeeTel: $("#employeeTel").val(),
    employeeLocation: $(".employeeLocation").val(),
    jobIds: checkBoxArr
  };

  console.log(data);

  $.ajax("/emp/employeeInfo/" + employeeId, {
    type: "PUT",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      console.log(res.msg);
      alert("회원정보 수정 완료");
      location.reload();
    } else {
      alert("업데이트에 실패했습니다.");
      console.log(res.msg);
    }
  });
}

/**개인회원 탈퇴 */

function employeeDelete() {

  let employeeId = $("#employeeId").val();

  $.ajax("/emp/employeeInfo/" + employeeId, {
    type: "DELETE",
    dataType: "json"
  }).done((res) => {
    if (res.code == 1) {
      console.log(res.msg);
      alert("회원탈퇴 완료");
      location.href = "/";
    } else {
      alert("회원탈퇴에 실패했습니다.");
      console.log(res.msg);
    }
  });
}

//개인회원 로그인
function login() {
  let data = {
    employeeUsername: $("#username").val(),
    employeePassword: $("#password").val(),
    remember: $("#remember").prop("checked"),
  };

  $.ajax("/emp/login", {
    type: "POST",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json; charset=utf-8", // spring에게 알려주는 것 - json으로 보내겠다. mime type - 필수
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("로그인 성공");
      location.href = "/emp/main";
    } else {
      alert("로그인 실패, 아이디 패스워드를 확인해주세요");
    }
  });
}

// 공고지원
function applicate() {
  let data = {
    resumeId: $('input[id=resume_select]:checked').val(),
    noticeId: $("#noticeId").val()
  };

  console.log(data.resumeId);
  console.log(data.noticeId);

  $.ajax("/emp/resume/applicate", {
    type: "POST",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("공고 지원 완료");
      location.reload();
    } else {
      alert("지원에 실패하였습니다");
    }
  });
}
//유저네임 중복 체크
function checkUsername() {
  // 0. 통신 오브젝트 생성 (Get 요청은 body가 없다.)

  // 1. 사용자가 적은 username값을 가져오기
  let pattern = /\s/g;
  let korRule = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
  let employeeUsername = $("#employeeUsername").val();

  // 2. Ajax 통신
  $.ajax(`/emp/usernameSameCheck?employeeUsername=${employeeUsername}`, {
    type: "GET",
    dataType: "json",
    async: true,
  }).done((res) => {
    if (res.code == 1) {
      //alert("통신성공");
      if (res.data == true) {
        alert("아이디가 중복되었어요. 다른 아이디를 사용해주세요");
        $("#employeeUsername").val("");
        isUsernameSameCheck = false;
      } else if (korRule.test(employeeUsername)) {
        alert("아이디에서 한글이 발견되었습니다. 제외해주세요.");
        isUsernameSameCheck = false;
      } else if (pattern.test(employeeUsername)) {
        alert("아이디에서 공백이 발견되었습니다. 제외해주세요.");
        isUsernameSameCheck = false;
      } else if (employeeUsername == "") {
        alert("아이디를 입력해 주세요.");
      } else {
        alert("아이디 중복체크 완료");
        isUsernameSameCheck = true;
      }
    }
  });
}

//비밀번호 확인
function checkPassword() {
  // 0. 통신 오브젝트 생성 (Get 요청은 body가 없다.)

  // 1. 사용자가 적은 username값을 가져오기
  let employeePassword = $("#employeePassword").val();
  let employeepasswordRepeat = $("#employeepasswordRepeat").val();

  // 2. Ajax 통신
  $.ajax(`/emp/checkPassword?employeepasswordRepeat=${employeePassword}`, {
    type: "GET",
    dataType: "json",
    async: true,
  }).done((res) => {
    if (res.code == 1) {
      //alert("통신성공");
      if (employeepasswordRepeat != employeePassword) {
        alert("패스워드가 동일하지 않습니다.");
        ischeckPassword = false;
        $("#employeepasswordRepeat").val("");
        return;
      } else if (employeePassword == "") {
        alert("패스워드를 입력해 주세요.");
      } else {
        alert("패스워드가 동일합니다.");
        ischeckPassword = true;
      }
    }
  });
}

//이메일 확인
function checkEmail() {
  // 0. 통신 오브젝트 생성 (Get 요청은 body가 없다.)

  // 1. 사용자가 적은 username값을 가져오기
  let pattern = /\s/g;
  let checkEmail = /[a-zA-z0-9]+@[a-zA-z]+[.]+[a-zA-z.]+/;

  let employeeEmail = $("#employeeEmail").val();

  // 2. Ajax 통신
  $.ajax(`/emp/checkEmail?employeeEmail=${employeeEmail}`, {
    type: "GET",
    dataType: "json",
    async: true,
  }).done((res) => {
    if (res.code == 1) {
      //alert("통신성공");
      if (!checkEmail.test(employeeEmail)) {
        alert("이메일형식이 올바르지 않습니다.");
        $("#employeeEmail").val("");
        ischeckEmail = false;
      } else if (pattern.test(employeeEmail)) {
        alert("이메일에서 공백이 발견되었습니다. 제외해주세요.");
        $("#employeeEmail").val("");
        ischeckEmail = false;
      } else if (res.data == true) {
        alert("이메일이 중복되었습니다.");
        $("#employeeEmail").val("");
        ischeckEmail = false;
      } else {
        alert("이메일이 확인되었습니다.");
        ischeckEmail = true;
        return;
      }
    }
  });
}
