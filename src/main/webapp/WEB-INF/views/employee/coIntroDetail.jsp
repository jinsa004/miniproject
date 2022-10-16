<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="co_Intro_wrap">
      <div class="container">
        <section>
          <div class="notice_box">
            <div class="intro_update">

              <div class="title_update">
                <h1>기업 소개 상세보기</h1>
              </div>
              <div id="logo_info" class="form">
                <div class="form_title">
                  <h2 class="title">회사로고</h2>
                </div>
                <div class="logo_form">
                  <div class="info_img">
                    <span class="info_myimg">
                      <img src="/img/logo_1.png">
                    </span>
                  </div>
                </div><!-- .logo_form -->
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
                      <span class="co_Info_Detail_title">회사명</span>
                      <p class="co_Info_Detail_txt">
                        삼성전자
                      </p>
                    </div>
                  </div>
                  <div class="basic_row margin_bottom">
                    <div class="basic_input">
                      <span class="co_Info_Detail_title">설립년도</span>
                      <p class="co_Info_Detail_txt">
                        2022-10-16
                      </p>
                    </div>
                  </div>
                  <div class="basic_row margin_bottom">
                    <div class="basic_input">
                      <span class="co_Info_Detail_title">주요업무</span>
                      <p class="co_Info_Detail_txt">
                        웹 / 소프트웨어 개발
                      </p>
                    </div>
                  </div>
                  <div class="basic_row margin_bottom">
                    <div class="basic_input">
                      <span class="co_Info_Detail_title">평균연봉</span>
                      <p class="co_Info_Detail_txt">
                        평균 4000만원
                      </p>
                    </div>
                  </div>
                  <div class="basic_row margin_bottom">
                    <div class="basic_input">
                      <span class="co_Info_Detail_title">기업복지</span>
                      <p class="co_Info_Detail_txt">
                        칼퇴근, 야근 없음, 식비 제공, 상여금
                      </p>
                    </div>
                  </div>
                  <div class="basic_row">
                    <div class="basic_input">
                      <span class="co_Info_Detail_title">회사소개</span>
                      <p class="co_Info_Detail_txt">
                        삼성전자 입니다.
                      </p>
                    </div>
                  </div>
                  <div class="basic_row location_wrap">
                    <div class="basic_input cf">
                      <span class="info_right_txt info_right_txt2">회사위치</span>
                      <div class="basic_location">
                        <div class="location_map">
                          <img src="">지도
                        </div>
                        <div class="location_info">
                          <input type="text" id="sample6_address" placeholder="주소">
                          <!-- <input type="text" id="sample6_extraAddress" placeholder="참고항목"> -->
                        </div>
                      </div>
                    </div>
                  </div><!-- .location_wrap -->

                </div>
              </div>
              <!-- basic -->

              <div id="part" class="form">
                <div class="form_title">
                  <h2 class="title">관심분야</h2>
                </div>
                <div class="resume_part">
                  <span class="resume_part_select">프론트엔드</span>
                  <span class="resume_part_select">백엔드</span>
                </div>
              </div> <!-- #part -->

              <div class="btn_group">
                <div class="subscribe_btn">
                  <button type="button" onclick="location.href='#'">
                    <i class="fa-regular fa-star"></i>
                    <span class="txt">구독</span>
                  </button>
                </div>
              </div><!-- .btn_group -->
              <!-- btn -->

            </div><!-- .intro_update -->
          </div><!-- .notice_box -->
        </section>
      </div><!-- .container -->
    </div><!-- .intro_wrap -->
    </div>
    <!-- body -->

    <%@ include file="../layout/footerCompany.jsp" %>