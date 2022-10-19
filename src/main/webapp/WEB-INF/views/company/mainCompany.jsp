<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>

    <div id="company_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="active" data-tab="tab-1">전체직군</a></li>
            <li data-tab="tab-2"><a href="/co/resume?jobCode=1">프론트엔드</a></li>
            <li data-tab="tab-3"><a href="/co/resume?jobCode=2">백엔드</a></li>
            <li data-tab="tab-4"><a href="/co/resume?jobCode=3">풀스택</a></li>
            <li data-tab="tab-5"><a href="/co/resume?jobCode=4">안드로이드</a></li>
            <li data-tab="tab-6"><a href="/co/resume?jobCode=5">IOS</a></li>
          </ul>
        </div>
        <!-- .tablist -->

        <section>
          <div class="notice_box">
            <div class="resume_list">
              <div class="resume_form resume_card">
                <ul id="tab-1" class="resume_inner resume_inner1 tab-content on">
                  <c:forEach var="resumeAllList" items="${resumeAllList}">
                    <li class="resume_cont">
                      <a href="/co/resumeDetail/${resumeAllList.resumeId}">
                        <span class="resume_logo"><img src="/img/default_profile.png" alt="프로필이미지" /></span>
                        <span class="resume_name">
                          ${resumeAllList.employeeName}
                        </span>
                        <div class="resume_txt">
                          <span class="resume_title">${resumeAllList.resumeTitle}</span>
                          <div class="resume_option">
                            <ul class="list_option">
                              <li class="career">
                                <span>${resumeAllList.careerPeriod}</span>
                              </li>
                              <li class="part">
                                <span>${resumeAllList.jobName}</span>
                              </li>
                            </ul>
                          </div>
                        </div>
                        <!-- .resume_txt -->
                      </a>
                    </li>
                  </c:forEach>
                </ul>
                <!-- #tab-1 -->
              </div>
            </div>
            <!-- .resume_list -->
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
    <script src="/js/company.js"></script>
    <!-- <script type="text/javascript">
      // jquery 최초 기본형
      $(document).ready(function () {
        // 탭메뉴
        let tab_menu_list_a = $(".tabs li a");
        let tab_menu_list = $(".tabs li");

        // 메뉴 내용
        let tab_box = $(".tab_content");

        // 탭메뉴 내용 보여주기
        $.each(tab_menu_list, function (index, item) {
          // tab_menu_list_a.eq(index) = $(this)
          $(this).click(function (event) {
            event.preventDefault();

            tab_menu_list.removeClass("active");
            $(this).addClass("active");
            tab_box.hide();
            tab_box.eq(index).show();
          });
        });
      });
    </script> -->
    <%@ include file="../layout/footerCompany.jsp" %>