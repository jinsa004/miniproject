$(".btn_delete_resume").click((event) => {
  let resumeId = event.target.value;
  deleteResume(resumeId);
});

$("#btn_main_resume").click(() => {
  setMain();
});

$("#btnInsertResume").click(() => {
  insertResume();
});

$("#btnUpdateResume").click(() => {
  updateResume();
});

$("#btnDeleteResume").click(() => {
  deleteResume();
});

// ====================== function ========================== //
//이력서 등록
function insertResume() {

  let data = {
    resumeTitle: $("#resume_title").val(),
    employeeId: $("#employeeId").val(),
    resumeImage: $("#files").val(),
    highschoolName: $("#highschool_name").val(),
    highschoolStartdate: $("#highschool_start_date").val(),
    highschoolEnddate: $("#highschool_end_date").val(),
    highschoolMajor: $("#highschool_major").val(),
    univName: $("#univ_name").val(),
    univStartdate: $("#univ_start_date").val(),
    univEnddate: $("#univ_end_date").val(),
    univMajor: $("#univ_major").val(),
    univGrades: $("#grades").val(),
    prevCo: $("#career_name").val(),
    careerPeriod: $("#career_period").val(),
    careerPosition: $("#career_position").val(),
    careerDepartment: $("#career_section").val(),
    careerTask: $("#career_task").val(),
    jobId: $("input[id=jobId]:checked").val()
  };
  console.log(data.resumeName);
  $.ajax("/emp/resumeSave", {
    type: "POST",
    dataType: "json", // 응답 데이터
    data: JSON.stringify(data), // http body에 들고갈 요청 데이터
    headers: {
      // http header에 들고갈 요청 데이터
      "Content-Type": "application/json; charset=utf-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("이력서 등록 완료");
      location.href = "/emp/mypageInsertForm/" + data.employeeId;
    } else {
      alert("등록에 실패하였습니다");
    }
  });
}

//이력서 수정
function updateResume() {

  let data = {
    resumeTitle: $("#resume_title").val(),
    resumeImage: $("#files").val(),
    highschoolName: $("#highschool_name").val(),
    highschoolStartdate: $("#highschool_start_date").val(),
    highschoolEnddate: $("#highschool_end_date").val(),
    highschoolMajor: $("#highschool_major").val(),
    univName: $("#univ_name").val(),
    univStartdate: $("#univ_start_date").val(),
    univEnddate: $("#univ_end_date").val(),
    univMajor: $("#univ_major").val(),
    univGrades: $("#grades").val(),
    prevCo: $("#career_name").val(),
    careerPeriod: $("#career_period").val(),
    careerPosition: $("#career_position").val(),
    careerDepartment: $("#career_section").val(),
    careerTask: $("#career_task").val(),
    jobId: $('input[id=jobId]:checked').val(),
  };
  let employeeId = $("#employeeId").val();
  let resumeId = $("#resumeId").val();

  $.ajax("/emp/resumeUpdate/" + resumeId, {
    type: "PUT",
    dataType: "json", // 응답 데이터
    data: JSON.stringify(data), // http body에 들고갈 요청 데이터
    headers: {
      // http header에 들고갈 요청 데이터
      "Content-Type": "application/json; charset=utf-8",
    }
  }).done((res) => {
    if (res.code == 1) {
      alert("이력서 수정 완료");
      location.href = "/emp/mypageInsertForm/" + employeeId;
    } else {
      alert("등록에 실패하였습니다");
    }
  });
}
//이력서 삭제기능
function deleteResume(resumeId) {

  let employeeId = $("#employeeId").val();

  $.ajax("/emp/resumeDelete/" + resumeId, {
    type: "DELETE",
    dataType: "json", // 응답 데이터
  }).done((res) => {
    if (res.code == 1) {
      alert("이력서 삭제 완료");
      location.href = "/emp/mypageInsertForm/" + employeeId;
    } else {
      alert("삭제에 실패하였습니다");
    }
  });
}

//메인이력서 선택기능
function setMain() {

  resumeId = $("input[id=resume_select]:checked").val();
  employeeId = $("#employeeId").val();

  console.log(employeeId);

  $.ajax("/emp/resume/setMainResume/" + resumeId, {
    type: "PUT",
    dataType: "json",
    data: JSON.stringify(resumeId),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  }).done((res) => {
    if (res.code == 1) {
      alert("메인 이력서 등록 완료");
      location.href = "/emp/mypageInsertForm/" + employeeId;
    } else {
      alert("메인 이력서 등록에 실패하였습니다");
    }
  });
}
//고졸, 대졸 선택시 나오는 
function show_highschool() {
  var con1 = document.getElementById("highschool");
  var con2 = document.getElementById("univ");
  var con3 = document.getElementById("high_btn");
  var con4 = document.getElementById("univ_btn");
  if (con3.style.background != '#4876ef') {
    con1.style.display = 'block';
    con2.style.display = 'none';
    con3.style.background = '#4876ef';
    con3.style.color = '#fff';
    con4.style.background = '#fff';
    con4.style.color = '#333';
  } else {
    con1.style.display = 'none';
    con3.style.background = '#fff';
    con3.style.color = '#333';
  }
}

function show_univ() {
  var con1 = document.getElementById("univ");
  var con2 = document.getElementById("highschool");
  var con3 = document.getElementById("high_btn");
  var con4 = document.getElementById("univ_btn");
  if (con4.style.background != '#4876ef') {
    con1.style.display = 'block';
    con2.style.display = 'none';
    con4.style.background = '#4876ef';
    con4.style.color = '#fff';
    con3.style.background = '#fff';
    con3.style.color = '#333';
  } else {
    con1.style.display = 'none';
    con4.style.background = '#fff';
    con4.style.color = '#333';
  }
}