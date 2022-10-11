<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/header.jsp"%>

<div id="user_wrap">
  <div class="container">
    <div class="recruit_detail_box cf">
      <h2>채용정보</h2>
      <div class="notice_box rd_left">
        <div class="notice_title">
          <h3>공고명</h3>
          <span class="notice_txt"
            >프론트엔드 & 백엔드 개발자 채용 서버개발자 Server Developer</span
          >
        </div>
        <!-- .notice_title -->

        <div class="notice_part">
          <h3>채용분야</h3>
          <span class="notice_txt">프론트엔드</span>
        </div>
        <!-- .notice_part -->

        <div class="notice_dept">
          <h3>채용부서</h3>
          <span class="notice_txt">웹 개발팀</span>
        </div>
        <!-- .notice_dept -->

        <div class="notice_grade">
          <h3>채용직급</h3>
          <span class="notice_txt">사원, 주임, 대리, 과장</span>
        </div>
        <!-- .notice_grade -->

        <div class="notice_task">
          <h3>주요업무</h3>
          <span class="notice_txt"
            >사내 플랫폼과 외부 광고 플랫폼들이 제공하는 기능 및 데이터들을
            통합하고 사용성 개선</span
          >
        </div>
        <!-- .notice_task -->

        <div class="notice_ssar">
          <h3>평균연봉</h3>
          <span class="notice_txt">회사내규에 따름-면접 후 결정</span>
        </div>
        <!-- .notice_ssar -->

        <div class="notice_skill">
          <h3>자격요건</h3>
          <span class="notice_txt">Java, Javascript, jsp, html, css</span>
        </div>
        <!-- .notice_skill -->

        <div class="notice_career">
          <h3>경력</h3>
          <span class="notice_txt">신입</span>
        </div>
        <!-- .notice_career -->

        <div class="notice_benefit">
          <h3>복리후생</h3>
          <span class="notice_txt"
            >4대 보험 적용, 각종 경조금 지원, 식대/교통비 지원, 성과금</span
          >
        </div>
        <!-- .notice_benefit -->

        <div class="notice_dead">
          <h3>공고 마감일</h3>
          <span class="notice_txt">2022.10.19</span>
        </div>
        <!-- .notice_dead -->
      </div>
      <!-- .notice_box .rd_left -->

      <div class="company_box rd_right">
        <span class="company_box_title">기업정보</span>
        <span class="info_logo"><img src="/img/logo_1.png" alt="logo" /></span>
        <span class="info_tit"><em>회사명</em><strong>PROJECT4</strong></span>
        <span class="info_year"
          ><em>설립연도</em><strong>2022.10.07</strong></span
        >
        <span class="info_task"
          ><em>주요업무</em><strong>서버관리 및 프로그램 설계</strong></span
        >
        <span class="info_ssar"><em>평균연봉</em><strong>4000</strong></span>
        <span class="info_benefit"
          ><em>기업복지</em
          ><strong>유연한 출퇴근, 4대보험, 성과금</strong></span
        >
        <div class="company_location">
          <span><em>주소지</em><strong>부산시 부산진구</strong></span>
          <div class="location_img"></div>
        </div>
        <!-- .company_location -->
      </div>
      <!-- .company_box .rd_right -->
      <div class="btn_recruit_insert">
        <button
          class="btn_login"
          type="button"
          onClick="javascript:popOpenRecruit();"
        >
          지원하기
        </button>
      </div>
      <!-- .btn_recruit_insert -->

      <div
        class="modal_select_bg"
        onClick="javascript:popCloseRecruit();"
      ></div>
      <div class="modal_select_wrap">
        <h2>지원할 이력서를 선택하세요</h2>
        <div class="form_box">
          <ul>
            <li class="resume_select_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                  checked
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <span class="tit"
                  >최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span
                >
                <span class="career">신입</span>
                <span class="part">프론트엔드, 백엔드, 풀스택</span>
              </label>
            </li><!-- .resume_select_cont -->
            <li class="resume_select_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <span class="tit"
                  >최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span
                >
                <span class="career">신입</span>
                <span class="part">프론트엔드, 백엔드, 풀스택</span>
              </label>
            </li><!-- .resume_select_cont -->
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
  <%@ include file="../layout/footer.jsp"%>
