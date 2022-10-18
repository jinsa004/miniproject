<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/header.jsp" %>
    <div class="p-5 border text-center">
      <h1>이력서 상세보기</h1>
    </div>

    <div class="container">
      <div class="row">
        <div class="resume_detail">

          <div id="info" class="form">
            <div class="form_title">
              <h2 class="title">기본정보</h2>
            </div>
            <div class="info_form">
              <div class="info_img">
                <img src="assets/resume/face1.jpg" width="100" height="140" />
              </div>
              <dl class="info_name">
                <dd class="name">홍길동</dd>
                <dd class="sex">남, 2000 (00세/만 00세)</dd>
              </dl>
              <dl class="info_basic">
                <dt class="info_list_item">이메일</dt>
                <dd id="info_email">hong@nate.com</dd><br>
                <dt class="info_list_item">휴대폰</dt>
                <dd id="info_cell">010-0000-0000</dd><br>
                <dt class="info_list_item">전화번호</dt>
                <dd id="info_tel">010-0000-0000</dd><br>
                <dt class="info_list_item">주소</dt>
                <dd id="info_location">부산 부산진구 중앙대로 749 </dd>
              </dl>
            </div>
          </div>
          <!-- info -->

          <div id="edu" class="form">
            <div class="form_title">
              <h2 class="title">학력사항</h2>
            </div>
            <div class="resume_edu">
              <div class="edu_select">
                <div class="btn-group">
                  <button type="button" class="edu_btn">고등학교 졸업</button>
                  <button type="button" class="edu_btn" id="checked">대학.대학원 이상 졸업</button>
                </div>
              </div>
              <div class="edu_form">
                <h4>대학.대학원 정보 입력</h4>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">대학</p>
                  </div>
                  <div class="edu_input">
                    <span>대학교(4년)</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">학교명</p>
                  </div>
                  <div class="edu_input">
                    <span>00대학교</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">지역</p>
                  </div>
                  <div class="edu_input">
                    <span>부산</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">재학기한</p>
                  </div>
                  <div class="edu_input">
                    <span>202206 - 202212</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">전공</p>
                  </div>
                  <div class="edu_input">
                    <span>주전공 경제/경영</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">주/야간</p>
                  </div>
                  <div class="edu_input">
                    <span>주간</span>
                  </div>
                </div>
                <div class="edu_row">
                  <div class="edu_list">
                    <p class="edu_list_item">학점</p>
                  </div>
                  <div class="edu_input">
                    <span>0.0 / 4.5</span>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <!-- edu -->

          <div id="career" class="form">
            <div class="form_title">
              <h2 class="title">경력사항</h2>
            </div>
            <div class="resume_career">
              <div class="career_select">
                <div class="btn-group">
                  <button type="button" class="career_btn">신입</button>
                  <button type="button" class="career_btn" id="checked">경력</button>
                </div>
              </div>
              <div class="career_form">
                <h4>회사 정보 입력</h4>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">회사명</p>
                  </div>
                  <div class="career_input">
                    <span>그린</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">재직기간</p>
                  </div>
                  <div class="career_input">
                    <span>202206 - 202212</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">퇴사사유</p>
                  </div>
                  <div class="career_input">
                    <span>업직종 전환</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">직급/직책</p>
                  </div>
                  <div class="career_input">
                    <span>주임 1년차</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">근무부서</p>
                  </div>
                  <div class="career_input">
                    <span>영업관리부</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">근무지역</p>
                  </div>
                  <div class="career_input">
                    <span>부산</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">연봉</p>
                  </div>
                  <div class="career_input">
                    <span>0000만원</span>
                  </div>
                </div>
                <div class="career_row">
                  <div class="career_list">
                    <p class="career_list_item">담당업무</p>
                  </div>
                  <div class="career_input">
                    <span>관리</span>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <!-- career -->

          <div class="contact_btn">
            <button type="button" onclick="location.href='#'">컨택하기</button>
          </div>
          <!-- contact -->
        </div>
        <!-- resume_detail -->
      </div>
    </div>
    <script src="/js/main.js"></script>
    <script src="/js/employee.js"></script>
    <%@ include file="../layout/footer.jsp" %>