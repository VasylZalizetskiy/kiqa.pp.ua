<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="includes/header.jsp" %>
<%@include file="includes/navigation.jsp" %>

<!-- User information -->
<div class="container">
	<div class="row-fluid">
		<div class="span12 well">
			<div class="span2">
<!--             	<img class="image-avatar img-circle" alt="User avatar" src="http://placehold.it/128x128"> -->
            
            <c:choose>
            	<c:when test="${user.hasAvatar != null}">
                	<img class="img-avatar img-circle" alt="User avatar"
                    	src="${pageContext.request.contextPath}/static/img/avatars/${user.hasAvatar}">
                </c:when>
                <c:when test="${user.hasAvatar == null}">
                    <img class="image-avatar img-circle" alt="User avatar" src="http://placehold.it/128x128">
                </c:when>
            </c:choose>
            </div>

			<div class="span8">
				<h2><c:out value="${user.login}"/></h2><br/>
				<span class="badge badge-warning">0 повідомлення(нь)</span> 
				<span class=" badge badge-info">0  підписчик(ів)</span> 
				<span class=" badge badge-info">0 підписок(а)</span>
                <br/>

                   <c:if test="${isMe}">
	                    <form id="add-avatar-form" class="form-inline" action="${pageContext.request.contextPath}/avatars"
	                          method="POST" enctype="multipart/form-data">
	
	                        Виберіть аватару: <input type="file" name="imgfile">
	                        <button class="btn" type="submit">Змінити</button>
	                    </form>
                </c:if>
			</div>
			</div>
	
 	
	 	<div class="row-fluid">
	 		
	 		<form id="post-message-form" action="${pageContext.request.contextPath}/messages" method="post">
	 			<fieldset>
					<textarea name="text" class="input-block-level" rows="3" placeholder="Напишіть повідомлення..."></textarea>
	 				
	 				<button type="submit" class="btn">Написати</button>
	 			</fieldset>
	 		</form>
	 	</div>
 
 	
	    
	</div><!-- .row-fluid -->
	
</div><!-- .container -->

<%@include file="includes/footer.jsp" %>