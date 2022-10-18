<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>
    <div class="p-5 border text-center">
      <h1>기업소개 상세보기</h1>
    </div>

    <div class="container">
      <div class="row">
        <div class="company_detail">

          <div id="logo_info" class="form">
            <div class="btn_group">
              <div class="subscribe_btn">
                <button type="button" onclick="location.href='#'">구독</button>
              </div>
            </div>
            <!-- subscribe_btn -->
            <div class="logo_form">
              <div class="info_img">
                <img src="assets/resume/face1.jpg" width="160" height="170" />
              </div>
            </div>
          </div>
          <!-- logo -->

          <div id="basic_info" class="form">
            <div class="form_title">
              <h2 class="title">회사 정보</h2>
            </div>
            <div class="basic_form">
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">회사명</p>
                </div>
                <div class="basic_input">
                  <span>그린</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">설립년도</p>
                </div>
                <div class="basic_input">
                  <span>0000년 00월 00일</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">주요업무</p>
                </div>
                <div class="basic_input">
                  <span>서버관리</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">평균연봉</p>
                </div>
                <div class="basic_input">
                  <span>4000만원</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">기업복지</p>
                </div>
                <div class="basic_input">
                  <span>1. 유연한 출퇴근</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">회사소개</p>
                </div>
                <div class="basic_input">
                  <span>기업의 가치를</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">회사위치</p>
                </div>
                <div class="basic_input">
                  <span>부산 금정구</span>
                </div>
              </div>

            </div>
          </div>
          <!-- basic -->

          <div id="field_info" class="form">
            <div class="form_title">
              <h2 class="title">관심분야</h2>
            </div>
            <div class="field_form">
              <p>프론트엔드</p>
            </div>
          </div>
          <!-- field -->

        </div>
        <!-- company_detail -->
      </div>
    </div>
    <!-- body -->
    <script src="/js/main.js"></script>
    <script src="/js/company.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>