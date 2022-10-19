<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>
    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="active" data-tab="tab-1"><a href="/emp">전체직군</a></li>
            <li class="" data-tab="tab-2"><a href="/emp/notice?jobCode=1">프론트엔드</a></li>
            <li class="" data-tab="tab-3"><a href="/emp/notice?jobCode=2">백엔드</a></li>
            <li class="" data-tab="tab-4"><a href="/emp/notice?jobCode=3">풀스택</a></li>
            <li class="" data-tab="tab-5"><a href="/emp/notice?jobCode=4">안드로이드</a></li>
            <li class="" data-tab="tab-6"><a href="/emp/notice?jobCode=5">IOS</a></li>
          </ul>
        </div>
        <!-- .tablist -->

        <section>
          <div class="notice_box">
            <div class="notice_title">
              <ul>
                <li>기업명</li>
                <li>제목</li>
                <li>지원자격</li>
                <li>근무조건</li>
                <li>마감일</li>
              </ul>
            </div><!-- .notice_title -->

            <div class="tabcontent">
              <div>
                <ul id="tab-1" class="notice_inner tab_content show">
                  <c:forEach var="noticeAllList" items="${noticeAllList}">
                    <ul>
                      <li><a href="/emp/noticeDetail/${noticeAllList.noticeId}"><img
                            src="/image?imageName=9339f9ee-830c-45ec-a5e9-a09c85ae4463.jpg" alt="logo"></a>
                      </li>
                      <li><a href="/emp/noticeDetail/${noticeAllList.noticeId}">
                          ${noticeAllList.noticeTitle}
                          <span class="notice_small">${noticeAllList.noticeTask}</span>
                        </a></li>
                      <li>${noticeAllList.noticeCareer}<span class="notice_small">${noticeAllList.noticeQual}</span>
                      </li>
                      <li>${noticeAllList.noticeDept}<span class="notice_small">${noticeAllList.noticePosition}</span>
                      </li>
                      <li>${noticeAllList.noticePeriod}<span class="notice_small">마감 13일전</span></li>
                    </ul>
                  </c:forEach>
                </ul>
              </div>
            </div><!-- .tabcontent -->
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
    <!-- #user_wrap -->
    <!-- <script type="text/javascript">
      // jquery 최초 기본형
      $(document).ready(function () {

        // 탭메뉴
        let tab_menu_list_a = $('.tabs li a');
        let tab_menu_list = $('.tabs li');

        // 메뉴 내용
        let tab_box = $('.tab_content');

        // 탭메뉴 내용 보여주기
        $.each(tab_menu_list, function (index, item) {
          // tab_menu_list_a.eq(index) = $(this)
          $(this).click(function (event) {
            event.preventDefault();

            tab_menu_list.removeClass('active');
            $(this).addClass('active');
            tab_box.hide();
            tab_box.eq(index).show();
          });
        });
      });
    </script> -->
    <%@ include file="../layout/footer.jsp" %>