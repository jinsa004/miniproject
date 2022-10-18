<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" />
            <link rel="stylesheet" href="/css/reset.css" />
            <link rel="stylesheet" href="/css/company.css" />
            <script type="text/javascript"
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                            <a href="/co">COMPANY_4</a>
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
                                <c:when test="${empty principal.companyId}">
                                    <button class="btn_login" type="button" onClick="javascript:popOpenCompany();">
                                        로그인
                                    </button>
                                    <button class="btn_join" type="button" onClick="javascript:popOpenCompany2();">
                                        회원가입
                                    </button>
                                    <a href="/emp/main" class="btn_company">회원 서비스</a>
                                </c:when>
                                <c:otherwise>
                                    <a class="btn_logout" href="/co/logout">로그아웃</a>
                                    <a href="/co/companyIntroUpdate/${principal.companyId}" class="btn_mypage">마이페이지</a>
                                    <a href="/emp/main" class="btn_company">회원 서비스</a><!-- .btn_company -->
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <!-- .login_box -->
                        <nav>
                            <ul>
                                <li>
                                    <a href="/co">인재검색</a>
                                </li>
                                <li>
                                    <a href="/co/noticeSave/${principal.companyId}">공고등록</a>
                                </li>
                                <li>
                                    <a href="/co/noticeService/${principal.companyId}">공고/지원자관리</a>
                                </li>
                                <li>
                                    <a href="/co/matchingResume">매칭리스트</a>
                                </li>
                            </ul>
                        </nav>
                        <!-- nav -->
                    </header>
                    <!-- header -->
                </div>
                <!-- .header_wrap -->

                <div class="modal_login_bg" onClick="javascript:popCloseCompany();"></div>
                <div class="modal_login_wrap">
                    <h2>로그인</h2>
                    <div class="form_box">
                        <form>
                            <input id="coUsername" type="text" placeholder="아이디를 입력하세요." />
                            <input id="coPassword" type="password" placeholder="패스워드를 입력하세요." />
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

                <div class="modal_join_bg" onClick="javascript:popCloseCompany2();"></div>
                <div class="modal_join_wrap">
                    <h2>회원가입</h2>
                    <div class="form_box cf">
                        <form>
                            <div class="join_left">
                                <div class="join_id join_box">
                                    <h3>
                                        <label for="id">아이디</label>
                                    </h3>
                                    <span>
                                        <input id="companyUsername" type="text" placeholder="아이디를 입력하세요."
                                            maxlength="20" />
                                    </span>
                                </div>
                                <div class="join_pw join_box">
                                    <h3>
                                        <label for="password">비밀번호</label>
                                    </h3>
                                    <span>
                                        <input id="companyPassword" type="password" placeholder="패스워드를 입력하세요."
                                            name="password" maxlength="20" />
                                    </span>
                                </div>
                                <div class="join_pw2 join_box">
                                    <h3>
                                        <label for="password2">비밀번호 재확인</label>
                                    </h3>
                                    <span>
                                        <input id="password2" type="password" placeholder="패스워드를 입력하세요." name="password"
                                            maxlength="20" />
                                    </span>
                                </div>
                                <div class="join_email join_box">
                                    <h3>
                                        <label for="email">이메일</label>
                                    </h3>
                                    <span>
                                        <input id="companyEmail" type="email" placeholder="이메일을 입력하세요." name="email"
                                            maxlength="30" />
                                    </span>
                                </div>

                                <div class="company_info">
                                    <div class="join_name join_box">
                                        <h3>
                                            <label for="c_name">회사명</label>
                                        </h3>
                                        <span>
                                            <input id="companyName" type="text" placeholder="회사명을 입력하세요."
                                                name="companyName" maxlength="30" />
                                        </span>
                                    </div>
                                    <div class="join_number join_box">
                                        <h3>
                                            <label for="c_number">사업자등록번호</label>
                                        </h3>
                                        <span>
                                            <input id="companyNumber" type="text" placeholder="사업자번호를 입력하세요."
                                                name="companyNumber" maxlength="30" />
                                        </span>
                                    </div>
                                    <div class="join_birth join_box">
                                        <h3>
                                            <label for="c_birth">생년월일</label>
                                        </h3>
                                        <span>
                                            <input id="c_birth" type="date" placeholder="생년월일을 입력하세요."
                                                name="companyBirth" maxlength="40" />
                                        </span>
                                    </div>
                                    <div class="join_phone join_box">
                                        <h3>
                                            <label for="c_phone">휴대폰번호</label>
                                        </h3>
                                        <span>
                                            <input id="companyTel" type="tel" placeholder="휴대폰번호를 입력하세요."
                                                name="companyPhone" maxlength="40" />
                                        </span>
                                    </div>
                                    <div class="join_adress join_box">
                                        <h3>
                                            <label for="c_adress">주소</label>
                                        </h3>
                                        <span>
                                            <input id="companyLocation" type="text" placeholder="주소를 입력하세요."
                                                name="companyAdress" maxlength="100" />
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="join_right">
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
                            </div>
                        </form>
                        <button id="btn_join" type="button" class="btn btn-primary">
                            회원가입
                        </button>
                    </div>
                </div>

                <c:choose>
                    <c:when test="${!empty principal.employeeId}">
                        <input class="checkprinciple" type="hidden" value="${principal.employeeName}">
                    </c:when>
                    <c:when test="${!empty principal.companyId}">
                        <input class="checkprinciple" type="hidden" value="${principal.companyName}">
                    </c:when>
                </c:choose>
                <script src="/js/webSocket.js"></script>