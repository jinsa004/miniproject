<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <div class="company_update">

      <div id="logo_info" class="form">
        <div class="form_title">
          <h2 class="title">회사로고</h2>
        </div>
        <div class="logo_form">
          <div class="info_img">
            <form method="post" action="/#" enctype="multipart/form-data">
              <label for="files">파일 선택</label>
              <input type="file" name="file" id="files" class="hidden" />
              <button type="submit">파일전송</button>
            </form>
          </div>
        </div>
      </div>
      <!-- logo -->
      <input id="introId" type="hidden" value="${intro.introId}" />
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
              <input type="text" id="companyName" name="basic_name" class="box_input" value="${intro.companyName}"
                placeholder="회사명을 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">설립년도</p>
            </div>
            <div class="basic_input">
              <input type="text" id="introBirth" name="basic_birth" class="box_input" value="${intro.introBirth}"
                placeholder="설립년도를 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">주요업무</p>
            </div>
            <div class="basic_input">
              <input type="text" id="introTask" name="basic_task" class="box_input" value="${intro.introTask}"
                placeholder="주요 업무를 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">평균연봉</p>
            </div>
            <div class="basic_input">
              <input type="text" id="introSal" name="basic_sal" class="box_input" value="${intro.introSal}"
                placeholder="평균연봉을 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">기업복지</p>
            </div>
            <div class="basic_input">
              <input type="text" id="introWellfare" name="basic_welfare" class="box_input"
                value="${intro.introWellfare}" placeholder="복지를 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">회사소개</p>
            </div>
            <div class="basic_input">
              <input type="text" id="introContent" name="basic_content" class="box_input" value="${intro.introContent}"
                placeholder="회사소개를 입력하세요" />
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">회사위치</p>
            </div>
            <div class="basic_input">
              <div class="basic_location">
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" id="sample6_address" placeholder="주소"><br>
                <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                <input type="text" id="sample6_extraAddress" placeholder="참고항목">
              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- basic -->

      <div id="field_info" class="form">
        <div class="form_title">
          <h2 class="title">관심분야</h2>
        </div>
        <div class="field_select">
          <form id="jobName" method="post" action="/#">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="프론트엔드" name="프론트엔드" value="프론트엔드">
              <label class="form-check-label" for="프론트엔드">프론트엔드</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="백엔드" name="백엔드" value="백엔드">
              <label class="form-check-label" for="백엔드">백엔드</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="풀스택" name="풀스택" value="풀스택">
              <label class="form-check-label" for="풀스택">풀스택</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="안드로이드" name="안드로이드" value="안드로이드">
              <label class="form-check-label" for="chec안드로이드k1">안드로이드</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="IOS" name="IOS" value="IOS">
              <label class="form-check-label" for="IOS">IOS</label>
            </div>
          </form>
        </div>
      </div>
      <!-- field -->

      <div class="btn_group">
        <div class="update_btn">
          <button id="btnUpdate" type="button" class="btn btn-primary">수정완료</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- company_update -->
    </div>
    </div>
    <!-- body -->
    <script src="/js/main.js"></script>
    <script src="/js/company.js"></script>
    <script src="/js/intro.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>