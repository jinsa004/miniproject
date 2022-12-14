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
            <link href="/css/style.css" rel="stylesheet" />
            <script type="text/javascript"
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
            <script type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

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
                                <input type="text" id="search" title="검색어 입력" name="search" placeholder="검색어를 입력해주세요."
                                    maxlength="50" />
                                <!-- <button type="submit" class="btn_search">검색</button> -->
                            </form>
                        </div>
                        <!-- .search_bar -->

                        <div class="login_box">
                            <c:choose>
                                <c:when test="${empty empprincipal.employeeId}">
                                    <button class="btn_login" type="button" onClick="javascript:popOpen();">
                                        로그인
                                    </button>
                                    <button class="btn_join" type="button" onClick="javascript:popOpen2();">
                                        회원가입
                                    </button>
                                    <a href="/co" class="btn_company">기업 서비스</a><!-- .btn_company -->
                                </c:when>
                                <c:otherwise>
                                    <a class="btn_logout" href="/logout">로그아웃</a>

                                    <a href="/es/emp/mypageInsertForm/${empprincipal.employeeId}" class="btn_mypage">마이
                                        페이지</a>
                                    <a href="/co" class="btn_company">기업 서비스</a><!-- .btn_company -->
                                    <div id="alarmContainer"
                                        style="width: 40px; height: 40px; position: absolute; top: 0px; right: -50px">
                                        <button type="button"
                                            style="width: 40px; height: 40px; background: none; border: 1px #0ccca4 solid; border-radius: 50%"
                                            onclick="addNotice()">
                                            <i class="fa-regular fa-bell" style="color: #0ccca4"></i>
                                        </button>
                                        <div class="row">
                                            <table id="conversation" class="table table-striped"
                                                style="width: 280px; display: none;">
                                                <thead>
                                                    <tr>
                                                        <th
                                                            style="width: 280px; position: relative; top: 5px; right: 120px; ">
                                                            Notification</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="notification_emp"
                                                    style="background:#fff; position: relative; top: 5px; right: 120px; font-size: 13px">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- alarmContainer -->
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
                                    <a href="/es/emp/matchingNotice/${empprincipal.employeeId}">매칭리스트</a>
                                </li>
                                <li>
                                    <a href="/es/emp/subscribeNotice/${empprincipal.employeeId}">구독기업공고</a>
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
                                    <span class="check">
                                        <input id="employeeUsername" type="text" placeholder="아이디를 입력하세요."
                                            value="${employeeUsername}" maxlength="15" />
                                        <button id="btnUsernameSameCheck" type="button" onclick="checkUsername()">
                                            중복체크
                                        </button>
                                    </span>
                                </div>

                                <div class="join_pw join_box">
                                    <h3>
                                        <label for="employeePassword">비밀번호</label>
                                    </h3>
                                    <span>
                                        <input id="employeePassword" type="password" placeholder="패스워드를 입력하세요."
                                            name="employeePassword" maxlength="10" />
                                    </span>
                                    <span class="check">
                                        <input id="employeepasswordRepeat" type="password" maxlength="10"
                                            placeholder="패스워드를 한번 더 입력하세요." />
                                        <button id="employeepasswordCheck" type="button" onclick="checkPassword()">
                                            비밀번호 확인
                                        </button>
                                    </span>
                                </div>
                                <!-- <div class="join_pw2 join_box"></div> -->
                                <div class="join_sex join_box">
                                    <h3>
                                        <label for="employeeSex">성별</label>
                                    </h3>
                                    <span>
                                        <input id="employeeSex" type="text" placeholder="성별을 입력하세요. (ex. 남 또는 여)"
                                            name="employeeSex" maxlength="1" />
                                    </span>
                                </div>
                                <div class="join_email join_box">
                                    <h3>
                                        <label for="employeeEmail">이메일</label>
                                    </h3>
                                    <span class="check">
                                        <input id="employeeEmail" type="email" placeholder="이메일을 입력하세요."
                                            name="employeeEmail" maxlength="25" />
                                        <button id="employeeEmailCheck" type="button" onclick="checkEmail()">
                                            이메일 확인
                                        </button>
                                    </span>
                                </div>

                                <div class="user_info">
                                    <div class="join_name join_box">
                                        <h3>
                                            <label for="employeeName">이름</label>
                                        </h3>
                                        <span>
                                            <input id="employeeName" type="text" placeholder="이름을 입력하세요."
                                                name="employeeName" maxlength="6" />
                                        </span>
                                    </div>
                                    <div class="join_birth join_box">
                                        <h3>
                                            <label for="employeeBirth">생년월일</label>
                                        </h3>
                                        <span>
                                            <input id="employeeBirth" type="date" placeholder="생년월일을 입력하세요."
                                                name="employeeBirth" maxlength="8" value="" />
                                        </span>
                                    </div>
                                    <div class="join_phone join_box">
                                        <h3>
                                            <label for="employeeTel">휴대폰번호</label>
                                        </h3>
                                        <span>
                                            <input id="employeeTel" type="tel" placeholder="ex) 010-0000-0000"
                                                name="employeeTel" maxlength="11" />
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="join_right">
                                <div class="join_adress join_box employee_location">
                                    <h3>
                                        <label for="employeeLocation">주소</label>
                                    </h3>
                                    <span>
                                        <input type="text" id="sample6_postcode" placeholder="우편번호" />
                                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
                                            class="btn_post_code" />
                                        <input type="text" id="sample6_address" class="employeeLocation"
                                            placeholder="주소" />
                                        <input type="text" id="sample6_detailAddress" placeholder="상세주소" />
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" />
                                    </span>
                                </div>
                                <!-- .join_adress -->

                                <div class="career_part">
                                    <h2>관심분야</h2>
                                    <c:forEach var="jobPS" items="${jobPS}">
                                        <div class="career_part1 part_box">
                                            <input type="checkbox" class="login_check" class="job_Id"
                                                name="job_checkbox" value="${jobPS.jobId}" />
                                            <em>
                                                <label for="c_part_front">${jobPS.jobName}</label>
                                            </em>
                                        </div>
                                    </c:forEach>
                                </div>
                                <!-- .career_part -->
                            </div>
                            <!-- .join_right -->
                        </form>

                        <button id="btn_join" type="button">회원가입</button>
                    </div>
                </div>
            </div>
            <c:choose>
                <c:when test="${!empty empprincipal.employeeId}">
                    <input class="checkprinciple" type="hidden" value="${empprincipal.employeeName}">
                </c:when>
                <c:when test="${!empty coprincipal.companyId}">
                    <input class="checkprinciple" type="hidden" value="${coprincipal.companyName}">
                </c:when>
            </c:choose>