<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="btn_tab on" data-tab="tab-1">전체직군</li>
            <li class="btn_tab" data-tab="tab-2">프론트엔드</li>
            <li class="btn_tab" data-tab="tab-3">백엔드</li>
            <li class="btn_tab" data-tab="tab-4">웹풀스택</li>
            <li class="btn_tab" data-tab="tab-5">안드로이드</li>
            <li class="btn_tab" data-tab="tab-6">IOS</li>
          </ul>
        </div>
        <!-- .tablist -->

        <section>
          <div class="notice_box">
            <div class="company_card">
              <div id="tab-1" class="company_inner company_inner1 tab-content on">
                <ul>
                  <c:forEach var="intro" items="${introList}" begin="0" end="3" step="1">
                    <li>
                      <a href="companyIntroDetail/${intro.introId}">
                        <span class="company_logo"><img src="/img/logo_1.png" alt="회사로고" /></span>
                        <div class="company_txt">
                          <input type="hidden" value="${intro.no}">
                          <span class="company_title">${intro.companyName}</span>
                          <span class="company_text">${intro.introTitle}, ${intro.introTask}</span>
                        </div>
                        <!-- .company_txt -->
                      </a>
                  </c:forEach>
                  </li>
              </div>
              <div id="tab-2" class="company_inner company_inner1 tab-content on">
                <ul>
                  <c:forEach var="intro" items="${introList}" begin="4" end="7" step="1">
                    <li>
                      <a href="companyIntroDetail/${intro.introId}">
                        <span class="company_logo"><img src="/img/logo_1.png" alt="회사로고" /></span>
                        <div class="company_txt">
                          <input type="hidden" value="${intro.no}">
                          <span class="company_title">${intro.companyName}</span>
                          <span class="company_text">${intro.introTitle}, ${intro.introTask}</span>
                        </div>
                        <!-- .company_txt -->
                      </a>
                  </c:forEach>
                  </li>
              </div>
            </div>
            <!-- .notice_box -->
        </section>
        <div class="paging">
          <ul class="pagination">
            <li class="page-item page-prev">
              <a class="page-link" href="#">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item page-next">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- .container -->
    </div>
    <!-- #wrap -->
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>