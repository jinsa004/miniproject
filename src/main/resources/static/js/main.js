$("ul .tabs li").click(function () {
  var tab_id = $(this).attr("data-tab");
  $("ul.tabs li").removeClass("on");
  $(".tab-content").removeClass("on");
  $(".tab-content").hide();
  $(this).addClass("on");

  $("#" + tab_id).addClass("on");
  $("#" + tab_id).show();
});

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
      // function sample6_execDaumPostcode() {
      //   new daum.Postcode({
      //     oncomplete: function (data) {
      //       var addr = '';
      //       var extraAddr = '';
      //       if (data.userSelectedType === 'R') {
      //         addr = data.roadAddress;
      //       } else {
      //         addr = data.jibunAddress;
      //       }
      //       if (data.userSelectedType === 'R') {
      //         if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
      //           extraAddr += data.bname;
      //         }
      //         if (data.buildingName !== '' && data.apartment === 'Y') {
      //           extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
      //         }
      //         if (extraAddr !== '') {
      //           extraAddr = ' (' + extraAddr + ')';
      //         }
      //         document.getElementById("sample6_extraAddress").value = extraAddr;
      //       } else {
      //         document.getElementById("sample6_extraAddress").value = '';
      //       }
      //       document.getElementById('sample6_postcode').value = data.zonecode;
      //       document.getElementById("sample6_address").value = addr;
      //       document.getElementById("sample6_detailAddress").focus();
      //     }
      //   }).open();
      // }

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
            location.reload;
          } else {
            alert("업데이트에 실패하였습니다");
          }
        });
      }
