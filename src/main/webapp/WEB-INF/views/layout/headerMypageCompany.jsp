<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/mypageCompany.css" />
    <script
      type="text/javascript"
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    ></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>4조 PROJECT</title>
  </head>
  <body>
    <div id="mypage_co_wrap">
      <div id="gnb_mypage">
        <div class="logo">
          <a href="/co">COMPANY_4</a>
        </div>
        <ul class="gnb_left">
          <li class="gnb_list4">
            <a href="/co/companyIntroInsert/${coprincipal.companyId}">
              <i class="fa-regular fa-paper-plane"></i>
              <span class="txt">기업소개 등록</span>
            </a>
          </li>
          <li class="gnb_list1">
            <a href="/co/companyIntroUpdate/${coprincipal.companyId}">
              <i class="fa-regular fa-pen-to-square"></i>
              <span class="txt">기업소개 수정</span>
            </a>
          </li>
          <li class="gnb_list2">
            <a href="/co/noticeService/${coprincipal.companyId}">
              <i class="fa-regular fa-rectangle-list"></i>
              <span class="txt">공고 관리</span>
            </a>
          </li>
          <li class="gnb_list3">
            <a href="/co/companyInfo/${coprincipal.companyId}">
              <i class="fa-regular fa-user"></i>
              <span class="txt">회원정보 관리(수정/탈퇴)</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- .gnb_mypage -->
    </div>

