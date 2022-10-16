<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>
    <div id="user_wrap">
      <div class="container">
        <!-- <div class="matching_list">
      <a href="#" class="btn_matching_insert">구독기업공고 관리</a>
    </div> -->
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
                <c:forEach var="noticeList" items="${noticeList}">
                  <ul>
                    <li><a href="/emp/noticeDetail/${noticeList.noticeId}"><img src="/img/logo_1.png" alt="logo"></a>
                    </li>
                    <li><a href="/emp/noticeDetail/${noticeList.noticeId}">
                        ${noticeList.noticeTitle}
                        <span class="notice_small">${noticeList.noticeTask}</span>
                      </a></li>
                    <li>${noticeList.noticeCareer}<span class="notice_small">${noticeList.noticeQual}</span></li>
                    <li>${noticeList.noticeDept}<span class="notice_small">${noticeList.noticePosition}</span></li>
                    <li>${noticeList.noticePeriod}<span class="notice_small"></span></li>
                  </ul>
                </c:forEach>
              </div>
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