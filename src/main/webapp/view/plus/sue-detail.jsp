<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="modoo" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <!-- 파비콘 삽입 -->
<link rel="icon" href="../../assets/img/favicon.png">
  <title>보드매칭 &rsaquo; 신고 게시판 &rsaquo; 상세페이지</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="../../assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="../../assets/css/style.css">
  <link rel="stylesheet" href="../../assets/css/components.css">
<!-- Start GA -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-94034622-3');
</script>
<!-- /END GA --></head>

<body>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
    
    <!--  header -->
		<modoo:header id="${member.memberId}" name="${member.memberName}" />

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>신고 상세 페이지</h1>
          </div>

          <div class="section-body">
            <h2 class="section-title">언제까지 어깨춤을 추게 할거야~</h2>
           <!--  <p class="section-lead">This page is just an example for you to create your own page.</p> -->
            <div class="card">
              <div class="card-header">
                <span class="badge badge-info">평단원</span><h4>윤석환</h4>
              </div>
              <div class="card-body">
                <p>얄라리 얄라 얄라셩 얄라리 얄라</p>
              </div>
              <div class="card-body">
                <p>신고 사유 : 부적절한 내용</p>
              </div>
              <div class="card-footer bg-whitesmoke">
                게시 : 2023-2-15 <div class="bullet"></div> 신고 : 2023-2-16
                <button class="btn btn-danger" style="float:right;" data-confirm="정말 삭제하시겠습니까?" data-confirm-yes="alert('삭제되었습니다. :)');">글 삭제</button>
				<div class="btn-group mb-2" style="float:right;">
               <button class="btn btn-info btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      점수 강등
               </button>
                  <div class="dropdown-menu">
                     <a class="dropdown-item" href="#">-10</a>
                     <a class="dropdown-item" href="#">-100</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="#">계정 1주일 정지</a>
                     <a class="dropdown-item" href="#">계정 1개월 정지</a>
                     <a class="dropdown-item" href="#">계정 영구 정지</a>
                   </div>
           		 </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <footer class="main-footer">
        <div class="footer-left">
          Copyright &copy; 2023 <div class="bullet"></div> Design By <a href="https://nauval.in/">Team jabar</a>
        </div>
        <div class="footer-right">
          
        </div>
      </footer>
    </div>
  </div>
  <style>
.main-content {
  padding-left: 15%;
  padding-right: 15%;
  min-width:40%;
}
@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
.badge.badge-info{
	margin-right:10px;
}
.btn-group>.btn:first-child{
	margin-right:10px;
	height: 36px;
}
body{
	font-family: 'GmarketSansMedium';
}
</style>
  <!-- General JS Scripts -->
  <script src="../../assets/modules/jquery.min.js"></script>
  <script src="../../assets/modules/popper.js"></script>
  <script src="../../assets/modules/tooltip.js"></script>
  <script src="../../assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="../../assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="../../assets/modules/moment.min.js"></script>
  <script src="../../assets/js/stisla.js"></script>
  
  <!-- JS Libraies -->

  <!-- Page Specific JS File -->
  
  <!-- Template JS File -->
  <script src="../../assets/js/scripts.js"></script>
  <script src="../../assets/js/custom.js"></script>
</body>
</html>