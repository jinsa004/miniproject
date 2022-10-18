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

  console.log(data);

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
    } else {
      alert(res.msg);
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
  let data = {
    employeeUsername: $("#employeeUsername").val(),
    employeePassword: $("#employeePassword").val(),
    employeeSex: $("#employeeSex").val(),
    employeeEmail: $("#employeeEmail").val(),
    employeeName: $("#employeeName").val(),
    employeeBirth: $("#employeeBirth").val(),
    employeeTel: $("#employeeTel").val(),
    employeeLocation: $(".employeeLocation").val(),

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
    remember: $("#remember").prop("checked")
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