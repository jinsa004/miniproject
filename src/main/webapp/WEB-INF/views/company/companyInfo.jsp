<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../layout/headerMypageCompany.jsp"%>
    <input id="companyId" type="hidden" value="${company.companyId}" />

    <div class="company_update">
      <div id="co_info_wrap">
        <div class="container">
          <div class="co_update">
            <div class="title_update">
              <h1>기업 회원 정보 관리</h1>
            </div>
      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="basic_form info_left">
          <div class="basic_input">
            <span class="info_right_txt">회사명</span>
            <input type="text" id="companyName" name="company_name" class="box_input info_right_input" value="${company.companyName}" placeholder="회사명을 입력하세요"/>
          </div>
          <div class="basic_input">
            <span class="info_right_txt">사업자번호</span>
            <input type="text" id="companyNumber" name="company_number" class="box_input info_right_input" value="${company.companyNumber}" placeholder="사업자번호를 입력하세요"/>
          </div>
        </div>
      </div>
      <!-- info -->

      <div id="contact_info" class="form">
        <div class="form_title">
          <h2 class="title">담당자 연락처</h2>
        </div>
        <div class="contact_form info_left">
          <div class="contact_row">
            <div class="contact_input">
              <span class="info_right_txt">휴대폰</span>
              <input type="text" id="companyTel" name="company_tel" class="box_input info_right_input" value="${company.companyTel}" placeholder="휴대폰 번호을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_input">
              <span class="info_right_txt">이메일</span>
              <input type="text" id="companyEmail" name="company_email" class="box_input info_right_input" value="${company.companyEmail}" placeholder="이메일을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <span class="info_right_txt">기업 주소</span>
            <div class="contact_input">
              <input type="text" id="companyLocation" name="company_location" class="box_input info_right_input" value="${company.companyLocation}" placeholder="상세주소를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- contact -->

      <div id="login_info" class="form">
        <div class="form_title">
          <h2 class="title">로그인 정보</h2>
        </div>
        <div class="login_form info_left">
          <div class="login_row">
            <div class="login_input">
              <span class="info_right_txt">아이디</span>
              <input type="text" id="companyUsername" name="company_id" class="box_input info_right_input" value="${company.companyUsername}" placeholder="아이디를 입력하세요"/>
            </div>
          </div>
          <div class="login_row">
            <div class="login_input">
              <span class="info_right_txt">비밀번호</span>
              <input type="text" id="companyPassword" name="company_password" class="box_input info_right_input" value="${company.companyPassword}" placeholder="비밀번호를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- login -->

      <br class="btn_group">
        <div class="update_btn">
          <button id="btnCoInfoUpdate" type="button">등록완료</button>
        </div>
      
        <div class="delete_btn">
          <button id="btnCoInfoDelete" type="button">회원탈퇴</button>
        </div>
        </div><!-- .co_update -->
        </div><!-- .container -->
        </div><!-- .co_info_wrap -->
      </div><!-- .company_update -->
  </div>
</div>
<!-- body -->

<%@ include file="../layout/footerCompany.jsp"%>
