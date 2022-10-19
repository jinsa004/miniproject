<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div id="resume_wrap">
      <div class="container">
        <h1>이력서 등록하기</h1>
        <div class="resume_update">
          <input id="employeeId" type="hidden" value="${principal.employeeId}" />
          <div class="resume_title">
            <div class="title_update">
              <div class="title_input">
                <input type="text" class="resume_title_input" id="resume_title" placeholder="이력서 제목을 입력해 주세요" value=""
                  maxlength="35">
                <!-- input 입력 넣기 -->
              </div>
            </div>
          </div>
          <!-- resume_title -->

          <div id="info" class="form">
            <div class="form_title">
              <h2 class="title">기본정보</h2>
            </div>
            <div class="info_form cf">
              <div class="info_left">
                <div class="info_img">
                  <form method="post" action="/emp/resumeSave" enctype="multipart/form-data">
                    <input id="resumeImageId" type="hidden" value="" />
                    <span class="info_myimg">
                      <img id="preImage" alt="image_title">
                    </span>
                    <input type="file" multiple="multiple" id="image" name="image" />
                  </form>
                </div>
              </div><!-- .info_left -->
              <div class="info_right">

                <dl class="info_name">
                  <dd class="name">
                    <span class="info_right_txt">이름</span>
                    <p class="info_right_input">
                      ${principal.employeeName}
                    </p>
                  </dd>
                  <dd class="sex">
                    <span class="info_right_txt">성별</span>
                    <p class="info_right_input">
                      ${principal.employeeSex}
                    </p>
                  </dd>
                  <dd class="birth">
                    <span class="info_right_txt">생년월일</span>
                    <p class="info_right_input">
                      ${principal.employeeBirth}
                    </p>
                  </dd>
                </dl>
                <dl class="info_basic">
                  <dd class="info_list_item">
                    <span class="info_right_txt">이메일</span>
                    <p class="info_right_input">
                      ${principal.employeeEmail}
                    </p>
                  </dd>
                  <dd class="info_list_item">
                    <span class="info_right_txt">전화번호</span>
                    <p class="info_right_input">
                      ${principal.employeeTel}
                    </p>
                  </dd>
                  <dd class="info_list_item">
                    <span class="info_right_txt">주소</span>
                    <p class="info_right_input">
                      ${principal.employeeLocation}
                    </p>
                  </dd>
                </dl>
              </div><!-- .info_right -->
            </div><!-- .info_form -->
          </div>
          <!-- info -->

          <div id="edu" class="form">
            <div class="form_title">
              <h2 class="title">학력사항</h2>
              <span>최종학력 선택 후 학력사항을 입력하세요</span>
            </div>
            <div class="resume_edu info_form">
              <div class="edu_select">
                <div class="btn-group">
                  <button type="button" class="edu_btn on" id="high_btn" onclick="show_highschool()">고등학교
                    졸업</button>
                  <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학/대학원 이상
                    졸업</button>
                </div>
              </div>

              <div class="edu_form" id="highschool">
                <h3>고등학교 정보 입력</h3>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">학교명</span>
                    <input type="text" id="highschool_name" name="highschool_name" class="box_input info_right_input"
                      placeholder="고등학교 명을 입력하세요" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">재학기간</span>
                    <input type="date" id="highschool_start_date" name="start_date" class="box_input info_right_input2"
                      placeholder="입학년도" />
                    <span class="icon">-</span>
                    <input type="date" id="highschool_end_date" name="end_date" class="box_input info_right_input2"
                      placeholder="졸업년도" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">전공계열</span>
                    <!-- <input type="text" id="highschool_major" name="highschool_major" class="box_input info_right_input"
                      placeholder="전공계열을 입력하세요" /> -->
                    <select id="highschool_major" name="highschool_major">
                      <option value="">전공계열 선택</option>
                      <option value="문과">문과</option>
                      <option value="이과">이과</option>
                      <option value="예체능">예체능</option>
                    </select>
                  </div>
                </div><!-- .edu_row -->
              </div>

              <div class="edu_form" id="univ">
                <h3>대학.대학원 정보 입력</h3>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">학교명</span>
                    <input type="text" id="univ_name" name="univ_name" class="box_input info_right_input"
                      placeholder="대학교 명을 입력하세요" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">재학기간</span>
                    <input type="date" id="univ_start_date" name="start_date" class="box_input info_right_input2"
                      placeholder="입학년도" />
                    <span class="icon">-</span>
                    <input type="date" id="univ_end_date" name="end_date" class="box_input info_right_input2"
                      placeholder="졸업년도" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">전공</span>
                    <input type="text" id="univ_major" name="univ_major" class="box_input info_right_input"
                      placeholder="전공을 입력하세요" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">졸업학점</span>
                    <input type="text" id="univ_grades" name="grades" class="box_input info_right_input2"
                      placeholder="학점을 입력하세요" />
                    <span class="grade">/ 4.5</span>
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
            <div class="resume_career info_form">
              <h3 class="h4">신입/경력</h3>
              <div class="career_select">
                <!-- <div class="btn-group">
                  <button type="button" class="career_btn on" id="new_btn" onclick="show_new()">신입</button>
                  <button type="button" class="career_btn" id="work_btn" onclick="show_work()">경력</button>
                </div> -->
                <span class="info_right_txt">경력 선택</span>
                <select id="career_option" name="career_option">
                  <option value="">경력 선택</option>
                  <option value="신입" class="career_new">신입</option>
                  <option value="1년">1년 ~ 3년</option>
                  <option value="3년">3년 ~ 6년</option>
                  <option value="6년">6년 ~ 10년</option>
                  <option value="10년">10년 이상</option>
                </select>
              </div>

              <div class="career_form" id="work">
                <h3>회사 정보 입력</h3>
                <div class="career_row">
                  <div class="career_input">
                    <span class="info_right_txt">직장명</span>
                    <input type="text" id="career_name" name="career_name" class="box_input info_right_input"
                      placeholder="직장 명을 입력하세요" />
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_input">
                    <span class="info_right_txt">재직기간</span>
                    <input type="text" id="career_period" name="start_date" class="box_input info_right_input"
                      placeholder="근무년수를 입력하세요" />
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_input">
                    <span class="info_right_txt">직급명</span>
                    <input type="text" id="career_position" name="career_position" class="box_input info_right_input"
                      placeholder="직급을 입력하세요" />
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_input">
                    <span class="info_right_txt">근무부서</span>
                    <input type="text" id="career_section" name="career_section" class="box_input info_right_input"
                      placeholder="근무 부서를 입력하세요" />
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_input">
                    <span class="info_right_txt">담당업무</span>
                    <input type="text" id="career_task" name="career_task" class="box_input info_right_input"
                      placeholder="담당 업무를 입력하세요" />
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
            <div class="resume_field info_form2">

              <div class="input_radio_skill">
                <ul>
                  <c:forEach var="jobPS" items="${jobPS}">
                    <li>
                      <input type="radio" name="part_select" id="part_select_front" class="job_id"
                        value="${jobPS.jobId}" />
                      <label for="part_select_front"><em>${jobPS.jobName}</em></label>
                    </li>
                  </c:forEach>
                </ul>
              </div><!-- .input_radio_skill -->

            </div><!-- .resume_field -->
          </div>
          <!-- field -->

          <div class="update_btn">
            <button id="btnInsertResume" type="button">등록완료</button>
          </div>
          <!-- update -->

        </div>
        <!-- resume_update -->
      </div><!-- .container -->
    </div><!-- .resume_wrap -->
    </div>
    </div>
    <!-- body -->
    <script>
      $("#image").on("change", function (event) {
        let file = event.target.files[0];

        let reader = new FileReader();
        reader.onload = function (e) {
          $("#preImage").attr("src", e.target.result);
        }

        reader.readAsDataURL(file);
      });
    </script>
    <script src="/js/main.js"></script>
    <script src="/js/resume.js"></script>
    <%@ include file="../layout/footer.jsp" %>