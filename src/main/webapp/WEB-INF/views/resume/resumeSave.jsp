<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../layout/headerMypage.jsp"%>

      <div class="resume_update">

        <div class="resume_title">
          <h2>이력서 제목</h2>
          <div class="title_update">
            <div class="title_input">
              <input type="text" class="resume_title_input" placeholder="이력서 제목을 입력하세요">
              <!-- input 입력 넣기 -->
            </div>
          </div>
        </div>
          <!-- resume_title -->

        <div id="info" class="form">
          <div class="form_title">
            <h2 class="title">기본정보</h2>
          </div>
          <div class="info_form">
            <div class="info_img">
              <form method="post" action="/resume_detail" enctype="multipart/form-data">
                <label for="files">파일 선택</label>
                <input type="file" name="file" id="files" class="hidden"/>
                <button type="submit">파일전송</button>
              </form>
            </div>
            <dl class="info_name">
              <dd class="name">홍길동</dd>
              <dd class="sex">남, 2000 (00세/만 00세)</dd>
            </dl>
            <dl class="info_basic">
              <dt class="info_list_item">이메일</dt>
              <input type="text" id="user_email" name="user_email" class="box_input" placeholder="이메일을 입력하세요"/>
              <dt class="info_list_item">휴대폰</dt>
              <input type="text" id="user_cel" name="user_cel" class="box_input" placeholder="휴대폰을 입력하세요"/>
              <dt class="info_list_item">전화번호</dt>
              <input type="text" id="user_tel" name="user_tel" class="box_input" placeholder="전화번호를 입력하세요"/>
              <dt class="info_list_item">주소</dt>
              <input type="text" id="user_location" name="user_location" class="box_input" placeholder="주소를 입력하세요"/>
            </dl>
          </div>
        </div>
        <!-- info -->

        <div id="edu" class="form">
          <div class="form_title">
            <h2 class="title">학력사항</h2>
            <span>최종학력 선택 후 학력사항을 입력하세요</span>
          </div>
          <div class="resume_edu">
            <div class="edu_select">
              <div class="btn-group">
                <button type="button" class="edu_btn" id="high_btn" onclick="show_highschool()">고등학교 졸업</button>
                <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학.대학원 이상 졸업</button>
              </div>
            </div>

            <div class="edu_form" id="highschool">
              <h4>고등학교 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="highschool_name" name="highschool_name" class="box_input" placeholder="고등학교 명을 입력하세요"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기간</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입학년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="졸업년도"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공계열</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="highschool_major" name="highschool_major" class="box_input" placeholder="전공계열"/>
                </div>
              </div>
            </div>

            <div class="edu_form" id="univ">
              <h4>대학.대학원 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="univ_name" name="univ_name" class="box_input" placeholder="대학교 명을 입력하세요"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기간</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입학년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="졸업년도"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="univ_major" name="univ_major" class="box_input" placeholder="전공 입력"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">졸업학점</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="grades" name="grades" class="box_input" placeholder="학점 입력"/><p>/ 4.5</p>
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
                <button type="button" class="career_btn" id="new_btn" onclick="show_new()">신입</button>
                <button type="button" class="career_btn" id="work_btn" onclick="show_work()">경력</button>
              </div>
            </div>

            <div class="career_form" id="work">
              <h4>회사 정보 입력</h4>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">직작명</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_name" name="career_name" class="box_input" placeholder="직장 명을 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">재직기간</p>
                </div>
                <div class="career_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입사년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="퇴사년도"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">직급명</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_position" name="career_position" class="box_input" placeholder="전공계열을 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">근무부서</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_section" name="career_section" class="box_input" placeholder="근무 부서를 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">담당업무</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_task" name="career_task" class="box_input" placeholder="담당 업무를 입력하세요"/>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- career -->

        <div id="field" class="form">
          <div class="form_title">
            <h2 class="title">관심분야</h2>
          </div>
          <div class="resume_field">
            <div class="field_select">
              <div class="select-group">
                <select class="form-select mt-3">
                  <option>프론트엔드</option>
                  <option>백엔드</option>
                  <option>웹 풀스택</option>
                  <option>안드로이드</option>
                  <option>IOS</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <!-- field -->

        <div class="update_btn">
          <button type="button" onclick="location.href='#'">등록완료</button>
        </div>
        <!-- update -->

      </div>
      <!-- resume_update -->
    </div>
</div>
<!-- body -->
<script>
  function show_highschool(){ 	
      var con1 = document.getElementById("highschool");
      var con2 = document.getElementById("univ");
      var con3 = document.getElementById("high_btn");
      var con4 = document.getElementById("univ_btn");
      if(con3.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con2.style.display = 'none';
        con3.style.background='#4876ef';
        con3.style.color='#fff';
        con4.style.background='#fff';
        con4.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con3.style.background='#fff';
        con3.style.color='#333';
      } 
  }
  
  function show_univ(){ 	
      var con1 = document.getElementById("univ");
      var con2 = document.getElementById("highschool");
      var con3 = document.getElementById("high_btn");
      var con4 = document.getElementById("univ_btn");
      if(con4.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con2.style.display = 'none';
        con4.style.background='#4876ef';
        con4.style.color='#fff';
        con3.style.background='#fff';
        con3.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con4.style.background='#fff';
        con4.style.color='#333';
      } 
  }

  function show_new(){ 	
      var con1 = document.getElementById("work");
      var con2 = document.getElementById("new_btn");
      var con3 = document.getElementById("work_btn");
      if(con2.style.background!='#4876ef'){ 		
        con1.style.display = 'none';
        con2.style.background='#4876ef';
        con2.style.color='#fff';
        con3.style.background='#fff';
        con3.style.color='#333';
      }else{
        con2.style.background='#fff';
        con2.style.color='#333';
      } 
  }
  
  function show_work(){ 	
      var con1 = document.getElementById("work");
      var con2 = document.getElementById("new_btn");
      var con3 = document.getElementById("work_btn");
      if(con3.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con3.style.background='#4876ef';
        con3.style.color='#fff';
        con2.style.background='#fff';
        con2.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con3.style.background='#fff';
        con3.style.color='#333';
      } 
  }
  </script>

<%@ include file="../layout/footer.jsp"%>

