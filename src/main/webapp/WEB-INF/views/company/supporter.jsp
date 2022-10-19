<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>
    <div id="company_wrap">
      <div class="container">
        <section>
          <div class="notice_box">
            <div class="notice_title">
              <ul>
                <li>기업명</li>
                <li>제목</li>
                <li>지원자격</li>
                <li>복리후생</li>
                <li>마감일</li>
              </ul>
            </div>
            <!-- .notice_title -->
            <div id="tab-1" class="notice_inner notice_inner1 tab-content on">
              <div class="notice_ul_wrap">
                <c:forEach var="noticeList" items="${noticeList}">
                  <ul>
                    <li>
                      <a href="/co/noticeService/${coprincipal.companyId}/noticeDetail/${noticeList.noticeId}"><img
                          src="/img/logo_1.png" alt="logo" /></a>
                    </li>
                    <li>
                      <a href="/co/noticeService/${coprincipal.companyId}/noticeDetail/${noticeList.noticeId}">${noticeList.noticeTitle}
                        <span class="notice_small">${noticeList.noticeDept}</span>
                      </a>
                    </li>
                    <li>경력${noticeList.noticeCareer}<span class="notice_small">학력${noticeList.noticeQual}</span></li>
                    <li>${noticeList.noticeWellfare}<span class="notice_small">커피무료</span></li>
                    <li>${noticeList.noticePeriod}<span class="notice_small">마감 13일전</span></li>
                  </ul>
                </c:forEach>
                <!-- .notice_hover -->
              </div>
            </div>
            <!-- .notice_inner1 -->
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
    <%@ include file="../layout/footerCompany.jsp" %>