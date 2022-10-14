<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul class="tabs">
            <li class="btn_tab on" data-tab="tab-1"><a href="/emp/">전체직군</a></li>
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
              <c:forEach var="jobNoticeList" items="${jobNoticeList}">
                <div>
                  <ul>
                    <li><a href="noticeDetail"><img src="/img/logo_1.png" alt="logo"></a></li>
                    <li><a href="noticeDetail">
                        ${jobNoticeList.noticeTitle}
                        <span class="notice_small">${jobNoticeList.noticeTask}</span>
                      </a></li>
                    <li>${jobNoticeList.noticeCareer}<span class="notice_small">${jobNoticeList.noticeQual}</span></li>
                    <li>${jobNoticeList.noticePosition}<span class="notice_small">부산</span></li>
                    <!-- notice 테이블에 지역 컬럼 만들거나 sal을 넣는 등 수정 필요 -->
                    <li>~${jobNoticeList.noticePeriod}<span class="notice_small">마감 13일전</span></li>
                  </ul>
                </div>
              </c:forEach>
            </div><!-- .notice_inner1 -->

            <!-- <div id="tab-2" class="notice_inner notice_inner2 tab-content">
              <ul>
                <li><a href="#"><img src="/img/logo_1.png" alt="logo"></a></li>
                <li><a href="#">
                    보안/운영 시스템 개발팀 백엔드 개발자 모집
                    <span class="notice_small">백엔드/서버개발, 웹개발, 정보보안</span>
                  </a></li>
                <li>경력무관<span class="notice_small">학력무관</span></li>
                <li>정규직<span class="notice_small">부산</span></li>
                <li>~10/19(수)<span class="notice_small">마감 13일전</span></li>
              </ul>
            </div> -->
            <!-- .notice_inner2 -->

            <!-- <div id="tab-3" class="notice_inner notice_inner3 tab-content">
              <ul>
                <li><a href="#"><img src="/img/logo_1.png" alt="logo"></a></li>
                <li><a href="#">
                    보안/운영 시스템 개발팀 백엔드 개발자 모집
                    <span class="notice_small">백엔드/서버개발, 웹개발, 정보보안</span>
                  </a></li>
                <li>경력무관<span class="notice_small">학력무관</span></li>
                <li>정규직<span class="notice_small">부산</span></li>
                <li>~10/19(수)<span class="notice_small">마감 13일전</span></li>
              </ul>
            </div> -->
            <!-- .notice_inner3 -->
            <!-- inner2, 3 없어도 되는지 프론트 담당에게 물어보기 -->
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