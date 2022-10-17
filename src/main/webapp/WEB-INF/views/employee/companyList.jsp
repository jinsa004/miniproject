<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="active" data-tab="tab-1"><a href="/emp">전체직군</a></li>
            <li data-tab="tab-2"><a href="/emp/notice?jobCode=1">프론트엔드</a></li>
            <li data-tab="tab-3"><a href="/emp/notice?jobCode=2">백엔드</a></li>
            <li data-tab="tab-4"><a href="/emp/notice?jobCode=3">웹풀스택</a></li>
            <li data-tab="tab-5"><a href="/emp/notice?jobCode=4">안드로이드</a></li>
            <li data-tab="tab-6"><a href="/emp/notice?jobCode=5">IOS</a></li>
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
    <script type="text/javascript">
      // jquery 최초 기본형
        $(document).ready(function(){

        // 탭메뉴
        let tab_menu_list_a = $('.tabs li a');
        let tab_menu_list = $('.tabs li');

        // 메뉴 내용
        let tab_box = $('.tab_content');

        // 탭메뉴 내용 보여주기
        $.each(tab_menu_list, function(index, item){
            // tab_menu_list_a.eq(index) = $(this)
            $(this).click(function(event){
                event.preventDefault();

                tab_menu_list.removeClass('active');
                $(this).addClass('active');
                tab_box.hide();
                tab_box.eq(index).show();
            });   
        });
        });
    </script>
    <%@ include file="../layout/footer.jsp" %>