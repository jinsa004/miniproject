<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div id="resume_wrap">
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
                    <input type="date" id="employeeBirth" name="employeeBirth" class="box_input info_right_input info_birth_input"
                      value="${employee.employeeBirth}" placeholder="생년월일을 입력하세요" />
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
            <div class="resume_field info_form">
              <div class="field_select">
                <form method="post" action="/#">
                  <ul class="part_box_wrap">
                    <li class="career_part1 part_box form-check">
                      <input type="checkbox" class="login_check" id="jobId" name="프론트엔드" value="프론트엔드" checked>
                      <em>
                        <label class="form-check-label" for="프론트엔드">프론트엔드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box form-check">
                      <input type="checkbox" class="login_check" id="백엔드" name="백엔드" value="백엔드">
                      <em>
                        <label class="form-check-label" for="백엔드">백엔드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box form-check">
                      <input type="checkbox" class="login_check" id="풀스택" name="풀스택" value="풀스택">
                      <em>
                        <label class="form-check-label" for="풀스택">풀스택</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box form-check">
                      <input type="checkbox" class="login_check" id="안드로이드" name="안드로이드" value="안드로이드">
                      <em>
                        <label class="form-check-label" for="안드로이드">안드로이드</label>
                      </em>
                    </li>
                    <li class="career_part1 part_box form-check">
                      <input type="checkbox" class="login_check" id="IOS" name="IOS" value="IOS">
                      <em>
                      <label class="form-check-label" for="IOS">IOS</label>
                      </em>
                    </li>
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
    </div>
    <!-- body -->
    <script>
      $("#btnEmployeeUpdate").click(() => {
        employeeUpdate();
      });
      function employeeUpdate() {
        let employeeId = $("#employeeId").val();
        let data = {
          employeeUsername: $("#employeeUsername").val(),
          employeePassword: $("#employeePassword").val(),
          employeeSex: $("#employeeSex").val(),
          employeeEmail: $("#employeeEmail").val(),
          employeeName: $("#employeeName").val(),
          employeeBirth: $("#employeeBirth").val(),
          employeeTel: $("#employeeTel").val(),
          employeeLocation: $(".employeeLocation").val(),

        };
        console.log(data);
        $.ajax("/emp/employeeInfo/" + employeeId, {
          type: "PUT",
          dataType: "json",
          data: JSON.stringify(data),
          headers: {
            "Content-Type": "application/json; charset=utf-8",
          },
        }).done((res) => {
          if (res.code == 1) {
            console.log(res.msg);
            alert("회원정보 수정 완료");
            location.reload();
          } else {
            alert("업데이트에 실패했습니다.");
            console.log(res.msg);
          }
        });
      }


      $("#btnEmployeeDelete").click(() => {
        employeeDelete();
      });

      function employeeDelete() {
        let employeeId = $("#employeeId").val();

        $.ajax("/emp/employeeInfo/" + employeeId, {
          type: "DELETE",
          dataType: "json"
        }).done((res) => {
          if (res.code == 1) {
            console.log(res.msg);
            alert("회원탈퇴 완료");
            location.href = "/";
          } else {
            alert("회원탈퇴에 실패했습니다.");
            console.log(res.msg);
          }
        });
      }
    </script>
    <%@ include file="../layout/footer.jsp" %>