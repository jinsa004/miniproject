<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>이력서 상세보기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body{
      width: 1600px;
      margin: 0 auto;
      align-items: center;
      padding: 0;
      font-family: "Malgun Gothic",dotum,gulim,sans-serif;
    }
    .container{
      width: 1200px;
      background-color: azure;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: relative;
    }
    .row{
      margin: 100px auto 250px auto;
      justify-content: space-between;
      align-items: center;
    }
    .resume{
      background-color: antiquewhite;
      width: 800px;
    }
    /* 전체 */

    .form{
      justify-content: space-between;
      align-items: center;
      margin: 40px 0 60px;
    }
    .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    /* form */

    #edu{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #edu .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    #edu .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    #edu .resume_edu .edu_select{
      padding: 50px 70px;
      border-bottom: 1px solid #ebebeb;
    }
    .resume_edu .edu_select .btn-group{
      justify-content: space-between;
      align-items: center;
    }
    .resume_edu .edu_select .btn-group button{
      border: 1px solid #ddd;
      background-color: #fff;
      size: 10px;
      width: 200px;
      height: 55px;
    }
    .resume_edu .edu_select .btn-group #checked{
      border: 1px solid #4876ef;
      background-color: #4876ef;
      color: #fff;
    }
    .resume_edu .edu_form{
      position: relative;
      padding: 50px 0 25px;
      display: none;
    }
    .resume_edu .edu_form h4{
      color: #222;
      font-size: 20px;
      font-weight: bold;
      letter-spacing: -1px;
      line-height: 28px;
      padding-bottom: 30px;
    }
    .edu_row{
      position: relative;
      padding: 0 49px 25px;
      display: block;
    }
    .edu_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .edu_form .edu_row .edu_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .edu_form .edu_row .edu_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }
    /* edu */

  </style>
</head>

<body>

<div class="container">
  <div class="row">
    <div class="resume">

      <div id="edu" class="form">
        <div class="resume_edu">

          <div class="edu_select">
            <div class="btn-group">
              <button type="button" class="edu_btn" id="high_btn" onclick="show_highschool()">고등학교 졸업</button>
              <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학.대학원 이상 졸업</button>
            </div>
          </div>

          <div class="edu_form" id="univ">
            <h4>고등학교 정보 입력</h4>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">대학</p>
              </div>
              <div class="edu_input">
                <span>대학교(4년)</span>
              </div>
            </div>
          </div>

          <div class="edu_form" id="highschool">
            <h4>고등학교 정보 입력</h4>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">학교명</p>
              </div>
              <div class="edu_input">
                <span>그린고등학교</span>
              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- edu -->

    </div>
  </div>
</div>
<!-- body -->


<script>
function show_highschool(){ 	
    var con1 = document.getElementById("highschool");
    var con2 = document.getElementById("univ");
    if(con1.style.display=='none'){ 		
    	con1.style.display = 'block';
      con2.style.display = 'none';
      document.getElementById("button").style.background='#000000';
    }else{ 		
    	con1.style.display = 'none';
      document.getElementById("button").style.background='#000000';
    } 
}

function show_univ(){ 	
    var con1 = document.getElementById("univ");
    var con2 = document.getElementById("highschool");
    if(con1.style.display=='none'){ 		
    	con1.style.display = 'block';
      con2.style.display = 'none';
    }else{ 		
    	con1.style.display = 'none'; 	
    } 
}
</script>

</body>
</html>