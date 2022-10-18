$("#btnUpdateNotice").click(() => {
  updateNotice();
});

$("#btn_insert_notice").click(() => {
  btnInsertNotice()
});

$("#btn_delete_notice").click(() => {
  btnDeleteNotice()
});

function btnInsertNotice() {
  let data = {
    companyId: $("#companyId").val(),
    noticeTitle: $("#noticeTitle").val(),
    noticePeriod: $("#noticePeriod").val(),
    noticeDept: $("#noticeDept").val(),
    noticePosition: $("#noticePosition").val(),
    noticeTask: $("#noticeTask").val(),
    noticeSal: $("#noticeSal").val(),
    noticeQual: $('input[id=noticeQual]:checked').val(),
    noticeCareer: $("#noticeCareer").val(),
    noticeWellfare: $("#noticeWellfare").val(),
    jobId: $('input[id=jobId]:checked').val()
  };
  console.log(data);
  $.ajax("/co/noticeSave", {
    type: "POST",
    dataType: "json",
    data: JSON.stringify(data),
    headers: {
      "Content-Type": "application/json; charset=utf-8"
    }
  }).done((res) => {
    if (res.code == 1) {
      alert("공고 등록에 성공하였습니다.");
      location.href = "/co/mainCompany";
    } else {
      alert("공고 등록에 실패하였습니다.");
    }
  });
}

function updateNotice() {

  let noticeId = $("#notice_id").val();
  let companyId = $("#company_id").val();

  let data = {
    noticeTitle: $("#notice_title").val(),
    jobId: $('input[id=job_id]:checked').val(),
    noticePeriod: $("#notice_period").val(),
    noticeDept: $("#notice_dept").val(),
    noticePosition: $("#notice_position").val(),
    noticeTask: $("#notice_task").val(),
    noticeSal: $("#notice_sal").val(),
    noticeQual: $('input[id=notice_qual]:checked').val(),
    noticeCareer: $("#notice_career").val(),
    noticeWellfare: $('textarea[name=company_wellfare]').val()
  };

  $.ajax("/co/noticeUpdate/" + noticeId, {
    type: "PUT",
    dataType: "json", // 응답 데이터
    data: JSON.stringify(data), // http body에 들고갈 요청 데이터
    headers: {
      // http header에 들고갈 요청 데이터
      "Content-Type": "application/json; charset=utf-8",
    }
  }).done((res) => {
    if (res.code == 1) {
      alert("내 공고 수정 완료");
      location.href = "/co/noticeService/" + companyId;
    } else {
      alert("내 공고 수정에 실패하였습니다");
    }
  });
}

function btnDeleteNotice() {

  let noticeId = $("#notice_id").val();
  let companyId = $("#company_id").val();

  $.ajax("/co/noticeDelete/" + noticeId, {
    type: "DELETE",
    dataType: "json"
  }).done((res) => {
    if (res.code == 1) {
      alert("공고 삭제에 성공하였습니다.");
      location.href = "/co/noticeService/" + companyId;
    } else {
      alert("공고 삭제에 실패하였습니다.");
    }
  });
}



{/* <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> */ }

// function sample6_execDaumPostcode() {
//     new daum.Postcode({
//         oncomplete: function(data) {
//             var addr = '';
//             var extraAddr = '';

//             if (data.userSelectedType === 'R') {
//                 addr = data.roadAddress;
//             } else {
//                 addr = data.jibunAddress;
//             }

//             if(data.userSelectedType === 'R'){
//                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
//                     extraAddr += data.bname;
//                 }
//                 if(data.buildingName !== '' && data.apartment === 'Y'){
//                     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                 }
//                 if(extraAddr !== ''){
//                     extraAddr = ' (' + extraAddr + ')';
//                 }
//                 document.getElementById("sample6_extraAddress").value = extraAddr;
//             } else {
//                 document.getElementById("sample6_extraAddress").value = '';
//             }

//             document.getElementById('sample6_postcode').value = data.zonecode;
//             document.getElementById("sample6_address").value = addr;
//             document.getElementById("sample6_detailAddress").focus();
//         }
//     }).open();
// }