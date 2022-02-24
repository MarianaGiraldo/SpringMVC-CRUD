<%-- 
    Document   : view_adoptpet
    Created on : 21/02/2022, 10:55:52 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
    <div class="wrap-contact100 m-t-80">
        <h1>User</h1>
        <div class="py-3">
            <div class="text-muted">
                <c:catch var="errorDB">
                    <sql:setDataSource driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/adopt_pets_db"
                                       user="root"
                                       password=""/>
                    
                </c:catch>
                <c:if test="${not empty errorDB}">
                    <div class="alert alert-danger">
                        <strong>Se produjo un error:</strong> ${errorDB} <br>
                    </div>
                </c:if>
            </div>

            <b>Name: </b> <c:out value="${ub.getName()}" /><br/>
            <b>Email: </b> <c:out value="${ub.getEmail()}" /><br/>
            <b>Phone: </b> <c:out value="${ub.getPhoneNumber()}" /><br/>
            <b>ID: </b> <c:out value="${ub.getId()}" /><br/>

        </div>
        <br/>
    </div>
</div>
</body>
</html>

