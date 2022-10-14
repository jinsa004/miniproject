<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerCompany.jsp" %>

    <div class="container">
      <div class="row">
        <div class="notice_update">
          <div id="notice_info" class="form">
            <div class="btn_group_delete">
              <div class="delete_btn">
                <button type="button" onclick="location.href='#'">공고삭제</button>
              </div>
            </div>
            <!-- delete_btn -->

            <div class="notice_form">
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
                  <div class="select-group">
                    <select>
                      <option>프론트엔드</option>
                      <option>백엔드</option>
                      <option>풀스택</option>
                      <option>안드로이드</option>
                      <option>IOS</option>
                    </select>
                  </div>
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
                    <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked>대졸
                    <label class="form-check-label" for="radio1"></label>
                  </div>
                  <div class="form-check">
                    <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">고졸
                    <label class="form-check-label" for="radio2"></label>
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

          <div class="btn_group_update">
            <div class="update_btn">
              <button type="button" onclick="location.href='#'">수정완료</button>
            </div>
          </div>
          <!-- update_btn -->

        </div>
        <!-- notice_update -->
      </div>
    </div>
    <script src="/js/main.js"></script>
    <script src="/js/notice.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>