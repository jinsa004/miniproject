<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>
    <div class="resume_update">
      <input id="resumeId" type="hidden" value="${resumePS.resumeId}" />
      <input id="employeeId" type="hidden" value="${principal.employeeId}" />
      <div class="resume_title">
        <h2>이력서 제목</h2>
        <div class="title_update">
          <div class="title_input">
            <input type="text" id="resume_title" class="form-control" value="${resumePS.resumeTitle}" />
            <!-- input 입력 넣기 -->
          </div>
        </div>
      </div>
      <!-- resume_title -->

      <div id="info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="info_form">
          <div class="info_img">
            <form method="post" action="/resume_detail" enctype="multipart/form-data">
              <label for="files">파일 선택</label>
              <input type="file" name="file" id="files" class="hidden" />
              <button type="submit">파일전송</button>
            </form>
          </div>
          <dl class="info_name">
            <dd class="name">${principal.employeeName}</dd>
            <dd class="sex">${principal.employeeSex}, ${principal.employeeBirth}</dd>
          </dl>
          <dl class="info_basic">
            <dt class="info_list_item">${principal.employeeEmail}</dt>
            <dt class="info_list_item">${principal.employeeTel}</dt>
            <dt class="info_list_item">${principal.employeeLocation}</dt>
          </dl>
        </div>
      </div>
      <!-- info -->

      <div id="edu" class="form">
        <div class="form_title">
          <h2 class="title">학력사항</h2>
          <span>최종학력 선택 후 학력사항을 입력하세요</span>
        </div>
        <div class="resume_edu">
          <div class="edu_select">
            <div class="btn-group">
              <button type="button" class="edu_btn" id="high_btn" onclick="show_highschool()">고등학교 졸업</button>
              <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학.대학원 이상 졸업</button>
            </div>
          </div>

          <div class="edu_form" id="highschool">
            <h4>고등학교 정보 입력</h4>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">학교명</p>
              </div>
              <div class="edu_input">
                <input type="text" id="highschool_name" name="highschool_name" class="form-control"
                  value="${resumePS.highschoolName}" />
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">재학기간</p>
              </div>
              <div class="edu_input">
                <input type="text" id="highschool_start_date" name="start_date" class="form-control"
                  value="${resumePS.highschoolStartdate}" />
                <input type="text" id="highschool_end_date" name="end_date" class="form-control"
                  value="${resumePS.highschoolEnddate}" />
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">전공계열</p>
              </div>
              <div class="edu_input">
                <input type="text" id="highschool_major" name="highschool_major" class="form-control"
                  value="${resumePS.highschoolMajor}" />
              </div>
            </div>
          </div>
          <div class="edu_form" id="univ">
            <h4>대학.대학원 정보 입력</h4>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">학교명</p>
              </div>
              <div class="edu_input">
                <input type="text" id="univ_name" name="univ_name" class="form-control" value="${resumePS.univName}" />
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">재학기간</p>
              </div>
              <div class="edu_input">
                <input type="text" id="univ_start_date" name="start_date" class="form-control"
                  value="${resumePS.univStartdate}" />
                <input type="text" id="univ_end_date" name="end_date" class="form-control"
                  value="${resumePS.univEnddate}" />
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">전공</p>
              </div>
              <div class="edu_input">
                <input type="text" id="univ_major" name="univ_major" class="form-control"
                  value="${resumePS.univMajor}" />
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">졸업학점</p>
              </div>
              <div class="edu_input">
                <input type="text" id="grades" name="grades" class="form-control" value="${resumePS.univGrades}">
                <p>/ 4.5</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- edu -->

      <div id="career" class="form">
        <div class="form_title">
          <h2 class="title">경력사항</h2>
        </div>
        <div class="resume_career">
          <div class="career_select">
            <div class="btn-group">
              <button type="button" class="career_btn" id="new_btn" onclick="show_new()">신입</button>
              <button type="button" class="career_btn" id="work_btn" onclick="show_work()">경력</button>
            </div>
          </div>

          <div class="career_form" id="work">
            <h4>회사 정보 입력</h4>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">직작명</p>
              </div>
              <div class="career_input">
                <input type="text" id="career_name" name="career_name" class="form-control"
                  value="${resumePS.prevCo}" />
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">재직기간</p>
              </div>
              <div class="career_input">
                <input type="text" id="career_period" name="career_period" class="form-control"
                  value="${resumePS.careerPeriod}" />
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">직급명</p>
              </div>
              <div class="career_input">
                <input type="text" id="career_position" name="career_position" class="form-control"
                  value="${resumePS.careerPosition}" />
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">근무부서</p>
              </div>
              <div class="career_input">
                <input type="text" id="career_section" name="career_section" class="form-control"
                  value="${resumePS.careerDepartment}" />
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">담당업무</p>
              </div>
              <div class="career_input">
                <input type="text" id="career_task" name="career_task" class="form-control"
                  value="${resumePS.careerTask}" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- career -->

      <div id="field" class="form">
        <div class="form_title">
          <h2 class="title">관심분야</h2>
        </div>
        <div class="resume_field">
          <div class="field_select">
            <div class="select-group">
              <c:forEach var="jobPS" items="${jobPS}">
                <input type='radio' id='jobId' name='jobId' value="${jobPS.jobId}" <c:if
                  test="${jobPS.jobId eq resumePS.jobId}">checked</c:if>/>
                ${jobPS.jobName}
                <br>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
      <!-- field -->

      <div class="update_btn">
        <button id="btnUpdateResume" type="button">수정완료</button>
      </div>
      <!-- update -->

      <div class="delete_btn">
        <button id="btnDeleteResume" type="button">삭제하기</button>
      </div>
      <!-- delete -->

    </div>
    <!-- resume_update -->
    </div>
    </div>
    <!-- body -->

    <script src="/js/main.js"></script>
    <script src="/js/resume.js"></script>
    <%@ include file="../layout/footer.jsp" %>