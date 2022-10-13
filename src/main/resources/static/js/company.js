/* 기업정보 수정*/
$("#btn_update").click(()=>{
  console.log("클릭됨");
  companyUpdate();
});

function companyUpdate(){

  let companyId = $("#companyId").val();

  let data ={
    companyNumber:$("#companyNumber").val(),
    companyName:$("#companyName").val(),
    companyEmail:$("#companyEmail").val(),
    companyTel:$("#companyTel").val(),
    companyLocation:$("#companyLocation").val(),
    companyUsername:$("#companyUsername").val(),
    companyPassword:$("#companyPassword").val()
  };
  console.log(data);
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