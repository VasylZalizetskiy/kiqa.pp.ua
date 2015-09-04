<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>

<div class="centered-login">
	    <ul class="nav nav-pills" id="login-or-register">
	    	<li class="active"><a href="#login" data-toggle="tab">Авторизація</a></li>
	        <li class="pull-right"><a href="#register" data-toggle="tab">Реєстрація</a></li>
	    </ul>

        <div class="tab-content">
                
			<div class="tab-pane fade active in" id="login">
                <!-- Login -->
	            <form action="${pageContext.request.contextPath}/login" method="POST">
	            
	            	<div id="session-error" class="text-error text-center">${param.errorMsg}</div>
	            
                    <div class="control-group">
                        <!-- Username -->
                        <label class="control-label" for="session-login">Логін</label>
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <input id="session-login" name="session-login" placeholder="логін чи пошта" class="input-large" required="" type="text">
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Password-->
                        <label class="control-label" for="session-password">Пароль</label>
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input id="session-password" name="session-password" class="input-large" required="" type="password">
                        </div>
                    </div>

                    <button type="submit" name="login-button" class="btn btn-primary">Увійти</button>
				</form>
   	 		</div>
            
            <div class="tab-pane fade" id="register">
	            <!-- Registration -->
	            <form action="${pageContext.request.contextPath}/register" method="POST">                   
                    
<!--                     <div id="register-login-error" class="error-block text-error text-center"></div> -->
                    <div id="register-login-error" class="error-block text-error text-center">Choose another login!</div>
                    <div id="register-login-error1" class="error-block text-error text-center">Login length is 3 - 8!</div>
                    
                    <div id="register-password-error" class="error-block text-error text-center">Min. length is 6!</div>
					<div id="register-email-error" class="error-block text-error text-center">Email length is 6 - 8!</div>                    
                    
                    <div class="control-group">
                        <!-- Username -->
                        <label class="control-label" for="register-login">Логін</label>
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <input id="register-login" name="login" placeholder="user123" data-exists="false" class="input-large" required="" type="text">
<!--                             <p id="register-login-error" class="error-block text-error text-center">OKOKOKOKOKOKOK</p> -->
                        </div>
                    </div>
					
                    <div class="control-group">
                        <!-- Email -->
                        <label class="control-label" for="register-email">Електронна пошта</label>
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span>
                            <input id="register-email" name="email" placeholder="user@mail.com" data-exists="false" class="input-large" required="" type="text">
                            <p id="register-email-error" class="error-block"></p>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Password -->
                        <label class="control-label" for="session-login">Пароль</label>
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input id="register-password" name="password" placeholder="********" class="input-large" required="" type="password">
                            <p id="register-password-error" class="error-block"></p>
                        </div>
                    </div>

                    <button class="btn btn-success">Зареєструватись</button>
	            </form>
			</div>
            
		</div>
</div>

<%@include file="includes/footer.jsp" %>