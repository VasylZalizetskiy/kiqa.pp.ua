<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="includes/header.jsp" %>

	<!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
        
    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide hidden-xs">
        <!-- Indicators -->

        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <!--put this into carousel-caption: <h2>Caption X</h2>-->

        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url(${pageContext.request.contextPath}/static/img/1.png);"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(${pageContext.request.contextPath}/static/img/2.png);"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(${pageContext.request.contextPath}/static/img/3.png);"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(${pageContext.request.contextPath}/static/img/4.png);"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url(${pageContext.request.contextPath}/static/img/5.png);"></div>
                <div class="carousel-caption">
                    
                </div>
            </div>
        </div>

        <!-- Controls -->
      
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">
           
    <!-- Call to Action Section -->
        <div class="well hero-spacer">
            <div class="row">
                <div class="col-lg-12">
                        <h1><b>Стань фахівцем, не відволікаючись від робочого місця, чи домашнього затишку.</b></h1>
                        <h2>З KIQA це можливо вже сьогодні. Все, що Вам потрібно, це браузер.</h2>
                </div>
                <div class="col-lg-12">
                    <a class="btn btn-primary btn-lg btn-block" href="category.html">Показати каталог курсів</a>
                </div>
            </div>
        </div>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="clearfix"></div><div class="col-lg-12">
                <h1 class="page-header">
                    Курси, які незабаром почнуться
                </h1>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> C</h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу... </p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> C++</h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу... </p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> JAVA</h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>           
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> Pascal </h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div><div class="col-lg-12">
                <h1 class="page-header">
                    Популярні курси
                </h1>
            </div>             
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> HTML </h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> CSS </h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div><div class="col-lg-12">
                <h1 class="page-header">
                    Студенти рекомендують
                </h1>
            </div>   
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> Linux </h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-6 col-lx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-clock-o"></i> Cisco </h4>
                    </div>
                    <div class="panel-body">
                        <p>Тут кароче опис курсу...</p>
                        <a href="#" class="btn btn-default">ДІЗНАТИСЬ БІЛЬШЕ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->    
        
<%@include file="includes/footer.jsp" %>
