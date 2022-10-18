<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>
    <div id="company_wrap">
      <div class="container2">
        <section>
          <div class="notice_box">
            <section id="resume_wrap">
              <div class="container">
                <div class="resume_update">
                  <input id="employeeId" type="hidden" value="${principal.employeeId}">
                  <div class="title_update">
                    <h1>이력서제목의 이력서 입니다.</h1>
                  </div>
                  <div id="info" class="form">
                    <div class="form_title">
                      <h2 class="title title2">기본정보</h2>
                    </div>
                    <div class="info_form cf">
                      <div class="info_left">
                        <div class="info_img">
                          <img src="assets/resume/face1.jpg" width="100" height="140" />
                        </div>
                      </div><!-- .info_left -->
                      <div class="info_right">
                        <input id="employeeId" type="hidden" value="${employeePS.employeeId}" />
                        <dl class="info_name">
                          <dd class="name">
                            <span class="resumeDetail_title">이름</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeName}
                            </p>
                          </dd>
                          <dd class="sex">
                            <span class="resumeDetail_title">성별</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeSex}
                            </p>
                          </dd>
                          <dd class="birth">
                            <span class="resumeDetail_title">생년월일</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeBirth}
                            </p>
                          </dd>
                        </dl>
                        <dl class="info_basic">
                          <dd class="info_list_item">
                            <span class="resumeDetail_title">이메일</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeEmail}
                            </p>
                          </dd>
                          <dd class="info_list_item">
                            <span class="resumeDetail_title">전화번호</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeTel}
                            </p>
                          </dd>
                          <dd class="info_list_item">
                            <span class="resumeDetail_title">주소</span>
                            <p class="rewumeDetail_txt">
                              ${resume.employeeLocation}
                            </p>
                          </dd>
                        </dl>
                      </div><!-- .info_right -->
                    </div><!-- .info_form -->
                  </div>
                  <!-- info -->
                  <c:choose>
                    <c:when test="${empty resume.highschoolName}">
                      <div id="edu" class="form">
                        <div class="form_title">
                          <h2 class="title">학력사항</h2>
                          <span>최종학력 ｜ <strong>대학교 졸업</strong></span>
                        </div>
                        <div class="resume_edu">
                          <div class="resume_table">
                            <table cellspacing="0" cellpadding="0">
                              <caption>학력</caption>
                              <colgroup>
                                <col width="25%">
                                <col width="*">
                                <col width="10%">
                                <col width="10%">
                                <col width="15%">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th scope="col">재학기간</th>
                                  <th scope="col">학교명</th>
                                  <th scope="col">전공</th>
                                  <th scope="col">구분</th>
                                  <th scope="col">학점</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td class="resume_table_center" rowspan="1">
                                    ${resume.univStartdate} - ${resume.univEnddate}
                                  </td>
                                  <td class="resume_table_center">
                                    ${resume.univName}
                                  </td>
                                  <td class="resume_table_center">
                                    ${resume.univMajor}
                                  </td>
                                  <td class="resume_table_center" rowspan="1">
                                    졸업
                                  </td>
                                  <td class="resume_table_center">
                                    ${resume.univGrades} /4.5
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div><!-- .resume_table -->
                        </div><!-- .resume_edu -->
                      </div><!-- .edu -->
                    </c:when>
                    <c:otherwise>
                      <div id="edu" class="form">
                        <div class="form_title">
                          <h2 class="title">학력사항</h2>
                          <span>최종학력 ｜ <strong>고등학교 졸업</strong></span>
                        </div>
                        <div class="resume_edu">
                          <div class="resume_table">
                            <table cellspacing="0" cellpadding="0">
                              <caption>학력</caption>
                              <colgroup>
                                <col width="25%">
                                <col width="*">
                                <col width="10%">
                                <col width="10%">
                                <col width="15%">
                              </colgroup>
                              <thead>
                                <tr>
                                  <th scope="col">재학기간</th>
                                  <th scope="col">학교명</th>
                                  <th scope="col">전공</th>
                                  <th scope="col">구분</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td class="resume_table_center" rowspan="1">
                                    ${resume.highschoolStartdate} - ${resume.highschoolEnddate}
                                  </td>
                                  <td class="resume_table_center">
                                    ${resume.highschoolName}
                                  </td>
                                  <td class="resume_table_center">
                                    ${resume.highschoolMajor}
                                  </td>
                                  <td class="resume_table_center" rowspan="1">
                                    졸업
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div><!-- .resume_table -->
                        </div><!-- .resume_edu -->
                      </div><!-- .edu -->
                    </c:otherwise>
                  </c:choose>
                  <div id="career" class="form">
                    <div class="form_title">
                      <h2 class="title">경력사항</h2>
                      <span>경력 ｜ <strong>신입</strong></span>
                    </div>
                    <div class="resume_career">
                      <div class="resume_table">
                        <table cellspacing="0" cellpadding="0">
                          <caption>경력</caption>
                          <colgroup>
                            <col width="25%">
                            <col width="*">
                            <col width="20%">
                            <col width="20%">
                          </colgroup>
                          <thead>
                            <tr>
                              <th scope="col">근무기간</th>
                              <th scope="col">직장명</th>
                              <th scope="col">직급/직책</th>
                              <th scope="col">부서명</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td class="resume_table_center" rowspan="2">
                                ${resume.careerPeriod}
                              </td>
                              <td class="resume_table_center">
                                ${resume.prevCo}
                              </td>
                              <td class="resume_table_center">
                                ${resume.careerPosition}
                              </td>
                              <td class="resume_table_center" rowspan="1">
                                ${resume.careerDepartment}
                              </td>
                            </tr>
                            <tr>
                              <td class="" colspan="3">
                                <p>
                                  <span class="table_icon">담당업무</span>${resume.careerTask}
                                </p>
                              </td>
                            </tr>
                            </tr>
                          </tbody>
                        </table>
                      </div><!-- .resume_table -->
                    </div>
                  </div>
                  <!-- career -->

                  <div id="part" class="form">
                    <div class="form_title">
                      <h2 class="title">관심분야</h2>
                    </div>
                    <div class="resume_part">
                      <span class="resume_part_select">프론트엔드</span>
                      <span class="resume_part_select">백엔드</span>
                    </div>
                  </div> <!-- #part -->

                  <div class="contact_btn">
                    <button type="button" onclick="location.href='#'">
                      컨택하기
                    </button>
                  </div>
                  <!-- update -->
                  <!-- resume_update -->
                </div><!-- .container -->
              </div><!-- .resume_wrap -->
          </div>
        </section>
      </div>
    </div>
    </div><!-- .company_wrap -->
    <script src="/js/main.js"></script>
    <script src="/js/company.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>