<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../layout/headerMypageCompany.jsp"%>
    <div class="company_info">

      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="basic_form">
          <div class="info_img">
            <form method="post" action="#" enctype="multipart/form-data">
              <label for="files">파일 선택</label>
              <input type="file" name="file" id="files" class="hidden"/>
              <button type="submit">파일전송</button>
            </form>
          </div>
          <dl class="info_basic">
            <dt class="info_list_item">회사명</dt>
            <input type="text" id="company_name" name="company_name" class="box_input" value="그린" placeholder="회사명을 입력하세요"/>
            <dt class="info_list_item">사업자번호</dt>
            <input type="text" id="company_number" name="company_number" class="box_input" value="1231312-123123" placeholder="사업자번호를 입력하세요"/>
            <dt class="info_list_item">설립년도</dt>
            <input type="text" id="company_birth" name="company_birth" class="box_input" value="2022년 10월 07일" placeholder="설립년도를 입력하세요"/>
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
              <input type="text" id="company_tel" name="company_tel" class="box_input" value="010-0000-0000" placeholder="휴대폰 번호을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">이메일</p>
            </div>
            <div class="contact_input">
              <input type="text" id="company_email" name="company_email" class="box_input" value="green@nate.com" placeholder="이메일을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">기업 주소</p>
            </div>
            <div class="contact_input">
              <div class="select-group">
                <select>
                  <option>부산</option>
                  <option>서울</option>
                  <option>대전</option>
                  <option>광주</option>
                </select>
              </div>
              <input type="text" id="company_location" name="company_location" class="box_input" value="금정구" placeholder="상세주소를 입력하세요"/>
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
              <input type="text" id="company_id" name="company_id" class="box_input" value="ssar" placeholder="아이디를 입력하세요"/>
            </div>
          </div>
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">Password</p>
            </div>
            <div class="login_input">
              <input type="text" id="company_password" name="company_password" class="box_input" value="1234" placeholder="비밀번호를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- login -->

      <div class="btn_group">
        <div class="update_btn">
          <button type="button" onclick="location.href='#'">등록완료</button>
        </div>
        <div class="delete_btn">
          <button type="button" onclick="location.href='#'">회원탈퇴</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- company_info -->
  </div>
</div>
<!-- body -->

<%@ include file="../layout/footerCompany.jsp"%>
