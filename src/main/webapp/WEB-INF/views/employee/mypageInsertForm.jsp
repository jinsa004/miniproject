<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypage.jsp" %>

    <div id="content_wrap">
      <input id="employeeId" type="hidden" value="${principal.employeeId}" />
      <div class="cont_mypage">
        <h2>이력서 등록</h2>
        <div class="notice_box2">
          <div class="mypage_resume_list">
            <div class="resume_form">
              <ul>
                <c:forEach var="resumePS" items="${resumePS}">
                  <li class="resume_cont">
                    <span class="input_radio">
                      <input type="radio" name="resume_select" id="resume_select" value="${resumePS.resumeId}" <c:if
                        test="${resumePS.main eq true}">checked</c:if> />
                    </span>
                    <label for="resume_select" class="resume_select_box">
                      <a href="#" class="list_title">
                        <span>${resumePS.resumeTitle}</span>
                      </a>
                      <ul class="list_option">
                        <li class="career">
                          <span>${resumePS.careerPeriod}</span>
                        </li>
                        <li class="part"><span>${resumePS.jobName}</span></li>
                      </ul>
                    </label>

                    <div class="btn_resume_option">
                      <span><a href="/emp/resumeUpdate/${resumePS.resumeId}">수정하기</a></span>
                      <button class="btn_delete_resume" type="button" value="${resumePS.resumeId}">삭제하기</button>
                    </div><!-- .btn_resume_option -->
                  </li><!-- .resume_cont -->
                </c:forEach>
              </ul><!-- #tab-1 -->
              <div class="btn_main_resume_select">
                <button id="btn_main_resume" type="button" class="btn btn-primary">
                  대표이력서 선택
                </button>
              </div>
            </div>
          </div>
          <!-- .resume_list -->
        </div>
        <!-- .notice_box -->
      </div>
      <!-- .cont_mypage -->
    </div>
    </div>
    <!-- #wrap -->
    <script src="/js/resume.js"></script>
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>