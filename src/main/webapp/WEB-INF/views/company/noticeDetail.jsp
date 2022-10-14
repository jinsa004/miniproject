<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/headerMypageCompany.jsp"%>
<div class="company_update">
<div id="co_resume_wrap">
  <div class="container">
    <div class="intro_update">
    <div class="recruit_detail_box cf">
      <div class="title_update">
        <h1>기업 공고 관리</h1>
      </div>
      <div class="notice_box rd_left">
        <div class="notice_title">
          <h3>공고명</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input"
                      value="" placeholder="공고 제목을 입력하세요" />
        </div>
        <!-- .notice_title -->

        <div class="notice_part">
          <h3>채용분야</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input4"
                      value="" placeholder="채용분야를 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_part -->

        <div class="notice_dept">
          <h3>채용부서</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input4"
                      value="" placeholder="채용부서를 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_dept -->

        <div class="notice_grade">
          <h3>채용직급</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input4"
                      value="" placeholder="채용직급을 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_grade -->

        <div class="notice_task">
          <h3>주요업무</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input5"
                      value="" placeholder="주요업무를 입력하세요" />
        </div>
        <!-- .notice_task -->

        <div class="notice_ssar">
          <h3>평균연봉</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input4"
                      value="" placeholder="평균연봉을 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_ssar -->

        <div class="notice_skill">
          <h3>자격요건</h3>
          <div class="input_radio_skill">
            <ul>
              <li>
                <input
                        type="radio"
                        name="skill_select"
                        id="skill_select_high"
                        value=""
                        checked
                      />
                <label for="skill_select_high"><em>고졸</em></label>
              </li>
        <li>
          <input
                  type="radio"
                  name="skill_select"
                  id="skill_select_univ"
                  value=""
                />
          <label for="skill_select_univ"><em>대졸</em></label>
        </li>
      </ul>
        </div><!-- .input_radio_skill -->
        </div>
        <!-- .notice_skill -->

        <div class="notice_career">
          <h3>경력</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input4"
                      value="" placeholder="경력을 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_career -->

        <div class="notice_benefit">
          <h3>복리후생</h3>
          <input type="text" id="" name="basic_name" class="box_input info_right_input5"
                      value="" placeholder="복리후생을 입력하세요" />
        </div>
        <!-- .notice_benefit -->

        <div class="notice_dead">
          <h3>공고 마감일</h3>
          <input type="date" id="" name="basic_name" class="box_input info_right_input6"
                      value="" placeholder="공고마감일을 입력하세요" / maxlength="20">
        </div>
        <!-- .notice_dead -->
      </div>
      <!-- .notice_box .rd_left -->

      <div class="company_box rd_right">
        <span class="company_box_title">기업정보</span>
        <div class="logo_form_update">
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
        </div><!-- .logo_form -->
        <span class="info_tit">
          <em>회사명</em>
          <input type="text" id="" name="basic_name" class="box_input info_right_input7"
                      value="" placeholder="회사명을 입력하세요" / maxlength="15">
        </span>
        <span class="info_year">
          <em>설립연도</em>
          <input type="date" id="" name="basic_name" class="box_input info_right_input7"
                      value="" placeholder="공고마감일을 입력하세요" / maxlength="15">
          </span>
        <span class="info_task">
          <em>주요업무</em>
          <input type="text" id="" name="basic_name" class="box_input info_right_input7"
                      value="" placeholder="주요업무를 입력하세요" / maxlength="15">
          </span>
        <span class="info_ssar">
          <em>평균연봉</em>
          <input type="text" id="" name="basic_name" class="box_input info_right_input7"
                      value="" placeholder="평균연봉을 입력하세요" / maxlength="15">
        </span>
        <span class="info_benefit">
          <em>기업복지</em>
          <input type="text" id="" name="basic_name" class="box_input info_right_input7"
                      value="" placeholder="복리후생을 입력하세요" / maxlength="25">
          </span>
        <div class="company_location">
          <div class="basic_row location_wrap">
            <div class="basic_input cf">
              <span class="info_right_txt info_right_txt2">주소지</span>
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
          </div><!-- .location_wrap -->
        </div>
        <!-- .company_location -->
      </div>
      <!-- .company_box .rd_right -->
      
      <div class="btn_co_recruit_insert">
        <a href="/co/noticeUpdate" class="btn_update">수정하기</a>
        <button
          class="btn_delete"
          type="button"
          onClick="javascript:popOpenRecruit();"
        >
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
  <%@ include file="../layout/footerCompany.jsp"%>

