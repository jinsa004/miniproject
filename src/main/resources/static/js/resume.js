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

function insertResume() {
    let data = {
        resumeName: $("#highschool_name").val(),
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
        jobId: $("input[id=jobId]:checked").val(),
    };

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

$("#btnUpdateResume").click(() => {
    updateResume();
});

$("#btnDeleteResume").click(() => {
    deleteResume();
});

function updateResume() {
    let data = {
        resumeName: $("#resume_name").val(),
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
        jobId: $("input[id=jobId]:checked").val(),
    };

    let resumeId = $("#resumeId").val();

    $.ajax("/emp/resumeUpdate/" + resumeId, {
        type: "PUT",
        dataType: "json", // 응답 데이터
        data: JSON.stringify(data), // http body에 들고갈 요청 데이터
        headers: {
            // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8",
        },
    }).done((res) => {
        if (res.code == 1) {
            alert("이력서 수정 완료");
            location.href = "/emp";
        } else {
            alert("등록에 실패하였습니다");
        }
    });
}

function deleteResume() {
    let resumeId = $("#resumeId").val();

    $.ajax("/emp/resumeDelete/" + resumeId, {
        type: "DELETE",
        dataType: "json", // 응답 데이터
    }).done((res) => {
        if (res.code == 1) {
            alert("이력서 삭제 완료");
            location.href = "/";
        } else {
            alert("삭제에 실패하였습니다");
        }
    });
}

function show_highschool() {
    var con1 = document.getElementById("highschool");
    var con2 = document.getElementById("univ");
    var con3 = document.getElementById("high_btn");
    var con4 = document.getElementById("univ_btn");
    if (con3.style.background != "#4876ef") {
        con1.style.display = "block";
        con2.style.display = "none";
        con3.style.background = "#4876ef";
        con3.style.color = "#fff";
        con4.style.background = "#fff";
        con4.style.color = "#333";
    } else {
        con1.style.display = "none";
        con3.style.background = "#fff";
        con3.style.color = "#333";
    }
}

function show_univ() {
    var con1 = document.getElementById("univ");
    var con2 = document.getElementById("highschool");
    var con3 = document.getElementById("high_btn");
    var con4 = document.getElementById("univ_btn");
    if (con4.style.background != "#4876ef") {
        con1.style.display = "block";
        con2.style.display = "none";
        con4.style.background = "#4876ef";
        con4.style.color = "#fff";
        con3.style.background = "#fff";
        con3.style.color = "#333";
    } else {
        con1.style.display = "none";
        con4.style.background = "#fff";
        con4.style.color = "#333";
    }
}


function deleteResume(resumeId) {
    console.log(resumeId);

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

function setMain() {
    resumeId = $("input[id=resume_select]:checked").val();
    employeeId = $("#employeeId").val();

    console.log(employeeId);

    $.ajax("/resume/setMainResume/" + resumeId, {
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