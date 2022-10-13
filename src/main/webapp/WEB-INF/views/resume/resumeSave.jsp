<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div id="resume_wrap">
      <div class="container">
        <div class="resume_update">
          <input id="employeeId" type="hidden" value="${principal.employeeId}" />
          <div class="resume_title">
            <div class="title_update">
              <div class="title_input">
                <input type="text" class="resume_title_input" placeholder="이력서 제목을 입력해 주세요" value="" maxlength="35">
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
                  <form method="post" action="/resume_detail" enctype="multipart/form-data">
                    <span class="info_myimg">
                      <img src="">
                    </span>
                    <input type="file" name="file" id="files" class="hidden" />
                    <button type="submit" class="file_submit">파일전송</button>
                  </form>
                </div>
              </div><!-- .info_left -->
              <div class="info_right">
                <input id="employeeId" type="hidden" value="${employeePS.employeeId}" />
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
                    </p>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">재학기간</span>
                    <input type="text" id="highschool_start_date" name="start_date" class="box_input info_right_input2"
                      placeholder="입학년도" />
                    <input type="text" id="highschool_end_date" name="end_date" class="box_input info_right_input2"
                      placeholder="졸업년도" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">전공계열</span>
                    <input type="text" id="highschool_major" name="highschool_major" class="box_input info_right_input"
                      placeholder="전공계열" />
                  </div>
                </div>
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
                    <input type="text" id="univ_start_date" name="start_date" class="box_input info_right_input2"
                      placeholder="입학년도" />
                    <input type="text" id="univ_end_date" name="end_date" class="box_input info_right_input2"
                      placeholder="졸업년도" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">전공</span>
                    <input type="text" id="univ_major" name="univ_major" class="box_input info_right_input"
                      placeholder="전공 입력" />
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_input">
                    <span class="info_right_txt">졸업학점</span>
                    <input type="text" id="grades" name="grades" class="box_input info_right_input2"
                      placeholder="학점 입력" />
                    <span>/ 4.5</span>
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
              <div class="career_select">
                <div class="btn-group">
                  <button type="button" class="career_btn on" id="new_btn" onclick="show_new()">신입</button>
                  <button type="button" class="career_btn" id="work_btn" onclick="show_work()">경력</button>
                </div>
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
                      placeholder="신입 or 근무년수 입력" />
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
              <div class="field_select">
                <div class="select-group">
                  <ul class="part_box_wrap">
                    <li class="career_part1 part_box">
                      <input type="checkbox" class="login_check" id="jobId" name="" checked />
                      <em>
                        <label for="c_part_front">프론트엔드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box">
                      <input type="checkbox" class="login_check" id="jobId" name=""/>
                      <em>
                        <label for="c_part_front">백엔드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box">
                      <input type="checkbox" class="login_check" id="jobId" name=""/>
                      <em>
                        <label for="c_part_front">풀스택</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box">
                      <input type="checkbox" class="login_check" id="jobId" name=""/>
                      <em>
                        <label for="c_part_front">안드로이드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box">
                      <input type="checkbox" class="login_check" id="jobId" name=""/>
                      <em>
                        <label for="c_part_front">IOS</label>
                      </em>
                    </li>
                  </ul>

                  <c:forEach var="jobPS" items="${jobPS}">
                    <input type='checkbox' id='jobId' name='jobId' value="${jobPS.jobId}" />${jobPS.jobName}
                    <br>
                  </c:forEach>
                </div>
              </div>
            </div>
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
      $("#btnInsertResume").click(() => {
        insertResume();
      });

      function insertResume() {
        let data = {
          resumeName: $("#highschool_name").val(),
          employeeId: $("#employeeId").val(),
          resumeImage: $("#files").val(),
          highschoolName: $("#highschool_name").val(),
          highschoolStartdate: $("#highschool_start_date").val(),
          highschoolEnddate: $("#highschool_end_date").val(),
          highschoolMajor: $("#highschool_major").val(),
          univName: $("#univ_name").val(),
          univStartdate: $("#univ_start_date").val(),
          univEnddate: $("#univ_end_date").val(),
          univMajor: $("#univ_major").val(),
          univGrades: $("#grades").val(),
          prevCo: $("#career_name").val(),
          careerPeriod: $("#career_period").val(),
          careerPosition: $("#career_position").val(),
          careerDepartment: $("#career_section").val(),
          careerTask: $("#career_task").val(),
          jobId: $('input[id=jobId]:checked').val()
        };



        $.ajax("/emp/resumeSave", {
          type: "POST",
          dataType: "json", // 응답 데이터
          data: JSON.stringify(data), // http body에 들고갈 요청 데이터
          headers: {
            // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8",
          },
        }).done((res) => {
          if (res.code == 1) {
            alert("이력서 등록 완료");
            location.href = "/emp/mypageInsertForm";
          } else {
            alert("등록에 실패하였습니다");
          }
        })
      }
    </script>

    <script>
      function show_highschool() {
        var con1 = document.getElementById("highschool");
        var con2 = document.getElementById("univ");
        var con3 = document.getElementById("high_btn");
        var con4 = document.getElementById("univ_btn");
        if (con3.style.background != '#4876ef') {
          con1.style.display = 'block';
          con2.style.display = 'none';
          con3.style.background = '#4876ef';
          con3.style.color = '#fff';
          con4.style.background = '#fff';
          con4.style.color = '#333';
        } else {
          con1.style.display = 'none';
          con3.style.background = '#fff';
          con3.style.color = '#333';
        }
      }

      function show_univ() {
        var con1 = document.getElementById("univ");
        var con2 = document.getElementById("highschool");
        var con3 = document.getElementById("high_btn");
        var con4 = document.getElementById("univ_btn");
        if (con4.style.background != '#4876ef') {
          con1.style.display = 'block';
          con2.style.display = 'none';
          con4.style.background = '#4876ef';
          con4.style.color = '#fff';
          con3.style.background = '#fff';
          con3.style.color = '#333';
        } else {
          con1.style.display = 'none';
          con4.style.background = '#fff';
          con4.style.color = '#333';
        }
      }

      function show_new() {
        var con1 = document.getElementById("work");
        var con2 = document.getElementById("new_btn");
        var con3 = document.getElementById("work_btn");
        if (con2.style.background != '#4876ef') {
          con1.style.display = 'none';
          con2.style.background = '#4876ef';
          con2.style.color = '#fff';
          con3.style.background = '#fff';
          con3.style.color = '#333';
        } else {
          con2.style.background = '#fff';
          con2.style.color = '#333';
        }
      }

      function show_work() {
        var con1 = document.getElementById("work");
        var con2 = document.getElementById("new_btn");
        var con3 = document.getElementById("work_btn");
        if (con3.style.background != '#4876ef') {
          con1.style.display = 'block';
          con3.style.background = '#4876ef';
          con3.style.color = '#fff';
          con2.style.background = '#fff';
          con2.style.color = '#333';
        } else {
          con1.style.display = 'none';
          con3.style.background = '#fff';
          con3.style.color = '#333';
        }
      }
    </script>

    <%@ include file="../layout/footer.jsp" %>