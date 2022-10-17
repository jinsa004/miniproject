<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="/css/reset.css" />
      <link rel="stylesheet" href="/css/main.css" />
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <title>4조 PROJECT</title>
    </head>

    <body>
      <div id="user_wrap">
        <div class="header_wrap">
          <header>
            <div class="logo">
              <a href="/emp/main">PROJECT_4</a>
            </div>
            <!-- .logo -->

            <div class="search_bar">
              <form class="cf">
                <input type="text" id="search" title="검색어 입력" name="search" placeholder="검색어를 입력해주세요." maxlength="50" />
                <!-- <button type="submit" class="btn_search">검색</button> -->
              </form>
            </div>
            <!-- .search_bar -->

            <div class="login_box">
              <c:choose>
                <c:when test="${empty principal.employeeId}">
                  <button class="btn_login" type="button" onClick="javascript:popOpen();">
                    로그인
                  </button>
                  <button class="btn_join" type="button" onClick="javascript:popOpen2();">
                    회원가입
                  </button>
                  <a href="/co/mainCompany" class="btn_company">기업 서비스</a><!-- .btn_company -->
                </c:when>
                <c:otherwise>
                  <a class="btn_logout" href="/logout">로그아웃</a>

                  <a href="/emp/mypageInsertForm/${principal.employeeId}" class="btn_mypage">마이 페이지</a>
                  <a href="/co/mainCompany" class="btn_company">기업 서비스</a><!-- .btn_company -->
                </c:otherwise>
              </c:choose>
            </div>
            <!-- .login_box -->
            <nav>
              <ul>
                <li>
                  <a href="/emp/main">채용공고</a>
                </li>
                <li>
                  <a href="/emp/matchingNotice">매칭리스트</a>
                </li>
                <li>
                  <a href="/emp/subscribeNotice/${principal.employeeId}">구독기업공고</a>
                </li>
                <li>
                  <a href="/emp/companyList">기업정보</a>
                </li>
              </ul>
            </nav>
            <!-- nav -->
          </header>
          <!-- header -->
        </div>
        <!-- .header_wrap -->

        <div class="modal_login_bg" onClick="javascript:popClose();"></div>
        <div class="modal_login_wrap">
          <h2>로그인</h2>
          <div class="form_box">
            <form>
              <input id="username" type="text" placeholder="아이디를 입력하세요." />
              <input id="password" type="password" placeholder="패스워드를 입력하세요." />
            </form>
            <label class="btn_check">
              <input type="checkbox" class="login_check" id="remember" checked />
              <span class="login_check_icon"></span>
              <span class="login_check_text">로그인 상태 유지</span>
            </label>

            <button id="btn_login" type="button" class="btn btn-primary">
              로그인
            </button>
          </div>
        </div>

        <div class="modal_join_bg" onClick="javascript:popClose2();"></div>
        <div class="modal_join_wrap">
          <h2>회원가입</h2>
          <div class="form_box cf">
            <form action="/join" method="post">
              <div class="join_left">
                <div class="join_id join_box">
                  <h3>
                    <label for="employeeUsername">아이디</label>
                  </h3>
                  <span>
                    <input id="employeeUsername" type="text" placeholder="아이디를 입력하세요." value="${employeeUsername}"
                      maxlength="20" value="ssar" />
                    <button id="btnUsernameSameCheck" type="button" maxlength="20">
                      중복체크
                    </button>
                  </span>
                </div>

                <div class="join_pw join_box">
                  <h3>
                    <label for="employeePassword">비밀번호</label>
                  </h3>
                  <span>
                    <input id="employeePassword" type="password" placeholder="패스워드를 입력하세요." name="employeePassword"
                      maxlength="20" value="1234" />
                  </span>
                </div>
                <div class="join_pw2 join_box">
                  <input id="employeepasswordRepeat" type="password" placeholder="패스워드를 입력하세요." value="1234" />
                </div>
                <div class="join_sex join_box">
                  <h3>
                    <label for="employeeSex">성별</label>
                  </h3>
                  <span>
                    <input id="employeeSex" type="text" placeholder="성별을 입력하세요." name="employeeSex" maxlength="20"
                      value="여" />
                  </span>
                </div>
                <div class="join_email join_box">
                  <h3>
                    <label for="employeeEmail">이메일</label>
                  </h3>
                  <span>
                    <input id="employeeEmail" type="email" placeholder="이메일을 입력하세요." name="employeeEmail" maxlength="30"
                      value="ssar@nate.com" />
                  </span>
                </div>

                <div class="user_info">
                  <div class="join_name join_box">
                    <h3>
                      <label for="employeeName">이름</label>
                    </h3>
                    <span>
                      <input id="employeeName" type="text" placeholder="이름을 입력하세요." name="employeeName" maxlength="10"
                        value="회지" />
                    </span>
                  </div>
                  <div class="join_birth join_box">
                    <h3>
                      <label for="employeeBirth">생년월일</label>
                    </h3>
                    <span>
                      <input id="employeeBirth" type="date" placeholder="생년월일을 입력하세요." name="employeeBirth"
                        maxlength="40" value="2000-01-01" />
                    </span>
                  </div>
                  <div class="join_phone join_box">
                    <h3>
                      <label for="employeeTel">휴대폰번호</label>
                    </h3>
                    <span>
                      <input id="employeeTel" type="tel" placeholder="휴대폰번호를 입력하세요." name="employeeTel" maxlength="40"
                        value="01022229999" />
                    </span>
                  </div>
                </div>
              </div>

              <div class="join_right">
                <div class="join_adress join_box company_location">
                  <h3>
                    <label for="employeeLocation">주소</label>
                  </h3>
                  <span>
                    <input type="text" id="sample6_postcode" placeholder="우편번호" value="613-103" />
                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" /><br />
                    <input type="text" id="sample6_address" class="employeeLocation" placeholder="주소"
                      value="부산" /><br />
                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" value="부전동" />
                    <input type="text" id="sample6_extraAddress" placeholder="참고항목" value="참고" />
                  </span>
                </div>
                <!-- .join_adress -->

                <div class="career_part">
                  <h2>관심분야</h2>
                  <c:forEach var="jobPS" items="${jobPS}">
                    <div class="career_part1 part_box">
                      <input type="checkbox" class="login_check" class="job_Id" name="job_checkbox"
                        value="${jobPS.jobId}" />
                      <em>
                        <label for="c_part_front">${jobPS.jobName}</label>
                      </em>
                    </div>
                  </c:forEach>
                </div>
              </div>
            </form>

            <button id="btn_join" type="button">

              회원가입
            </button>
          </div>
        </div>
      </div>