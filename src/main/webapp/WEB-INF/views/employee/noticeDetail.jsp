<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>univ_
    <input id="noticeId" type="hidden" value="${noticePS.noticeId}" />
    <div id="user_wrap">
      <div class="container">
        <div class="recruit_detail_box cf">
          <h2>채용정보</h2>
          <div class="notice_box rd_left">
            <div class="notice_title">
              <h3>공고명</h3>
              <span class="notice_txt">${noticePS.noticeTitle}</span>
            </div>
            <!-- .notice_title -->

            <div class="notice_part">
              <h3>채용분야</h3>
              <span class="notice_txt">${noticePS.jobName}</span>
            </div>
            <!-- .notice_part -->

            <div class="notice_dept">
              <h3>채용부서</h3>
              <span class="notice_txt">${noticePS.noticeDept}</span>
            </div>
            <!-- .notice_dept -->

            <div class="notice_grade">
              <h3>채용직급</h3>
              <span class="notice_txt">${noticePS.noticePosition}</span>
            </div>
            <!-- .notice_grade -->

            <div class="notice_task">
              <h3>주요업무</h3>
              <span class="notice_txt">${noticePS.noticeTask}</span>
            </div>
            <!-- .notice_task -->

            <div class="notice_ssar">
              <h3>평균연봉</h3>
              <span class="notice_txt">${noticePS.noticeSal}</span>
            </div>
            <!-- .notice_ssar -->

            <div class="notice_skill">
              <h3>자격요건</h3>
              <span class="notice_txt">${noticePS.noticeQual}</span>
            </div>
            <!-- .notice_skill -->

            <div class="notice_career">
              <h3>경력</h3>
              <span class="notice_txt">${noticePS.noticeCareer}</span>
            </div>
            <!-- .notice_career -->

            <div class="notice_benefit">
              <h3>복리후생</h3>
              <span class="notice_txt">${noticePS.noticeWellfare}</span>
            </div>
            <!-- .notice_benefit -->

            <div class="notice_dead">
              <h3>공고 마감일</h3>
              <span class="notice_txt">${noticePS.noticePeriod}</span>
            </div>
            <!-- .notice_dead -->
          </div>
          <!-- .notice_box .rd_left -->

          <div class="company_box rd_right">
            <span class="company_box_title">기업정보</span>
            <span class="info_logo"><img src="/img/logo_1.png" alt="logo" /></span>
            <span class="info_tit"><em>회사명</em><strong>${noticePS.introTitle}</strong></span>
            <span class="info_year"><em>설립연도</em><strong>${noticePS.introBirth}</strong></span>
            <span class="info_task"><em>주요업무</em><strong>${noticePS.introTask}</strong></span>
            <span class="info_ssar"><em>평균연봉</em><strong>${noticePS.introSal}</strong></span>
            <span class="info_benefit"><em>기업복지</em><strong>${noticePS.introWellfare}</strong></span>
            <div class="company_location">
              <span><em>주소지</em><strong>${noticePS.introLocation}</strong></span>
              <div class="location_img"></div>
            </div>
            <!-- .company_location -->
          </div>
          <!-- .company_box .rd_right -->
          <div class="btn_recruit_insert">
            <button class="btn_login" type="button" onClick="javascript:popOpenRecruit();">
              지원하기
            </button>
          </div>
          <!-- .btn_recruit_insert -->

          <div class="modal_select_bg" onClick="javascript:popCloseRecruit();"></div>
          <div class="modal_select_wrap">
            <h2>지원할 이력서를 선택하세요</h2>
            <div class="form_box">
              <ul>
                <c:forEach var="resumePS" items="${resumePS}">
                  <li class="resume_select_cont">
                    <span class="input_radio">
                      <input type="radio" name="resume_select" id="resume_select" value="${resumePS.resumeId}" />
                    </span>
                    <label for="resume_select" class="resume_select_box">
                      <span class="tit">${resumePS.resumeTitle}</span>
                      <span class="career">${resumePS.careerPeriod}</span>
                      <span class="part">${resumePS.jobName}</span>
                    </label>
                  </li><!-- .resume_select_cont -->
                </c:forEach>
              </ul>
            </div><!-- .form_box -->
            <button id="btn_recruit" type="button" class="btn btn-primary">
              지원하기
            </button>
          </div>
          <!-- .modal_select_wrap -->
        </div><!-- .recruit_detail_box -->
      </div>
      <!-- .container -->
    </div>
    <!-- #wrap -->
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>