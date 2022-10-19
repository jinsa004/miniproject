<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <input id="notice_id" type="hidden" value="${noticePS.noticeId}" />
    <input id="company_id" type="hidden" value="${noticePS.companyId}" />
    <div class="company_update">
      <div id="co_resume_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="recruit_detail_box cf">
              <div class="title_update">
                <h1>기업 채용 공고 수정하기</h1>
              </div>
              <div class="notice_box rd_left notice_box3">
                <div class="notice_title">
                  <h3>공고명</h3>
                  <input type="text" id="notice_title" name="basic_name" class="box_input info_right_input"
                    value="${noticePS.noticeTitle}" placeholder="공고 제목을 입력하세요" />
                </div>
                <!-- .notice_title -->

                <div class="notice_part">
                  <div id="field" class="form">
                    <h3>채용분야</h3>
                    <div class="resume_field">
                      <div class="input_radio_skill">
                        <ul>
                          <c:forEach var="jobPS" items="${jobPS}">
                            <li>
                              <input type="radio" name="part_select" id="part_select_front" class="job_id"
                                value="${jobPS.jobId}" <c:if test="${jobPS.jobId eq noticePS.jobId}">checked</c:if> />
                              <label for="part_select_front"><em>${jobPS.jobName}</em></label>
                            </li>
                          </c:forEach>
                        </ul>
                      </div><!-- .input_radio_skill -->
                    </div>
                    <!-- .notice_part -->

                    <div class="notice_dept">
                      <h3>채용부서</h3>
                      <input type="text" id="notice_dept" name="basic_name" class="box_input info_right_input4"
                        value="${noticePS.noticeDept}" placeholder="채용부서를 입력하세요" maxlength="20">
                    </div>
                    <!-- .notice_dept -->

                    <div class="notice_grade">
                      <h3>채용직급</h3>
                      <input type="text" id="notice_position" name="basic_name" class="box_input info_right_input4"
                        value="${noticePS.noticePosition}" placeholder="채용직급을 입력하세요" maxlength="20">
                    </div>
                    <!-- .notice_grade -->

                    <div class="notice_task">
                      <h3>주요업무</h3>
                      <input type="text" id="notice_task" name="basic_name" class="box_input info_right_input5"
                        value="${noticePS.noticeTask}" placeholder="주요업무를 입력하세요" />
                    </div>
                    <!-- .notice_task -->

                    <div class="notice_ssar">
                      <h3>평균연봉</h3>
                      <input type="text" id="notice_sal" name="basic_name" class="box_input info_right_input4"
                        value="${noticePS.noticeSal}" placeholder="평균연봉을 입력하세요" maxlength="20">
                    </div>
                    <!-- .notice_ssar -->

                    <div class="notice_skill">
                      <h3>자격요건</h3>
                      <div class="input_radio_skill">
                        <ul>
                          <li>
                            <input type="radio" name="skill_select" id="skill_select_high" class="notice_qual"
                              value="고졸" <c:if test="${noticePS.noticeQual eq '고졸'}">checked</c:if> />
                            <label for="skill_select_high"><em>고졸</em></label>
                          </li>
                          <li>
                            <input type="radio" name="skill_select" id="skill_select_univ" class="notice_qual"
                              value="대졸" <c:if test="${noticePS.noticeQual eq '대졸'}">checked</c:if>/>
                            <label for="skill_select_univ"><em>대졸</em></label>
                          </li>
                        </ul>
                      </div><!-- .input_radio_skill -->
                    </div>
                    <!-- .notice_skill -->

                    <div class="notice_career">
                      <h3>경력</h3>
                      <input type="text" id="notice_career" name="basic_name" class="box_input info_right_input4"
                        value="${noticePS.noticeCareer}" placeholder="경력을 입력하세요" maxlength="20">
                    </div>
                    <!-- .notice_career -->

                    <div class="notice_benefit">
                      <h3>복리후생</h3>
                      <input type="text" id="company_wellfare" name="basic_name" class="box_input info_right_input5"
                        value="${noticePS.noticeWellfare}" placeholder="복리후생을 입력하세요" />
                    </div>
                    <!-- .notice_benefit -->

                    <div class="notice_dead">
                      <h3>공고 마감일</h3>
                      <input type="date" id="notice_period" name="basic_name" class="box_input info_right_input6"
                        value="2022-10-16" placeholder="${noticePS.noticePeriod}" maxlength="20">
                    </div>
                    <!-- .notice_dead -->
                  </div>
                  <!-- .notice_box .rd_left -->
                  <div class="btn_co_recruit_insert2">
                    <button id="btnUpdateNotice" class="btn_update" type="button">
                      수정완료
                    </button>
                    <button id="btnDeleteNotice" class="btn_delete" type="button">
                      삭제하기
                    </button>
                    </button>
                  </div>
                </div>
              </div>
              <!-- .modal_select_wrap -->
            </div><!-- .recruit_detail_box -->
          </div>
          <!-- .container -->
        </div>
      </div>
      <!-- #wrap -->

      <script src="/js/main.js"></script>
      <script src="/js/notice.js"></script>
      <%@ include file="../layout/footerCompany.jsp" %>