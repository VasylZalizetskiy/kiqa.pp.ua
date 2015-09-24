<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <!-- Footer -->
        <footer>
            <hr>
            <div class="row">
                <div class="col-md-3 col-xs-12">
                    <div class="col-md-12 col-xs-12">
                    <a href="#" title="На головну">
                        <div class="logo">
                            <img src="${pageContext.request.contextPath}/static/img/site_logo.png">
                        </div>
                    </a>
                    </div>
                    <div class="col-md-12 col-xs-12">
                        <p>kiqa.pp.ua являє собою інтерактивну навчальну платформу, де поєднується теорія і практика, для одержання справжнього досвіду.</p>
                        <p>Copyright &copy; 2015 "Bearded Conservative". rev 2015.06.06.0001</p>
                    </div>
                </div>
                <div class="col-md-2 col-xs-6">
                    <ul class="nav nav-pills nav-stacked">
                        <li><h5>Проект</h5></li>
                        <li><a href="about.html">Про проект</a></li>
                        <li><a href="blog-home.html">Блог</a></li>
                        <li class="disabled"><a href="#">Новини</a></li>
                        <li class="disabled"><a href="#">Рейтинг</a></li>
                        <li class="disabled"><a href="#">Супровід</a></li>
                        <li class="disabled"><a href="#">Розробка</a></li>
                    </ul>
                </div>
                <div class="col-md-2 col-xs-6">
                    <ul class="nav nav-pills nav-stacked">
                        <li><h5>Запитання та Відповіді</h5></li>
                        <li class="disabled"><a href="#">Запитання</a></li>
                        <li><a href="faq.html">FAQs</a></li>
				        <li class="disabled"><a href="#">Теги</a></li>
				        <li class="disabled"><a href="#">Запитати</a></li>
                        <li class="disabled"><a href="#">Пошук</a></li>
                    </ul>
                </div>
                <div class="clearfix visible-xs-block visible-sm-block"></div>
                <div class="col-md-2 col-xs-4">
                    <ul class="nav nav-pills nav-stacked">
                        <li><h5><a href="contact.html">Звя’зок</a></h5></li>
                        <li class="disabled"><a href="#">Google+</a></li>
                        <li class="disabled"><a href="#">Twitter</a></li>
				        <li class="disabled"><a href="#">Facebook</a></li>
				        <li class="disabled"><a href="#">GitHub</a></li>
                        <li class="disabled"><a href="#">LinkeIn</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-xs-8">
                    <h5>Provided by Bearded Conservative</h5>
                    <a href="http://vk.com/id21490706" title="Provided by Bearded_Conservative">
                        <div class="company_logo">
                            <img src="${pageContext.request.contextPath}/static/img/company_logo.png">
                        </div>
                    </a>               
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/static/js/navbar.js"></script>
    
    <script src="${pageContext.request.contextPath}/static/js/login-register.js"></script>
    
    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    
</body>
		
</html>