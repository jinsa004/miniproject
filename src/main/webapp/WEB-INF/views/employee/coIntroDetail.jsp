<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>
    <div class="p-5 border text-center">
      <h1>기업소개 상세보기</h1>
    </div>

    <div class="container">

      <div class="row">
        <div class="company_detail">
          <input id="introId" type="hidden" value="${detailDto.introId}" />
          <input id="subscribeId" type="hidden" value="${detailDto.subscribeId}" />
          <input id="principalId" type="hidden" value="${principal.getEmployeeId()}" />
          <span>인증번호${principal.getEmployeeId()}</span>
          <div id="logo_info" class="form">
            <div>구독 <i id="iconSub"
                class='${detailDto.subed ? "fa-solid" : "fa-regular"} fa-heart my_pointer my_red'></i>
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
                  <span>${detailDto.companyName}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">설립년도</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introBirth}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">주요업무</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introTask}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">평균연봉</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introSal}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">기업복지</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introWellfare}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">회사소개</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introContent}</span>
                </div>
              </div>
              <div class="basic_row">
                <div class="basic_list">
                  <p class="basic_list_item">회사위치</p>
                </div>
                <div class="basic_input">
                  <span>${detailDto.introLocation}</span>
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
              <p>${detailDto.jobName}</p>
            </div>
          </div>
          <!-- field -->

        </div>
        <!-- company_detail -->
      </div>
    </div>
    <!-- body -->
    <script src="/js/main.js"></script>
    <script src="/js/intro.js"></script>
    <%@ include file="../layout/footer.jsp" %>