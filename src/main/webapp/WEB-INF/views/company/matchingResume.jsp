<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>

    <div id="company_wrap">
      <div class="container">
        <section>
          <div class="matching_list">
            <a href="/co/companyInfo/${coprincipal.companyId}" class="btn_matching_insert"> 관심 분야 수정</a>
          </div>
          <!-- .tablist -->

          <div class="notice_box">
            <div class="resume_list">
              <div class="resume_form resume_card">
                <ul id="tab-1" class="resume_inner resume_inner1 tab-content on">
                  <c:forEach var="matchingResume" items="${matchingResume}">
                    <li class="resume_cont">
                      <a href="/co/resumeDetail/${matchingResume.resumeId}">
                        <span class="resume_logo"><img src="/img/default_profile.png" alt="프로필이미지" /></span>
                        <span class="resume_name">
                          ${matchingResume.employeeName}
                        </span>
                        <div class="resume_txt">
                          <span class="resume_title">${matchingResume.resumeTitle}</span>
                          <div class="resume_option">
                            <ul class="list_option">
                              <li class="career">
                                <span>${matchingResume.careerPeriod}</span>
                              </li>
                              <li class="part"><span>${matchingResume.jobName}</span></li>
                            </ul>
                          </div>
                        </div>
                      </a><!-- .resume_txt -->
                    </li>
                  </c:forEach>
                </ul>
                <!-- #tab-2 -->
              </div>
              </a>
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
    <%@ include file="../layout/footerCompany.jsp" %>