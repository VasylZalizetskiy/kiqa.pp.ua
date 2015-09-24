<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="uk">

<head>

    <title>KIQA (Комп’ютерна Інженерія Questions &amp; Answers) | Система дистанційної самопідготовки</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="KIQA (Комп’ютерна Інженерія Questions & Answers) | Система дистанційної самопідготовки" >
    <meta name="generator" content="Java EE">
    <meta name="author" content="Vasyl Zalizetskiy">
    <meta name="keywords" content="c, c++, c#, java, javascript, php, pascal, basic, html, css, mysql, сайт запитань і відповідей.">
    
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login-register.css">
    
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/static/img/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-152x152.png" />
	<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/static/img/apple-touch-icon-180x180.png" />    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script language="javascript">
        var baseUrl = '${pageContext.request.contextPath}';
    </script>
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/static/js/navbar.js"></script>
    
    <script src="${pageContext.request.contextPath}/static/js/login-register.js"></script>

</head>

<body>

    <!-- Navigation -->
    
 <div id="navbar-full">
    <div id="navbar">
       <!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
        <!--navbar-fixed-top navbar-transparent-->
        <nav class="navbar navbar-ct-black " role="navigation">
          
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand navbar-brand-logo" href="index.html" title="На головну">
                    <div class="logo">
                    	<img src="${pageContext.request.contextPath}/static/img/site_logo.png">
                    </div>
              </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="javascript:void(0);" data-toggle="search" class="hidden-xs">
                            <i class="pe-7s-search"></i>
                            <p>Пошук</p>
                        </a>
                    </li>
<!--
                    <li>
                        <a href="#">
                            <i class="pe-7s-mail">
                                <span class="label">23</span>
                            </i>
                            <p>Повідомлення</p>
                        </a>
                    </li>
--> 
                    <li class="dropdown hidden-xs">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p>Аккаунт</p>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Вхід</a></li>
                                <li><a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">Реєстрація</a></li>
                            <!--<li class="divider"></li>
                            <li><a href="#">Нагадати пароль</a></li>-->
                           </ul>
                    </li>
                    <ul class="nav nav-pills nav-stacked visible-xs">
                        <li><a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Вхід</a></li>
                        <li><a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">Реєстрація</a></li>
                            <!--<li class="divider"></li>
                            <li><a href="#">Нагадати пароль</a></li>-->
                    </ul>                  
                  
               </ul>
               <form class="navbar-form navbar-right navbar-search-form" role="search">                  
                 <div class="form-group">
                      <input type="text" value="" class="form-control" placeholder="Що шукаємо ?">
                 </div> 
              </form>
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
    </div><!--  end navbar -->

</div> <!-- end menu-dropdown -->

        <!-- Login -->
    
		 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Увійти через</h4>
                    </div>
                    <div class="modal-body">  
                        <div class="box">
                             <div class="content">
                                <div class="social">
                                    <a class="circle github" href="/auth/github">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="/auth/google_oauth2">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="/auth/facebook">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>або</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <form method="post" action="/login" accept-charset="UTF-8">
                                    <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                    <input id="password" class="form-control" type="password" placeholder="Пароль" name="password">
                                    <input class="btn btn-default btn-login" type="button" value="Увійти" onclick="loginAjax()">
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
                                <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                <input id="password" class="form-control" type="password" placeholder="Пароль" name="password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Повторіть пароль" name="password_confirmation">
                                <input class="btn btn-default btn-register" type="submit" value="Створити аккаунт" name="commit">
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Немає аккаунту ?</span>
                            <a href="javascript: showRegisterForm();">Створити</a>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Уже зареєстровані ?</span>
                             <a href="javascript: showLoginForm();">Вхід</a>
                        </div>
                    </div>        
    		      </div>
		      </div>
		  </div>        