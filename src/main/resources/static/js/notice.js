$("#btnUpdateNotice").click(() => {
    updateNotice();
});

$("#btnInsertNotice").click(() => {
    btnInsertNotice();
});

$("#btnDeleteNotice").click(() => {
    btnDeleteNotice();
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
        noticeQual: $("input[class=noticeQual]:checked").val(),
        noticeCareer: $("#noticeCareer").val(),
        noticeWellfare: $("#noticeWellfare").val(),
        jobId: $("input[class=job_id]:checked").val(),
    };
    console.log(data);
    $.ajax("/coapi/cs/co/noticeSave", {
        type: "POST",
        dataType: "json",
        data: JSON.stringify(data),
        headers: {
            "Content-Type": "application/json; charset=utf-8",
        },
    }).done((res) => {
        if (res.code == 1) {
            alert("공고 등록에 성공하였습니다.");
            location.href = "/co";
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
        noticePeriod: $("#notice_period").val(),
        noticeDept: $("#notice_dept").val(),
        noticePosition: $("#notice_position").val(),
        noticeTask: $("#notice_task").val(),
        noticeSal: $("#notice_sal").val(),
        noticeQual: $("input[class=notice_qual]:checked").val(),
        noticeCareer: $("#notice_career").val(),
        noticeWellfare: $("#notice_wellfare").val(),
        jobId: $("input[class=job_id]:checked").val(),
    };

    $.ajax("/coapi/cs/co/noticeUpdate/" + noticeId, {
        type: "PUT",
        dataType: "json", // 응답 데이터
        data: JSON.stringify(data), // http body에 들고갈 요청 데이터
        headers: {
            // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8",
        },
    }).done((res) => {
        if (res.code == 1) {
            alert("내 공고 수정 완료");
            location.href = "/cs/co/noticeService/" + companyId;
        } else {
            alert("내 공고 수정에 실패하였습니다");
        }
    });
}

function btnDeleteNotice() {
    let noticeId = $("#notice_id").val();
    let companyId = $("#company_id").val();

    $.ajax("/coapi/cs/co/noticeDelete/" + noticeId, {
        type: "DELETE",
        dataType: "json",
    }).done((res) => {
        if (res.code == 1) {
            alert("공고 삭제에 성공하였습니다.");
            location.href = "/cs/co/noticeService/" + companyId;
        } else {
            alert("공고 삭제에 실패하였습니다.");
        }
    });
}
