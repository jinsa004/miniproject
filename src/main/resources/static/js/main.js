$("ul.tabs li").click(function(){
  var tab_id = $(this).attr("data-tab");
  $("ul.tabs li").removeClass("on");
  $(".tab-content").removeClass("on");
  $(".tab-content").hide();
  $(this).addClass("on");
  $("#"+tab_id).addClass("on");
  $("#"+tab_id).show();
})



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

$("#btnLogin").click(() => {
  login();
});

function login() {
  let data = {
    username: $("#username").val(),
    password: $("#password").val(),
  };

  $.ajax("/api/login", {
    type: "POST",
    dataType: "json", //응답데이터 타입명
    data: JSON.stringify(data), // 요청데이터 타입명
    headers: {
      "Content-Type": "application/json; charset=utf-8", // spring에게 알려주는 것 - json으로 보내겠다. mime type - 필수
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("로그인 성공");
      location.href = "/";
    } else {
      alert("로그인 실패, 아이디 패스워드를 확인해주세요");
    }
  });
  //람다식을 사용하면 코드가 간결해지고, 스코프가 명확해진다.
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

