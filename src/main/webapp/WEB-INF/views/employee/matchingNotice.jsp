<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>

    <div id="user_wrap">
      <div class="container">
        <div class="matching_list">
          <a href="/emp/employeeInfo/${empprincipal.employeeId}" class="btn_matching_insert"> 관심 분야 수정</a>
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
              <c:forEach var="matchingNotice" items="${matchingNotice}">
                <div>
                  <ul>
                    <li><a href="/emp/noticeDetail/${matchingNotice.noticeId}"><img
                          src="/image?imageName=${matchingNotice.newImageName}" alt="logo"></a>
                    </li>
                    <li><a href="/emp/noticeDetail/${matchingNotice.noticeId}">
                        ${matchingNotice.noticeTitle}
                        <span class="notice_small">${matchingNotice.noticeTask}</span>
                      </a></li>
                    <li>${matchingNotice.noticeCareer}<span class="notice_small">${matchingNotice.noticeQual}</span>
                    </li>
                    <li>${matchingNotice.noticePosition}<span class="notice_small">부산</span></li>
                    <!-- notice 테이블에 지역 컬럼 만들거나 sal을 넣는 등 수정 필요 -->
                    <li>~${matchingNotice.noticePeriod}<span class="notice_small">마감 13일전</span></li>
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

    <%@ include file="../layout/footer.jsp" %>