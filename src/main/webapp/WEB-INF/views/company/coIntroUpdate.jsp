<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">
      <div id="intro_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="title_update">
              <h1>기업 소개 관리</h1>
            </div>
            <div id="logo_info" class="form">
              <div class="form_title">
                <h2 class="title">회사로고</h2>
              </div>
              <div class="logo_form">
                <div class="info_img">
                  <form method="post" action="/resume_detail" enctype="multipart/form-data">
                    <span class="info_myimg">
                      <img src="/img/logo_1.png">
                    </span>
                    <div class="logo_img_right">
                      <input type="file" name="file" id="files" class="hidden" />
                      <button type="submit" class="file_submit">파일전송</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- logo -->
            <input id="introId" type="hidden" value="${intro.introId}" />
            <div id="basic_info" class="form">
              <div class="form_title">
                <h2 class="title">회사 정보</h2>
              </div>
              <div class="info_form">
                <div class="info_left margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">회사명</span>
                    <input type="text" id="companyName" name="basic_name" class="box_input info_right_input"
                      value="${intro.companyName}" placeholder="회사명을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">설립년도</span>
                    <input type="text" id="introBirth" name="basic_birth" class="box_input info_right_input"
                      value="${intro.introBirth}" placeholder="설립년도를 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">주요업무</span>
                    <input type="text" id="introTask" name="basic_task" class="box_input info_right_input"
                      value="${intro.introTask}" placeholder="주요 업무를 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">평균연봉</span>
                    <input type="text" id="introSal" name="basic_sal" class="box_input info_right_input"
                      value="${intro.introSal}" placeholder="평균연봉을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">기업복지</span>
                    <input type="text" id="introWellfare" name="basic_welfare" class="box_input info_right_input"
                      value="${intro.introWellfare}" placeholder="복리후생을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">회사소개</span>
                    <input type="text" id="introContent" name="basic_content" class="box_input info_right_input3"
                      value="${intro.introContent}" placeholder="회사소개를 입력하세요" />
                  </div>
                </div>
                <div class="basic_row location_wrap">
                  <div class="basic_input cf">
                    <span class="info_right_txt info_right_txt2">회사위치</span>
                    <div class="basic_location">
                      <div class="location_map">
                        지도
                      </div>
                      <div class="location_info">
                        <input type="text" id="sample6_postcode" placeholder="우편번호">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn_post">
                        <input type="text" id="sample6_address" placeholder="주소">
                        <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                        <!-- <input type="text" id="sample6_extraAddress" placeholder="참고항목"> -->
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- basic -->

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
                        <input type="checkbox" class="login_check" id="jobId" name="" />
                        <em>
                          <label for="c_part_front">백엔드</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box">
                        <input type="checkbox" class="login_check" id="jobId" name="" />
                        <em>
                          <label for="c_part_front">풀스택</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box">
                        <input type="checkbox" class="login_check" id="jobId" name="" />
                        <em>
                          <label for="c_part_front">안드로이드</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box">
                        <input type="checkbox" class="login_check" id="jobId" name="" />
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

            <div class="btn_group">
              <div class="update_btn">
                <button id="btnInsertCompany" type="button" class="btn btn-primary">수정완료</button>
              </div>
            </div>
            <!-- btn -->

          </div><!-- .intro_update -->
        </div><!-- .container -->
      </div><!-- .intro_wrap -->
    </div>
    <!-- company_update -->
    </div>
    </div>
    <!-- body -->
    <script>
      function sample6_execDaumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            var addr = '';
            var extraAddr = '';
            if (data.userSelectedType === 'R') {
              addr = data.roadAddress;
            } else {
              addr = data.jibunAddress;
            }
            if (data.userSelectedType === 'R') {
              if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              if (data.buildingName !== '' && data.apartment === 'Y') {
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              if (extraAddr !== '') {
                extraAddr = ' (' + extraAddr + ')';
              }
              document.getElementById("sample6_extraAddress").value = extraAddr;
            } else {
              document.getElementById("sample6_extraAddress").value = '';
            }
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            document.getElementById("sample6_detailAddress").focus();
          }
        }).open();
      }
    </script>

    <script>
      $("#btnUpdate").click(() => {
        console.log("클릭됨");
        console.log($("#introId").val());
        update();
      });
      function update() {
        let data = {
          companyName: $("#companyName").val(),
          introBirth: $("#introBirth").val(),
          introTask: $("#introTask").val(),
          introSal: $("#introSal").val(),
          introWellfare: $("#introWellfare").val(),
          introContent: $("#introContent").val(),
          jobName: $("#jobName").val()
        }
        let introId = $("#introId").val();
        console.log("업데이트확인");
        $.ajax("/co/companyIntroUpdate/" + introId + "/update", {
          type: "PUT",
          dataType: "json", // 응답 데이터
          data: JSON.stringify(data), // http body에 들고갈 요청 데이터
          headers: {
            // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8",
          },
        }).done((res) => {
          if (res.code == 1) {
            alert("기업소개 수정 완료");
            location.reload;
          } else {
            alert("업데이트에 실패하였습니다");
          }
        });
      }
    </script>
    <%@ include file="../layout/footerCompany.jsp" %>