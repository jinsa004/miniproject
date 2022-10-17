<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>
    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="btn_tab on" data-tab="tab-1"><a href="/emp">전체직군</a></li>
            <li class="btn_tab" data-tab="tab-2"><a href="/emp/notice?jobCode=1">프론트엔드</a></li>
            <li class="btn_tab" data-tab="tab-3"><a href="/emp/notice?jobCode=2">백엔드</a></li>
            <li class="btn_tab" data-tab="tab-4"><a href="/emp/notice?jobCode=3">웹풀스택</a></li>
            <li class="btn_tab" data-tab="tab-5"><a href="/emp/notice?jobCode=4">안드로이드</a></li>
            <li class="btn_tab" data-tab="tab-6"><a href="/emp/notice?jobCode=5">IOS</a></li>
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
            <div id="tab-1" class="notice_inner notice_inner1 tab-content on">
              <c:forEach var="noticeAllList" items="${noticeAllList}">
                <div>
                  <ul>
                    <li><a href="/emp/noticeDetail/${noticeAllList.noticeId}"><img src="/img/logo_1.png" alt="logo"></a>
                    </li>
                    <li><a href="/emp/noticeDetail/${noticeAllList.noticeId}">
                        ${noticeAllList.noticeTitle}
                        <span class="notice_small">${noticeAllList.noticeTask}</span>
                      </a></li>
                    <li>${noticeAllList.noticeCareer}<span class="notice_small">${noticeAllList.noticeQual}</span></li>
                    <li>${noticeAllList.noticePosition}<span class="notice_small">부산</span></li>
                    <!-- notice 테이블에 지역 컬럼 만들거나 sal을 넣는 등 수정 필요 -->
                    <li>~${noticeAllList.noticePeriod}<span class="notice_small">마감 13일전</span></li>
                  </ul>
                </div>
              </c:forEach>
            </div><!-- .notice_inner1 -->
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