$("ul.tabs li").click(function () {
  var tab_id = $(this).attr("data-tab");
  $("ul.tabs li").removeClass("on");
  $(".tab-content").removeClass("on");
  $(".tab-content").hide();
  $(this).addClass("on");

  $("#" + tab_id).addClass("on");
  $("#" + tab_id).show();
});


$("#btnDelete").click(() => {
  DeletestadiumList();
});

function DeletestadiumList() {
  let chkArray = new Array();

  $("input[name='checkbox']:checked").each(function () {
    let item = $(this).val();
    chkArray.push(item);
  });

  if (chkArray.length < 1) {
    alert("값을 선택해주시기 바랍니다.");
    return;
  }
  deleteStadium(chkArray);
}

function deleteStadium(id) {
  $.ajax("/api/login", {
    type: "DELETE",
    dataType: "json",
    data: { deletelist: id },
    Headers: {
      "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      alert(res.msg);
      location.href = "/";
    }
  });
}

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
      location.href = "/co/mainCompany";
    } else {
      alert("로그인 실패, 아이디 패스워드를 확인해주세요");
    }
  });

}
function popOpen() {
  let modalPop = $(".modal_login_wrap");
  let modalBg = $(".modal_login_bg");

  $(modalPop).show();
  $(modalBg).show();
}
function popClose() {
  let modalPop = $(".modal_login_wrap");
  let modalBg = $(".modal_login_bg");

  $(modalPop).hide();
  $(modalBg).hide();
}

function popOpen2() {
  let modalPop = $(".modal_join_wrap");
  let modalBg = $(".modal_join_bg");

  $(modalPop).show();
  $(modalBg).show();
}
function popClose2() {
  let modalPop = $(".modal_join_wrap");
  let modalBg = $(".modal_join_bg");

  $(modalPop).hide();
  $(modalBg).hide();
}

/* 기업서비스 */
function popOpenCompany() {
  let modalPop = $(".modal_login_wrap");
  let modalBg = $(".modal_login_bg");

  $(modalPop).show();
  $(modalBg).show();
}
function popCloseCompany() {
  let modalPop = $(".modal_login_wrap");
  let modalBg = $(".modal_login_bg");

  $(modalPop).hide();
  $(modalBg).hide();
}

function popOpenCompany2() {
  let modalPop = $(".modal_join_wrap");
  let modalBg = $(".modal_join_bg");

  $(modalPop).show();
  $(modalBg).show();
}
function popCloseCompany2() {
  let modalPop = $(".modal_join_wrap");
  let modalBg = $(".modal_join_bg");

  $(modalPop).hide();
  $(modalBg).hide();
}

function popOpenRecruit() {
  let modalPop = $(".modal_select_wrap");
  let modalBg = $(".modal_select_bg");

  $(modalPop).show();
  $(modalBg).show();
}
function popCloseRecruit() {
  let modalPop = $(".modal_select_wrap");
  let modalBg = $(".modal_select_bg");

  $(modalPop).hide();
  $(modalBg).hide();
}



/* 기업 회원가입*/
$("#btn_join").click(() => {
  join();
});

function join() {
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
  console.log(data);

  $.ajax("/co/Join", {
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
      location.href = "/";
    } else {
      alert(res.msg);
    }
  });
}

// ===================== 도로명주소 api ==================
function sample6_execDaumPostcode() {
  new daum.Postcode({
    oncomplete: function (data) {
      var addr = "";
      var extraAddr = "";
      if (data.userSelectedType === "R") {
        addr = data.roadAddress;
      } else {
        addr = data.jibunAddress;
      }
      if (data.userSelectedType === "R") {
        if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
          extraAddr += data.bname;
        }
        if (data.buildingName !== "" && data.apartment === "Y") {
          extraAddr +=
            extraAddr !== "" ? ", " + data.buildingName : data.buildingName;
        }
        if (extraAddr !== "") {
          extraAddr = " (" + extraAddr + ")";
        }
        document.getElementById("sample6_extraAddress").value = extraAddr;
      } else {
        document.getElementById("sample6_extraAddress").value = "";
      }
      document.getElementById("sample6_postcode").value = data.zonecode;
      document.getElementById("sample6_address").value = addr;
      document.getElementById("sample6_detailAddress").focus();
    },
  }).open();
}

