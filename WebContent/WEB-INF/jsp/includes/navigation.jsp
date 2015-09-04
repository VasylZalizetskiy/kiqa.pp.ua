<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="navbar navbar-inverse navbar-static-top" >
    <div class="navbar-inner" >
        <ul class="nav">
            <li><a href="${pageContext.request.contextPath}"> Головна </a></li>
            <li><a href="#"> Модерація </a></li>
            <li class=""><a href="${pageContext.request.contextPath}/admin"> Користувачі </a></li>
        </ul>

        <ul class="nav pull-right">
            <li class="divider-vertical"></li>
            <li><a href="#"><i class="icon-user icon-white"></i>${sessionScope.user.login}</a></li>
            <li>
            	<form action="${pageContext.request.contextPath}/logout" method="POST">
            		<button type="submit" class="btn btn-small pull-right">Вихід</button>
           		</form>
          	</li>
        </ul>

    </div>
</div>
