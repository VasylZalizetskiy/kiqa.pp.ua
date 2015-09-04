<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%@include file="includes/header.jsp" %>
<%@include file="includes/navigation.jsp" %>

<div class="container">
	<div class="row-fluid">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>Логін</th>
                    <th>Пошта</th>
                </tr>
            </thead>

            <tbody>
            	<c:forEach var="user" items="${users}">
                	<tr>
	                	<td><c:out value="${user.login}"/></td>
	                  	
	                  	<td><c:out value="${user.email}"/></td>
	                  		                  	
                  		<td>
                    		<c:choose>
                      			<c:when test="${user.hasAvatar!=null}">
                          			<form action="/servlet" method="POST">
		                            	<button type="submit" class="btn btn-success btn-small"><i class="icon-fire"></i>Змінити аватар</button>
                          			</form>
                      			</c:when>
                      			<c:otherwise>
                          			<form action="/servlet" method="POST">
                              			<button type="submit" class="btn btn-primary btn-small"><i class="icon-ok"></i>Обрати аватар</button>
                          			</form>
                      			</c:otherwise>
                    		</c:choose>
                 		</td>

                	</tr>
              	</c:forEach>
            </tbody>
        </table>
    </div>
    
  </div>



<%@include file="includes/footer.jsp" %>