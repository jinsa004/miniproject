<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../layout/headerMypageCompany.jsp" %>
    <input id="companyId" type="hidden" value="${company.companyId}" />
    <div class="company_update">
      <div id="co_info_wrap">
        <div class="container">
          <div class="co_update">
            <div class="title_update">
              <h1>기업 회원 정보 관리</h1>
            </div>
            <div id="basic_info" class="form">
              <div class="form_title">
                <h2 class="title">기본정보</h2>
              </div>
              <div class="info_form">
                <div class="basic_form info_left">
                  <div class="basic_input">
                    <span class="info_right_txt">회사명</span>
                    <input type="text" id="companyName" name="company_name" class="box_input info_right_input"
                      value="${company.companyName}" placeholder="회사명을 입력하세요" />
                  </div>
                  <div class="basic_input">
                    <span class="info_right_txt">사업자번호</span>
                    <input type="text" id="companyNumber" name="company_number" class="box_input info_right_input"
                      value="${company.companyNumber}" placeholder="사업자번호를 입력하세요" />
                  </div>
                </div>
              </div><!-- .info_form -->
            </div>
            <!-- info -->

            <div id="contact_info" class="form">
              <div class="form_title">
                <h2 class="title">담당자 연락처</h2>
              </div>
              <div class="info_form">
                <div class="contact_form info_left">
                  <div class="contact_row">
                    <div class="contact_input">
                      <span class="info_right_txt">휴대폰</span>
                      <input type="text" id="companyTel" name="company_tel" class="box_input info_right_input"
                        value="${company.companyTel}" placeholder="휴대폰 번호을 입력하세요" />
                    </div>
                  </div>
                  <div class="contact_row">
                    <div class="contact_input">
                      <span class="info_right_txt">이메일</span>
                      <input type="text" id="companyEmail" name="company_email" class="box_input info_right_input"
                        value="${company.companyEmail}" placeholder="이메일을 입력하세요" />
                    </div>
                  </div>
                  <div class="contact_row">
                    <div class="contact_input">
                      <span class="info_right_txt">기업 주소</span>
                      <input type="text" id="companyLocation" name="company_location" class="box_input info_right_input"
                        value="${company.companyLocation}" placeholder="상세주소를 입력하세요" />
                    </div>
                  </div>
                </div>
              </div><!-- .info_form -->
            </div>
            <!-- contact -->

            <div id="login_info" class="form">
              <div class="form_title">
                <h2 class="title">로그인 정보</h2>
              </div>
              <div class="info_form">
                <div class="login_form info_left">
                  <div class="login_row">
                    <div class="login_input">
                      <span class="info_right_txt">아이디</span>
                      <input type="text" id="companyUsername" name="company_id" class="box_input info_right_input"
                        value="${company.companyUsername}" placeholder="아이디를 입력하세요" />
                    </div>
                  </div>
                  <div class="login_row">
                    <div class="login_input">
                      <span class="info_right_txt">비밀번호</span>
                      <input type="text" id="companyPassword" name="company_password" class="box_input info_right_input"
                        value="${company.companyPassword}" placeholder="비밀번호를 입력하세요" />
                    </div>
                  </div>
                </div>
              </div><!-- .info_form -->
            </div>
            <!-- login -->

            <div id="field" class="form">
              <div class="form_title">
                <h2 class="title">관심 분야</h2>
              </div>
              <div class="resume_field info_form2">
                <div class="field_select">
                  <form method="post" action="/#">
                    <ul class="part_box_wrap">
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="jobId" name="프론트엔드" value="프론트엔드" checked>
                        <em>
                          <label class="form-check-label" for="프론트엔드">프론트엔드</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="백엔드" name="백엔드" value="백엔드">
                        <em>
                          <label class="form-check-label" for="백엔드">백엔드</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="풀스택" name="풀스택" value="풀스택">
                        <em>
                          <label class="form-check-label" for="풀스택">풀스택</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="안드로이드" name="안드로이드" value="안드로이드">
                        <em>
                          <label class="form-check-label" for="안드로이드">안드로이드</label>
                        </em>
                      </li>
                      <li class="career_part1 part_box form-check">
                        <input type="checkbox" class="login_check" id="IOS" name="IOS" value="IOS">
                        <em>
                          <label class="form-check-label" for="IOS">IOS</label>
                        </em>
                      </li>
                    </ul>
                  </form>
                </div>
              </div>
            </div>
            <!-- field -->

            <div class="btn_group">
              <div class="update_btn">
                <button id="btnCoInfoUpdate" type="button">등록완료</button>
              </div>
              <div class="delete_btn">
                <button id="btnCoInfoDelete" type="button">회원탈퇴</button>
              </div>
            </div>
          </div><!-- .co_update -->
        </div><!-- .container -->
      </div><!-- .co_info_wrap -->
    </div><!-- .company_update -->
    </div>
    <!-- company_info -->
    </div>
    </div>
    <!-- body -->
    <script src="/js/main.js"></script>
    <script src="/js/company.js"></script>
    <%@ include file="../layout/footerCompany.jsp" %>