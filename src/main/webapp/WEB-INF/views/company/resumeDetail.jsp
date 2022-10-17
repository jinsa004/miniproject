<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>
    <div class="p-5 border text-center">
      <h1>이력서 상세보기</h1>
    </div>

    <div class="container">
      <div class="row">
        <div class="resume_detail">

          <div id="info" class="form">
            <div class="form_title">
              <h2 class="title">기본정보</h2>
            </div>
            <div class="info_form">
              <div class="info_img">
                <img src="assets/resume/face1.jpg" width="100" height="140" />
              </div>
              <dl class="info_name">
                <dd class="name">${resume.employeeName}</dd>
                <dd class="sex">${resume.employeeSex}, ${resume.employeeBirth} (00세/만 00세)</dd>
              </dl>
              <dl class="info_basic">
                <dt class="info_list_item">이메일</dt>
                <dd id="info_email">${resume.employeeEmail}</dd><br>
                <dt class="info_list_item">휴대폰</dt>
                <dd id="info_cell">${resume.employeeTel}</dd><br>
                <dt class="info_list_item">주소</dt>
                <dd id="info_location">${resume.employeeLocation}</dd>
              </dl>
            </div>
          </div>
          <!-- info -->

          <div id="edu" class="form">
            <div class="form_title">
              <h2 class="title">학력사항</h2>
            </div>
            <div class="resume_edu">
              <div class="edu_select">
                <div class="btn-group">
                  <button type="button" class="edu_btn" id="high_btn" onclick="show_highschool()">고등학교 졸업</button>
                  <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학.대학원 이상 졸업</button>
                </div>
              </div>
            </div>

            <div class="edu_form" id="highschool">
              <h4>고등학교 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <span>${resume.highschoolName}</span>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기간</p>
                </div>
                <div class="edu_input">
                  <span>${resume.highschoolStartdate} - ${resume.highschoolEnddate}</span>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공계열</p>
                </div>
                <div class="edu_input">
                  <span>${resume.highschoolMajor}</span>
                </div>
              </div>
            </div>

            <div class="edu_form" id="univ">
              <h4>대학.대학원 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">대학</p>
                </div>
                <div class="edu_input">
                  <span>대학교(4년)</span>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <span>${resume.univName}</span>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기한</p>
                </div>
                <div class="edu_input">
                  <span>${resume.univStartdate} - ${resume.univEnddate}</span>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공</p>
                </div>
                <div class="edu_input">
                  <span>${resume.univMajor}</span>
                </div>
              </div>
              <div class="edu_row">
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학점</p>
                </div>
                <div class="edu_input">
                  <span>${resume.univGrades} / 4.5</span>
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
                  <p class="career_list_item">회사명</p>
                </div>
                <div class="career_input">
                  <span>${resume.prevCo}</span>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">재직기간</p>
                </div>
                <div class="career_input">
                  <span>${resume.careerPeriod}</span>
                </div>
              </div>
              <div class="career_row">
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">직급/직책</p>
                </div>
                <div class="career_input">
                  <span>${resume.careerPosition}</span>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">근무부서</p>
                </div>
                <div class="career_input">
                  <span>${resume.careerDepartment}</span>
                </div>
              </div>
              <div class="career_row">
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">담당업무</p>
              </div>
              <div class="career_input">
                <span>${resume.careerTask}</span>
              </div>
            </div>

          </div>
        </div>
      </div>
      <!-- career -->

      <div class="contact_btn">
        <button type="button" onclick="location.href='#'">컨택하기</button>
      </div>
      <!-- contact -->
    </div>
    <!-- resume_detail -->
    </div>
    </div>

    <script src="/js/main.js"></script>
    <script src="/js/company.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>