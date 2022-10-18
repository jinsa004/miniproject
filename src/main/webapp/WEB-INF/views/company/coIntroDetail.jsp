<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">
      <div id="intro_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="title_update">
              <h1>My 기업 상세</h1>
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
              <div class="info_form info_form4">
                <div class="basic_input">
                  <span class="info_right_txt">회사명</span>
                  <p class="rewumeDetail_txt">
                    삼성전자
                  </p>
                </div>
                <div class="basic_input">
                  <span class="info_right_txt">설립년도</span>
                  <p class="rewumeDetail_txt">
                    2022.10.16
                  </p>
                </div>
                <div class="basic_input">
                  <span class="info_right_txt">주요업무</span>
                  <p class="rewumeDetail_txt">
                    주요업무
                  </p>
                </div>
                <div class="basic_input">
                  <span class="info_right_txt">평균연봉</span>
                  <p class="rewumeDetail_txt">
                    4000만원
                  </p>
                </div>
                <div class="basic_input">
                  <span class="info_right_txt">기업복지</span>
                  <p class="rewumeDetail_txt">
                    퇴직금, 상여금
                  </p>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">회사소개</span>
                    <p class="rewumeDetail_txt">
                      삼성전자입니다.
                    </p>
                  </div>
                </div>
                <div class="basic_row location_wrap2">
                  <div class="basic_input cf">
                    <span class="info_right_txt info_right_txt2">회사위치</span>
                    <div class="basic_location">
                      <div class="location_map">
                        지도
                      </div>
                      <div class="location_info">
                        <p class="rewumeDetail_txt">
                          부산 부산진구 어쩌고
                        </p>
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
              <span class="rewumeDetail_txt2">
                프론트엔드
              </span>
              <span class="rewumeDetail_txt2">
                백엔드
              </span>
            </div>
            <!-- field -->

            <div class="btn_group">
              <div class="update_btn">
                <a href="/co/coIntroUpdate" class="btnInsertCompany_go">수정하기</a>
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