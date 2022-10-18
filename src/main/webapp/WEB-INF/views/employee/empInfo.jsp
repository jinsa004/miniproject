<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div class="p-5 border text-center">
      <h1>회원 정보 관리</h1>
    </div>

    <div class="users_info">
      <input id="employeeId" type="hidden" value="${employee.employeeId}" />
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
              <input type="text" id="employeeName" name="employeeName" class="box_input"
                value="${employee.employeeName}" placeholder="이름을 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">생년월일</p>
            </div>
            <div class="basic_input">
              <input type="date" id="employeeBirth" name="employeeBirth" class="box_input"
                value="${employee.employeeBirth}" placeholder="생년월일을 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">성별</p>
            </div>
            <div class="basic_input">
              <input type="text" id="employeeSex" name="employeeSex" class="box_input" value="${employee.employeeSex}"
                placeholder="셩별을 입력하세요" />
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
              <input type="text" id="employeeTel" name="employeeTel" class="box_input" value="${employee.employeeTel}"
                placeholder="휴대폰 번호을 입력하세요" />
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">이메일</p>
            </div>
            <div class="contact_input">
              <input type="text" id="employeeEmail" name="employeeEmail" class="box_input"
                value="${employee.employeeEmail}" placeholder="이메일을 입력하세요" />
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">주소</p>
            </div>
            <div class="contact_input">
              <input type="text" id="employeeLocation" name="employeeLocation" class="box_input employeeLocation"
                value="${employee.employeeLocation}" placeholder="상세주소를 입력하세요" />
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
              <input type="text" id="employeeUsername" name="employeeUsername" class="box_input"
                value="${employee.employeeUsername}" placeholder="아이디를 입력하세요" />
            </div>
          </div>
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">Password</p>
            </div>
            <div class="edu_input">
              <input type="text" id="employeePassword" name="employeePassword" class="box_input"
                value="${employee.employeePassword}" placeholder="비밀번호를 입력하세요" />
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
              <input type="checkbox" class="form-check-input" id="jobId" name="프론트엔드" value="프론트엔드" checked>
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
          <button type="button" onclick="location.href='#'" id="btnEmployeeUpdate">수정완료</button>
        </div>
        <div class="delete_btn">
          <button type="button" onclick="location.href='#'" id="btnEmployeeDelete">회원탈퇴</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- users_info -->
    </div>
    </div>
    <!-- body -->
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>