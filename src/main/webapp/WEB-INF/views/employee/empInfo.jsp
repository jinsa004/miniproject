<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/headerMypage.jsp"%>

<div class="p-5 border text-center">
  <h1>회원 정보 관리</h1>
</div>

    <div class="users_info">

      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">기본 정보</h2>
        </div>
        <div class="basic_form">
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">이름</p>
            </div>
            <div class="basic_input">
              <input type="text" id="user_name" name="user_name" class="box_input" value="홍길동" placeholder="이름을 입력하세요"/>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">생년월일</p>
            </div>
            <div class="basic_input">
              <input type="text" id="user_birth" name="user_birth" class="box_input" value="2000년 00월 00일" placeholder="생년월일을 입력하세요"/>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">성별</p>
            </div>
            <div class="basic_input">
              <input type="text" id="user_sex" name="user_sex" class="box_input" value="남성" placeholder="셩별을 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- basic -->

      <div id="contact_info" class="form">
        <div class="form_title">
          <h2 class="title">연락처 정보</h2>
        </div>
        <div class="contact_form">
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">휴대폰</p>
            </div>
            <div class="contact_input">
              <input type="text" id="user_tel" name="user_tel" class="box_input" value="010-0000-0000" placeholder="휴대폰 번호을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">이메일</p>
            </div>
            <div class="contact_input">
              <input type="text" id="user_email" name="user_email" class="box_input" value="green@nate.com" placeholder="이메일을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">주소</p>
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
              <input type="text" id="user_location" name="user_location" class="box_input" value="금정구" placeholder="상세주소를 입력하세요"/>
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
            <div class="edu_input">
              <input type="text" id="user_id" name="user_id" class="box_input" value="ssar" placeholder="아이디를 입력하세요"/>
            </div>
          </div>
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">Password</p>
            </div>
            <div class="edu_input">
              <input type="text" id="user_password" name="user_password" class="box_input" value="1234" placeholder="비밀번호를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- login -->

      <div id="field_info" class="form">
        <div class="form_title">
          <h2 class="title">관심 분야</h2>
        </div>
        <div class="field_select">
            <form method="post" action="/#">
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="프론트엔드" name="프론트엔드" value="프론트엔드">
                <label class="form-check-label" for="프론트엔드">프론트엔드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="백엔드" name="백엔드" value="백엔드">
                <label class="form-check-label" for="백엔드">백엔드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="풀스택" name="풀스택" value="풀스택">
                <label class="form-check-label" for="풀스택">풀스택</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="안드로이드" name="안드로이드" value="안드로이드">
                <label class="form-check-label" for="chec안드로이드k1">안드로이드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="IOS" name="IOS" value="IOS">
                <label class="form-check-label" for="IOS">IOS</label>
              </div>
            </form>
        </div>
      </div>
      <!-- field -->

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
    <!-- users_info -->
  </div>
</div>
<!-- body -->
<%@ include file="../layout/footer.jsp"%>
