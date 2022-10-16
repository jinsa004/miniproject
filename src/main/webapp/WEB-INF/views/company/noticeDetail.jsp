<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">
      <div id="co_resume_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="recruit_detail_box cf">
              <div class="title_update">
                <h1>기업 채용 공고 관리</h1>
              </div>
              <div class="notice_box rd_left">
                <div class="notice_title">
                  <h3>공고명</h3>
                  <p class="notice_txt2">
                    프론트엔드 & 백엔드 개발자 채용 서버개발자 Server Developer
                  </p>
                </div>
                <!-- .notice_title -->

                <div class="notice_part">
                  <h3>채용분야</h3>
                  <span class="rewumeDetail_txt2">
                    프론트엔드
                  </span>
                </div>
                <!-- .notice_part -->

                <div class="notice_dept">
                  <h3>채용부서</h3>
                  <span class="rewumeDetail_txt2">
                    웹 개발팀
                  </span>
                </div>
                <!-- .notice_dept -->

                <div class="notice_grade">
                  <h3>채용직급</h3>
                  <p class="rewumeDetail_txt">
                    사원, 주임, 대리, 과장
                  </p>
                </div>
                <!-- .notice_grade -->

                <div class="notice_task">
                  <h3>주요업무</h3>
                  <p class="rewumeDetail_txt">
                    사내 플랫폼과 외부 광고 플랫폼들이 제공하는 기능 및 데이터들을
                    통합하고 사용성 개선
                  </p>
                </div>
                <!-- .notice_task -->

                <div class="notice_ssar">
                  <h3>평균연봉</h3>
                  <p class="rewumeDetail_txt">
                    회사내규에 따름-면접 후 결정
                  </p>
                </div>
                <!-- .notice_ssar -->

                <div class="notice_skill2">
                  <h3>자격요건</h3>
                  <p class="rewumeDetail_txt">
                    고졸
                  </p>
                </div>
                <!-- .notice_skill -->

                <div class="notice_career">
                  <h3>경력</h3>
                  <p class="rewumeDetail_txt">
                    신입
                  </p>
                </div>
                <!-- .notice_career -->

                <div class="notice_benefit">
                  <h3>복리후생</h3>
                  <p class="rewumeDetail_txt">
                    4대 보험 적용, 각종 경조금 지원, 식대/교통비 지원, 성과금
                  </p>
                </div>
                <!-- .notice_benefit -->

                <div class="notice_dead">
                  <h3>공고 마감일</h3>
                  <span class="rewumeDetail_txt2">
                    2022.10.19
                  </span>
                </div>
                <!-- .notice_dead -->
              </div>
              <!-- .notice_box .rd_left -->

              <div class="company_box rd_right">
                <span class="company_box_title">기업정보</span>
                <div class="logo_form_update">
                  <div class="info_img">
                    <span class="info_myimg">
                      <img src="/img/logo_1.png">
                    </span>
                  </div>
                </div><!-- .logo_form -->
                <span class="info_tit info_tit2">
                  <em>회사명</em>
                  <p class="rewumeDetail_txt">
                    <strong>PROJECT4</strong>
                  </p>
                </span>
                <span class="info_year">
                  <em>설립연도</em>
                  <p class="rewumeDetail_txt">
                    <strong>2022.10.07</strong>
                  </p>
                </span>
                <span class="info_task">
                  <em>주요업무</em>
                  <p class="rewumeDetail_txt">
                    <strong>서버관리 및 프로그램 설계</strong>
                  </p>
                </span>
                <span class="info_ssar">
                  <em>평균연봉</em>
                  <p class="rewumeDetail_txt">
                    <strong>4000</strong>
                  </p>
                </span>
                <span class="info_benefit">
                  <em>기업복지</em>
                  <p class="rewumeDetail_txt">
                    <strong>유연한 출퇴근, 4대보험, 성과금</strong>
                  </p>
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
                          <p class="rewumeDetail_txt">
                            부산시 부산진구 어쩌고
                          </p>
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
                <a href="/co/noticeUpdate" class="btn_update_go">수정하기</a>
                <button class="btn_delete" type="button" onClick="javascript:popOpenRecruit();">
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
    <%@ include file="../layout/footerCompany.jsp" %>