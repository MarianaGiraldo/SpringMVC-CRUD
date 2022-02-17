<%-- 
    Document   : view_user
    Created on : 14/02/2022, 09:58:52 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
    <div class="wrap-contact100 m-t-80">
        <h1>User</h1>
        <jsp:useBean id="user" scope="request" class="Models.UserBean" />
        <p class="py-3">
            <b>Name: </b> <jsp:getProperty name="user" property="name" /><br/>
            <b>Email: </b> <jsp:getProperty name="user" property="email" /><br/>
            <b>Phone: </b> <jsp:getProperty name="user" property="phoneNumber" /><br/>
            <b>ID: </b> <jsp:getProperty name="user" property="id" /><br/>
        </p>
        <br/>
    </div>
</div>
</body>
</html>
