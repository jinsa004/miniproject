//회원가입
function joinSave() {
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
  $.ajax("/emp/join", {
    type: "POST",
    dataType: "json", //응답데이터 타입명
    data: JSON.stringify(data), // 요청데이터 타입명
    headers: {
      "Content-Type": "application/json; charset=utf-8", // spring에게 알려주는 것 - json으로 보내겠다. mime type - 필수
    },
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
