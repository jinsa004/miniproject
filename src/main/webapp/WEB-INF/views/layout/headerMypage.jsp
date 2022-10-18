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
            <link rel="stylesheet" href="/css/main.css" />
            <link rel="stylesheet" href="/css/mypage.css" />
            <script type="text/javascript"
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <title>4조 PROJECT</title>
        </head>

        <body>
            <div id="mypage_wrap">
                <div id="gnb_mypage">
                    <div class="logo">
                        <a href="/emp/main">PROJECT_4</a>
                    </div>
                    <ul class="gnb_left">
                        <li class="gnb_list1">
                            <a href="/emp/resumeSaveForm/${principal.employeeId}">
                                <i class="fa-regular fa-paper-plane"></i>
                                <span class="txt">이력서 등록</span>
                            </a>
                        </li>
                        <li class="gnb_list3">
                            <a href="/emp/employeeInfo">
                                <i class="fa-regular fa-star"></i>
                                <span class="txt">관심분야 관리</span>
                            </a>
                        </li>
                        <li class="gnb_list4">
                            <a href="/emp/employeeInfo/${principal.employeeId}">
                                <i class="fa-regular fa-user"></i>
                                <span class="txt">회원정보관리(수정/탈퇴)</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- .gnb_mypage -->
            </div>