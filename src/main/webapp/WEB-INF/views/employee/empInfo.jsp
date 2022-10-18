<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div id="user_info_wrap">
      <div class="container">

        <div class="users_update">
          <input id="employeeId" type="hidden" value="${employee.employeeId}" />
          <div class="title_update">
            <h1>회원 정보 관리</h1>
          </div>

          <div id="basic_info" class="form">
            <div class="form_title">
              <h2 class="title">기본 정보</h2>
            </div>
            <div class="info_form">
              <div class="basic_form info_left">
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">이름</span>
                    <input type="text" id="employeeName" name="employeeName" class="box_input info_right_input"
                      value="${employee.employeeName}" placeholder="이름을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">생년월일</span>
                    <input type="date" id="employeeBirth" name="employeeBirth"
                      class="box_input info_right_input info_birth_input" value="${employee.employeeBirth}"
                      placeholder="생년월일을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">성별</span>
                    <input type="text" id="employeeSex" name="employeeSex" class="box_input info_right_input"
                      value="${employee.employeeSex}" placeholder="셩별을 입력하세요" />
                  </div>
                </div>
                <div class="contact_row">
                  <div class="contact_input">
                    <span class="info_right_txt">휴대폰</span>
                    <input type="text" id="employeeTel" name="employeeTel" class="box_input info_right_input"
                      value="${employee.employeeTel}" placeholder="휴대폰 번호을 입력하세요" />
                  </div>
                </div>
                <div class="contact_row">
                  <div class="contact_input">
                    <span class="info_right_txt">이메일</span>
                    <input type="text" id="employeeEmail" name="employeeEmail" class="box_input info_right_input"
                      value="${employee.employeeEmail}" placeholder="이메일을 입력하세요" />
                  </div>
                </div>
                <div class="contact_row">
                  <div class="contact_input">
                    <span class="info_right_txt">주소</span>
                    <input type="text" id="employeeLocation" name="employeeLocation"
                      class="box_input employeeLocation info_right_input" value="${employee.employeeLocation}"
                      placeholder="상세주소를 입력하세요" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- basic -->

          <div id="login_info" class="form">
            <div class="form_title">
              <h2 class="title">로그인 정보</h2>
            </div>
            <div class="info_form">
              <div class="login_form info_left">
                <div class="login_row">
                  <div class="edu_input">
                    <span class="info_right_txt">아이디</span>
                    <input type="text" id="employeeUsername" name="employeeUsername" class="box_input info_right_input"
                      value="${employee.employeeUsername}" placeholder="아이디를 입력하세요" />
                  </div>
                </div>
                <div class="login_row">
                  <div class="edu_input">
                    <span class="info_right_txt">비밀번호</span>
                    <input type="text" id="employeePassword" name="employeePassword" class="box_input info_right_input"
                      value="${employee.employeePassword}" placeholder="비밀번호를 입력하세요" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- login -->

          <div id="field" class="form">
            <div class="form_title">
              <h2 class="title">관심 분야</h2>
            </div>
            <div class="resume_field info_form2">
              <div class="field_select">
                <form method="post" action="/#">
                  <ul class="part_box_wrap">
                    <c:forEach var="jobPS" items="${jobPS}" varStatus="">
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="jobId" name="${jobPS.jobName}"
                          value="${jobPS.jobName}" />
                        <em>
                          <label class="form-check-label" for="${jobPS.jobName}">${jobPS.jobName}</label>
                        </em>
                      </li>
                    </c:forEach>
                  </ul>
                </form>
              </div>
            </div>
          </div>
          <!-- field -->

          <div class="btn_group">
            <div class="update_btn">
              <button type="button" onclick="location.href='#'" id="btnEmployeeUpdate">등록완료</button>
            </div>
            <div class="delete_btn">
              <button type="button" onclick="location.href='#'" id="btnEmployeeDelete">회원탈퇴</button>
            </div>
          </div>
          <!-- btn -->

        </div>
        <!-- users_info -->
      </div><!-- .container -->
    </div><!-- .resume_wrap -->
    </div>
    <!-- users_info -->
    </div>
    </div>
    <!-- body -->
    <script>
      function 
    </script>
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>