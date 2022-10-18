<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="user_wrap">
      <div class="container">
        <div class="matching_list">
          <a href="/emp/employeeInfo" class="btn_matching_insert"> 관심 분야 수정</a>
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
              <div>
                <ul>
                  <li><a href="noticeDetail"><img src="/img/logo_1.png" alt="logo"></a></li>
                  <li><a href="noticeDetail">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small">백엔드/서버개발, 웹개발, 정보보안</span>
                    </a></li>
                  <li>경력무관<span class="notice_small">학력무관</span></li>
                  <li>정규직<span class="notice_small">부산</span></li>
                  <li>~10/19(수)<span class="notice_small">마감 13일전</span></li>
                </ul>
              </div>
              <div>
                <ul>
                  <li><a href="noticeDetail"><img src="/img/logo_1.png" alt="logo"></a></li>
                  <li><a href="noticeDetail">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small">백엔드/서버개발, 웹개발, 정보보안</span>
                    </a></li>
                  <li>경력무관<span class="notice_small">학력무관</span></li>
                  <li>정규직<span class="notice_small">부산</span></li>
                  <li>~10/19(수)<span class="notice_small">마감 13일전</span></li>
                </ul>
              </div>
              <div>
                <ul>
                  <li><a href="noticeDetail"><img src="/img/logo_1.png" alt="logo"></a></li>
                  <li><a href="noticeDetail">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small">백엔드/서버개발, 웹개발, 정보보안</span>
                    </a></li>
                  <li>경력무관<span class="notice_small">학력무관</span></li>
                  <li>정규직<span class="notice_small">부산</span></li>
                  <li>~10/19(수)<span class="notice_small">마감 13일전</span></li>
                </ul>
              </div>
            </div><!-- .notice_inner1 -->

            <div id="tab-2" class="notice_inner notice_inner2 tab-content">
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
            </div><!-- .notice_inner2 -->

            <div id="tab-3" class="notice_inner notice_inner3 tab-content">
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
            </div><!-- .notice_inner3 -->
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