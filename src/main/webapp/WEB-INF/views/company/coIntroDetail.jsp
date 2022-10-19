<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">
      <div id="intro_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="title_update">
              <h1>기업 소개</h1>
            </div>
            <div id="logo_info" class="form">
              <div class="form_title">
                <h2 class="title">회사로고</h2>
              </div>
              <div class="logo_form">
                <div class="info_img">
                  <form method="post" action="/resume_detail" enctype="multipart/form-data">
                    <span class="info_myimg">
                      <img src="">
                    </span>
                  </form>
                </div>
              </div><!-- .logo_form -->
            </div>
            <!-- logo -->
            <input id="companyId" type="hidden" value="${coprincipal.companyId}" />
            <div id="basic_info" class="form">
              <div class="form_title">
                <h2 class="title">회사 정보</h2>
              </div>
              <div class="info_form">
                <div class="info_left margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">회사명</span>
                    <input type="text" id="companyName" name="basic_name" class="box_input info_right_input"
                      value="${introPS.companyName}" placeholder="회사명을 입력하세요" readonly />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">설립년도</span>
                    <input type="text" id="introBirth" name="basic_birth" class="box_input info_right_input"
                      value="${introPS.introBirth}" placeholder="설립년도를 입력하세요" readonly />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">주요업무</span>
                    <input type="text" id="introTask" name="basic_task" class="box_input info_right_input"
                      value="${introPS.introTask}" placeholder="주요 업무를 입력하세요" readonly />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">평균연봉</span>
                    <input type="text" id="introSal" name="basic_sal" class="box_input info_right_input"
                      value="${introPS.introSal}" placeholder="평균연봉을 입력하세요" readonly />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">기업복지</span>
                    <input type="text" id="introWellfare" name="basic_welfare" class="box_input info_right_input"
                      value="${introPS.introWellfare}" placeholder="복리후생을 입력하세요" readonly />
                  </div>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">회사소개</span>
                    <input type="text" id="introContent" name="basic_content" class="box_input info_right_input3"
                      value="${introPS.introContent}" placeholder="회사소개를 입력하세요" readonly />
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
                        <input type="text" id="sample6_postcode" class="introLocation" value="${introPS.introLocation}"
                          placeholder="회사위치를 입력하세요" readonly>
                      </div>
                    </div>
                  </div>
                </div><!-- .location_wrap -->

              </div>
            </div>
            <!-- basic -->
            <div id="field" class="form">
              <div class="form_title">
                <h2 class="title">관심분야</h2>
              </div>
              <div class="resume_field info_form2">

                <div class="input_radio_skill">
                  <ul>
                    <c:forEach var="jobPS" items="${jobPS}">
                      <li>
                        <input type="radio" name="job_id" id="part_select_front" class="job_id" value="${jobPS.jobId}"
                          <c:if test="${jobPS.jobId eq intro.jobId}">checked</c:if>/>
                        <label for="part_select_front"><em>${jobPS.jobName}</em></label>
                      </li>
                    </c:forEach>
                  </ul>
                </div><!-- .input_radio_skill -->

              </div><!-- .resume_field -->
            </div>
            <!-- field -->

            <div class="btn_group">
              <div class="update_btn">
                <a href="/cs/co/companyIntroUpdate/${coprincipal.companyId}" class="btnInsertCompany_go">수정하러가기</a>
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
    <%@ include file="../layout/footerCompany.jsp" %>