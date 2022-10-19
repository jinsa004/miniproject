<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">
      <div id="intro_wrap">
        <div class="container">
          <div class="intro_update">
            <div class="title_update">
              <h1>기업 소개 등록</h1>
            </div>
            <input id="companyId" type="hidden" value="${coprincipal.companyId}" />
            <div id="logo_info" class="form">
              <div class="form_title">
                <h2 class="title">회사로고</h2>
              </div>
              <div class="logo_form">
                <div class="info_img">
                  <span class="info_myimg">
                    <img id="preImage" alt="image_title">
                  </span>
                  <br />
                  <br /> <!-- css 맞춰주세요 -->
                  <input type="file" multiple="multiple" id="image" name="image" />
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
                    <span class="info_right_txt">회사명</span>
                    <input type="text" id="introConame" name="basic_name" class="box_input info_right_input"
                      value="${intro.introConame}" placeholder="회사명을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">설립년도</span>
                    <input type="text" id="introBirth" name="basic_birth" class="box_input info_right_input"
                      value="${intro.introBirth}" placeholder="설립년도를 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">주요업무</span>
                    <input type="text" id="introTask" name="basic_task" class="box_input info_right_input"
                      value="${intro.introTask}" placeholder="주요 업무를 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">평균연봉</span>
                    <input type="text" id="introSal" name="basic_sal" class="box_input info_right_input"
                      value="${intro.introSal}" placeholder="평균연봉을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row margin_bottom">
                  <div class="basic_input">
                    <span class="info_right_txt">기업복지</span>
                    <input type="text" id="introWellfare" name="basic_welfare" class="box_input info_right_input"
                      value="${intro.introWellfare}" placeholder="복리후생을 입력하세요" />
                  </div>
                </div>
                <div class="basic_row">
                  <div class="basic_input">
                    <span class="info_right_txt">회사소개</span>
                    <input type="text" id="introContent" name="basic_content" class="box_input info_right_input3"
                      value="${intro.introContent}" placeholder="회사소개를 입력하세요" />
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
            </div>
            <!-- basic -->

            <div class="btn_group">
              <div class="update_btn">
                <button id="btnInsertCompanyInfo" type="button" class="btn btn-primary">등록하기</button>
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