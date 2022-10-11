<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../layout/headerMypage.jsp"%>

<div id="content_wrap">
  <div class="cont_mypage">
    <h2>이력서 등록</h2>
    <div class="notice_box2">
      <div class="mypage_resume_list">
        <div class="resume_form">
          <ul>
            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                  checked
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->

            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->

            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->
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
  <script src="/js/main.js"></script>
  <%@ include file="../layout/footer.jsp"%>
</div>
