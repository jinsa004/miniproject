<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>
  <div id="company_wrap">
    <input id="companyId" type="hidden" value="${principal.companyId}" />
    <div class="company_update">
      <div id="co_notice_wrap">
        <div class="container2">
          <section>
            <div class="notice_box">
              <section id="notice_wrap">
                <div class="container">
                  <div class="intro_update">
                    <div class="recruit_detail_box">
                      <div class="title_update2">
                        <h1>기업 공고 등록</h1>
                      </div>
                      <div class="notice_box rd_left notice_box2">
                        <div class="notice_title">
                          <h3>공고명</h3>
                          <input type="text" id="noticeTitle" name="basic_name" class="box_input info_right_input"
                            placeholder="공고 제목을 입력하세요" />
                        </div>
                        <!-- .notice_title -->

                        <div class="notice_part">
                          <div id="field" class="form">
                            <h3>채용분야</h3>
                            <div class="resume_field info_form3">
                              
                              <!-- 수정중 -->
                              <div class="input_radio_skill">
                                <ul>
                                  <li>
                                    <input type="radio" name="skill_select" id="skill_select_high"
                                      class="noticeQual" value="고졸" checked />
                                    <label for="skill_select_high"><em>고졸</em></label>
                                  </li>
                                  <li>
                                    <input type="radio" name="skill_select" id="skill_select_univ"
                                      class="noticeQual" value="대졸" />
                                    <label for="skill_select_univ"><em>대졸</em></label>
                                  </li>
                                </ul>
                              </div><!-- .input_radio_skill -->
                              <!-- 수정중 -->

                                  <div class="notice_dept">
                                    <h3>채용부서</h3>
                                    <input type="text" id="noticeDept" name="basic_name"
                                      class="box_input info_right_input4" placeholder="채용부서를 입력하세요" / maxlength="20">
                                  </div>
                                  <!-- .notice_dept -->

                                  <div class="notice_grade">
                                    <h3>채용직급</h3>
                                    <input type="text" id="noticePosition" name="basic_name"
                                      class="box_input info_right_input4" placeholder="채용직급을 입력하세요" / maxlength="20">
                                  </div>
                                  <!-- .notice_grade -->

                                  <div class="notice_task">
                                    <h3>주요업무</h3>
                                    <input type="text" id="noticeTask" name="basic_name"
                                      class="box_input info_right_input5" placeholder="주요업무를 입력하세요" />
                                  </div>
                                  <!-- .notice_task -->

                                  <div class="notice_ssar">
                                    <h3>평균연봉</h3>
                                    <input type="text" id="noticeSal" name="basic_name"
                                      class="box_input info_right_input4" placeholder="평균연봉을 입력하세요" / maxlength="20">
                                  </div>
                                  <!-- .notice_ssar -->

                                  <div class="notice_skill">
                                    <h3>자격요건</h3>
                                    <div class="input_radio_skill">
                                      <ul>
                                        <li>
                                          <input type="radio" name="skill_select" id="skill_select_high"
                                            class="noticeQual" value="고졸" checked />
                                          <label for="skill_select_high"><em>고졸</em></label>
                                        </li>
                                        <li>
                                          <input type="radio" name="skill_select" id="skill_select_univ"
                                            class="noticeQual" value="대졸" />
                                          <label for="skill_select_univ"><em>대졸</em></label>
                                        </li>
                                      </ul>
                                    </div><!-- .input_radio_skill -->
                                  </div>
                                  <!-- .notice_skill -->

                                  <div class="notice_career">
                                    <h3>경력</h3>
                                    <input type="text" id="noticeCareer" name="basic_name"
                                      class="box_input info_right_input4" placeholder="경력을 입력하세요" / maxlength="20">
                                  </div>
                                  <!-- .notice_career -->

                                  <div class="notice_benefit">
                                    <h3>복리후생</h3>
                                    <input type="text" id="noticeWellfare" name="basic_name"
                                      class="box_input info_right_input5" placeholder="복리후생을 입력하세요" />
                                  </div>
                                  <!-- .notice_benefit -->

                                  <div class="notice_dead">
                                    <h3>공고 마감일</h3>
                                    <input type="date" id="noticePeriod" name="basic_name"
                                      class="box_input info_right_input6" placeholder="공고마감일을 입력하세요" / maxlength="20">
                                  </div>
                                  <!-- .notice_dead -->
                                </div>
                                <!-- .notice_box .rd_left -->

                                <div class="btn_co_recruit_insert2">
                                  <button type="button" class="btn_recruit_insert2"
                                    id="btnInsertNotice">공고등록</button>
                                </div><!-- .btn_co_recruit_insert2 -->
                              </div><!-- .recruit_detail_box -->
                            </div><!-- .intro_update -->
                          </div><!-- .container -->
              </section><!-- .resume_wrap -->
            </div><!-- .notice_box -->
          </section>
        </div>
      </div>
    </div>
  </div>
    <script src="/js/notice.js"></script>
    <script src="/js/main.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>