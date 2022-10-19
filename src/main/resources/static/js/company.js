/* 기업회원 탈퇴*/
$("#btnCoInfoDelete").click(() => {
    companyDelete();
});

$("#btn_co_join").click(() => {
    coJoin();
});

$("#btnCoInfoUpdate").click(() => {
    companyUpdate();
});

$("#btn_login").click(() => {
    coLogin();
});

// 유저네임 중복 체크
$("#btnUsernameSameCheck").click(() => {
    checkUsername();
});

/* 기업회원 탈퇴*/

function companyDelete() {
    console.log("삭제");
    let companyId = $("#companyId").val();

    $.ajax("/coapi/cs/co/companyDelete/" + companyId, {
        type: "DELETE",
        dataType: "json",
    }).done((res) => {
        if (res.code == 1) {
            alert("기업회원탈퇴 완료");
            console.log(res);
            location.href = "/";
        } else {
            alert("회원탈퇴에 실패하였습니다");
        }
    });
}

/* 기업정보 수정*/

function companyUpdate() {
    let companyId = $("#companyId").val();

    let checkBoxArr = [];
    $("input:checkbox[name='job_checkbox']:checked").each(function () {
        checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
    });

    let data = {
        companyNumber: $("#companyNumber").val(),
        companyName: $("#companyName").val(),
        companyEmail: $("#companyEmail").val(),
        companyTel: $("#companyTel").val(),
        companyLocation: $("#companyLocation").val(),
        companyUsername: $("#companyUsername").val(),
        companyPassword: $("#companyPassword").val(),
        jobIds: checkBoxArr,
    };

    console.log("업데이트");

    $.ajax("/coapi/cs/co/companyUpdate/" + companyId, {
        type: "PUT",
        dataType: "json",
        data: JSON.stringify(data),
        headers: {
            "Content-Type": "application/json; charset=utf-8",
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

//기업회원 로그인
function coLogin() {
    let data = {
        companyUsername: $("#coUsername").val(),
        companyPassword: $("#coPassword").val(),
        remember: $("#remember").prop("checked"),
    };
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
            location.href = "/co";
        } else {
            alert("로그인 실패, 아이디 패스워드를 확인해주세요");
        }
    });
}

// 기업회원가입
function coJoin() {
    if (isCompanyUsernameSameCheck == false) {
        alert("아이디 중복 체크를 진행해주세요");
        $("#companyUsername").val("");
        $("#companyUsername").focus();
        return;
    } else if (ischeckPasswordCo == false) {
        alert("비밀번호 확인 체크를 진행해주세요.");
        $("#companyPasswordRepeat").focus();
        return;
    } else if (blackCheck == false) {
        return;
    } else if (ischeckEmailCo == false) {
        alert("이메일 확인 체크를 진행해주세요.");
        return;
    }

    let checkBoxArr = [];
    $("input:checkbox[name='job_checkbox']:checked").each(function () {
        checkBoxArr.push($(this).val()); // 체크된 값 배열에 push
    });

    let data = {
        companyNumber: $("#companyNumber").val(),
        companyName: $("#companyName").val(),
        companyEmail: $("#companyEmail").val(),
        companyTel: $("#companyTel").val(),
        companyLocation: $(".companyLocation").val(),
        companyUsername: $("#companyUsername").val(),
        companyPassword: $("#companyPassword").val(),
        jobIds: checkBoxArr,
    };

    $.ajax("/co/join", {
        type: "POST",
        dataType: "json",
        data: JSON.stringify(data),
        headers: {
            "Content-Type": "application/json",
        },
    }).done((res) => {
        if (res.code == 1) {
            alert("회원가입 완료");
            console.log(res);
            location.href = "/co";
        } else {
            alert(res.msg);
        }
    });
}

let isCompanyUsernameSameCheck = false;

function checkUsernameCo() {
    let companyUsername = $("#companyUsername").val();

    $.ajax(`/co/usernameSameCheck?companyUsername=${companyUsername}`, {
        type: "GET",
        dataType: "json",
        async: true,
    }).done((res) => {
        if (res.code == 1) {
            if (res.data == false) {
                alert("아이디 중복체크 완료");
                isCompanyUsernameSameCheck = true;
            } else {
                alert("아이디가 중복되었어요. 다른 아이디를 사용해주세요");
                isCompanyUsernameSameCheck = false;
                $("#companyUsername").val("");
            }
        }
    });
}

/* function companyPasswordSameCheck() {
  let companyPassword = $("#companyPassword").val();
  let companyPasswordSame = $("#companyPasswordSame").val();
  if (companyPassword != companyPasswordSame) {
    alert("패스워드가 동일하지 않습니다.");
    $("#companyPasswordSame").val("");
    $("#companyPasswordSame").focus();
    return;
  } else if (companyPassword == "") {
    alert("패스워드를 입력해 주세요.");
    $("#companyPasswordSame").focus();
  } else {
    alert("패스워드가 동일합니다.");
    companyPasswordSameCheck = true;
  }
} */
let ischeckPasswordCo = false;
//비밀번호 확인
function checkPasswordCo() {
    let companyPassword = $("#companyPassword").val();
    let companyPasswordRepeat = $("#companyPasswordRepeat").val();

    // 2. Ajax 통신
    $.ajax(`co/checkPasswordCo?companyPassword=${companyPassword}`, {
        type: "GET",
        dataType: "json",
        async: true,
    }).done((res) => {
        if (res.code == 1) {
            //alert("통신성공");
            if (companyPasswordRepeat != companyPassword) {
                alert("패스워드가 동일하지 않습니다.");
                ischeckPasswordCo = false;
                $("#companyPasswordRepeat").val("");
                return;
            } else if (companyPassword == "") {
                alert("패스워드를 입력해 주세요.");
                $("#companyPasswordRepeat").focus();
            } else {
                alert("패스워드가 동일합니다.");
                ischeckPasswordCo = true;
            }
        }
    });
}

function blackCheck() {
    let companyNumber = $("#companyNumber").val();
    let companyName = $("#companyName").val();
    let companyEmail = $("#companyEmail").val();
    let companyTel = $("#companyTel").val();
    let companyLocation = $(".companyLocation").val();
    let companyUsername = $("#companyUsername").val();
    let companyPassword = $("#companyPassword").val();

    if ($("#companyUsername").val() == "") {
        alert("아이디를 입력해주세요.");
        $("#companyUsername").focus();
        return false;
    } else if ($("#companyPassword").val() == "") {
        alert("비밀번호를 입력해주세요.");
        $("#companyPassword").focus();
        return false;
    } else if ($("#companyEmail").val() == "") {
        alert("이메일을 입력해주세요.");
        $("#companyEmail").focus();
        return false;
    } else if ($("#companyName").val() == "") {
        alert("회사명을 입력해주세요.");
        $("#companyName").focus();
        return false;
    } else if ($("#companyNumber").val() == "") {
        alert("사업자등록번호를 입력해주세요.");
        $("#companyNumber").focus();
        return false;
    } else if ($("#companyTel").val() == "") {
        alert("휴대폰번호를 입력해주세요.");
        $("#companyTel").focus();
        return false;
    } else if ($(".companyLocation").val() == "") {
        alert("주소를 입력해주세요.");
        $(".companyLocation").focus();
        return false;
    } else {
        return true;
    }
}

let ischeckEmailCo = false;
//이메일 확인
function checkEmailCo() {
    // 0. 통신 오브젝트 생성 (Get 요청은 body가 없다.)

    // 1. 사용자가 적은 username값을 가져오기
    let pattern = /\s/g;
    let checkEmail = /[a-zA-z0-9]+@[a-zA-z]+[.]+[a-zA-z.]+/;

    let companyEmail = $("#companyEmail").val();

    // 2. Ajax 통신
    $.ajax(`co/checkEmailCo?companyEmail=${companyEmail}`, {
        type: "GET",
        dataType: "json",
        async: true,
    }).done((res) => {
        if (res.code == 1) {
            //alert("통신성공");
            if (!checkEmail.test(companyEmail)) {
                alert("이메일형식이 올바르지 않습니다.");
                $("#companyEmail").val("");
                ischeckEmailCo = false;
            } else if (pattern.test(companyEmail)) {
                alert("이메일에서 공백이 발견되었습니다. 제외해주세요.");
                $("#companyEmail").val("");
                ischeckEmailCo = false;
            } else if (res.data == true) {
                alert("이메일이 중복되었습니다.");
                $("#companyEmail").val("");
                ischeckEmailCo = false;
            } else {
                alert("이메일이 확인되었습니다.");
                ischeckEmailCo = true;
                return;
            }
        }
    });
}
