<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../layout/headerMypageCompany.jsp"%>
    <input id="companyId" type="hidden" value="${company.companyId}" />
    <div class="company_info">
      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="basic_form">
          <dl class="info_basic">
            <dt class="info_list_item">회사명</dt>
            <input type="text" id="companyName" name="company_name" class="box_input" value="${company.companyName}" placeholder="회사명을 입력하세요"/>
            <dt class="info_list_item">사업자번호</dt>
            <input type="text" id="companyNumber" name="company_number" class="box_input" value="${company.companyNumber}" placeholder="사업자번호를 입력하세요"/>
          </dl>
        </div>
      </div>
      <!-- info -->

      <div id="contact_info" class="form">
        <div class="form_title">
          <h2 class="title">담당자 연락처</h2>
        </div>
        <div class="contact_form">
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">휴대폰</p>
            </div>
            <div class="contact_input">
              <input type="text" id="companyTel" name="company_tel" class="box_input" value="${company.companyTel}" placeholder="휴대폰 번호을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">이메일</p>
            </div>
            <div class="contact_input">
              <input type="text" id="companyEmail" name="company_email" class="box_input" value="${company.companyEmail}" placeholder="이메일을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">기업 주소</p>
            </div>
            <div class="contact_input">
              <input type="text" id="companyLocation" name="company_location" class="box_input" value="${company.companyLocation}" placeholder="상세주소를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- contact -->

      <div id="login_info" class="form">
        <div class="form_title">
          <h2 class="title">로그인 정보</h2>
        </div>
        <div class="login_form">
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">ID</p>
            </div>
            <div class="login_input">
              <input type="text" id="companyUsername" name="company_id" class="box_input" value="${company.companyUsername}" placeholder="아이디를 입력하세요"/>
            </div>
          </div>
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">Password</p>
            </div>
            <div class="login_input">
              <input type="text" id="companyPassword" name="company_password" class="box_input" value="${company.companyPassword}" placeholder="비밀번호를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- login -->

      <br class="btn_group">
        <div class="update_btn">
          <button id="btn_update" type="button">등록완료</button>
        </div>
      
        <div class="delete_btn">
          <button id="btn_delete" type="button">회원탈퇴</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- company_info -->
  </div>
</div>
<!-- body -->
<script>
  // 기업회원정보수정
  $("#btn_update").click(()=>{
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

  // 기업 회원탈퇴
$("#btn_delete").click(()=>{
  Delete();
});

function Delete(){
  console.log("삭제");
  let companyId = $("#companyId").val();
  $.ajax("/co/companyDelete/" + companyId, {
      type: "DELETE",
      dataType: "json"
  }).done((res) => {
      if (res.code == 1) {
          alert("기업회원탈퇴 완료");
          console.log(res);
          location.href="/";
      } else {
          alert("회원탈퇴에 실패하였습니다");
      }
  });          
}
  </script>

<%@ include file="../layout/footerCompany.jsp"%>
