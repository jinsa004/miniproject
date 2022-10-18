//하트를 클릭했을때 로직
$("#iconSub").click(() => {
  let principalId = $("#principalId").val();
  if (principalId == "") {
    alert("로그인을하세요");
  } else {
    let isSubedState = $("#iconSub").hasClass("fa-solid");
    if (isSubedState) {
      deleteSub();
    } else {
      insertSub();
    }
  }
});

$("#btnUpdate").click(() => {
  update();
});

//DB에 insert요청하기
function insertSub() {
  let introId = $("#introId").val();
  console.log("입력확인용");
  console.log($("#introId").val());
  $.ajax("/emp/companyIntroDetail/" + introId + "/subscribe", {
    type: "POST",
    dataType: "json"
  }).done((res) => {
    if (res.code == 1) {
      renderSub();
      $("#subscribeId").val(res.data.introId);
      console.log(res);
      //location.reload();
    } else {
      alert("구독을 실패했습니다");
    }
  });
}
//DB에 delete요청하기
function deleteSub() {
  let introId = $("#introId").val();
  let subscribeId = $("#subscribeId").val();
  console.log("삭제확인용");
  $.ajax("/emp/companyIntroDetail/" + introId + "/subscribe/" + subscribeId, {
    type: "DELETE",
    dataType: "json"
  }).done((res) => {
    if (res.code == 1) {
      renderCancelSub();
    } else {
      alert("구독취소에 실패했습니다")
    }
  });
}
//빨강하트 그리기
function renderSub() {
  $("#iconSub").removeClass("fa-regular");
  $("#iconSub").addClass("fa-solid");
}
//검정하트 그리기
function renderCancelSub() {
  $("#iconSub").removeClass("fa-solid");
  $("#iconSub").addClass("fa-regular");
}
//기업소개 수정하기
function update() {
  let data = {
    companyName: $("#companyName").val(),
    introBirth: $("#introBirth").val(),
    introTask: $("#introTask").val(),
    introSal: $("#introSal").val(),
    introWellfare: $("#introWellfare").val(),
    introContent: $("#introContent").val(),
    jobName: $("#jobName").val()
  }
  let introId = $("#introId").val();
  console.log("업데이트확인");
  $.ajax("/co/companyIntroUpdate/" + introId + "/update", {
    type: "PUT",
    dataType: "json", // 응답 데이터
    data: JSON.stringify(data), // http body에 들고갈 요청 데이터
    headers: {
      // http header에 들고갈 요청 데이터
      "Content-Type": "application/json; charset=utf-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("기업소개 수정 완료");
      location.reload();
    } else {
      alert("업데이트에 실패하였습니다");
    }
  });
}