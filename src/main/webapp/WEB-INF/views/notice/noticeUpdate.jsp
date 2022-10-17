<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>

    <div class="container">
      <div class="row">
        <div class="notice_update">
          <div id="notice_info" class="form">
            <div class="btn_group_delete">
              <div class="delete_btn">
                <button id="btn_delete_notice" type="button">공고삭제</button>
              </div>
            </div>
            <!-- delete_btn -->

            <div class="notice_form">
              <input id="notice_id" type="hidden" value="${noticePS.noticeId}" />
              <input id="company_id" type="hidden" value="${noticePS.companyId}" />
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">공고명</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_title" name="notice_title" class="box_input"
                    value="${noticePS.noticeTitle}" placeholder="공고명을 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">분야</p>
                </div>
                <div class="notice_input">
                  <c:forEach var="jobPS" items="${jobPS}">
                    <input type='radio' id='job_id' name='job_id' value="${jobPS.jobId}" <c:if
                      test="${jobPS.jobId eq noticePS.jobId}">checked="checked"</c:if> /> ${jobPS.jobName}
                    <br>
                  </c:forEach>
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">공고마감일</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_period" name="notice_period" class="box_input"
                    value="${noticePS.noticePeriod}" placeholder="공고 마감일" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">채용부서</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_dept" name="notice_dept" class="box_input"
                    value="${noticePS.noticeDept}" placeholder="부서명을 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">채용직급</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_position" name="notice_position" class="box_input"
                    value="${noticePS.noticePosition}" placeholder="직급을 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">주요업무</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_task" name="notice_task" class="box_input"
                    value="${noticePS.noticeTask}" placeholder="업무를 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">평균연봉</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_sal" name="notice_sal" class="box_input" value="${noticePS.noticeSal}"
                    placeholder="연봉를 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">자격요건</p>
                </div>
                <div class="notice_input">
                  <div class="form-check">
                    <input type="radio" id="notice_qual" name="notice_qual" value="대졸" <c:if
                      test="${'대졸' eq noticePS.noticeQual}">checked="checked"</c:if> /> 대졸
                  </div>
                  <div class="form-check">
                    <input type="radio" id="notice_qual" name="notice_qual" value="고졸" <c:if
                      test="${'고졸' eq noticePS.noticeQual}">checked="checked"</c:if> />고졸
                  </div>
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">경력기간</p>
                </div>
                <div class="notice_input">
                  <input type="text" id="notice_career" name="notice_career" class="box_input"
                    value="${noticePS.noticeCareer}" placeholder="경력 기간을 입력하세요" />
                </div>
              </div>
              <div class="notice_row">
                <div class="notice_list">
                  <p class="notice_list_item">복리후생</p>
                </div>
                <div class="notice_input">
                  <textarea id="company_wellfare" name="company_wellfare" cols="40" rows="5"
                    placeholder="복리 후생">${noticePS.noticeWellfare}</textarea>
                </div>
              </div>
            </div>
          </div>
          <!-- basic -->

          <div class="update_btn">
            <button id="btnUpdateNotice" type="button">수정완료</button>
          </div>
          <!-- update_btn -->

        </div>
        <!-- notice_update -->
      </div>
    </div>
    <script src="/js/main.js"></script>
    <script src="/js/notice.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>