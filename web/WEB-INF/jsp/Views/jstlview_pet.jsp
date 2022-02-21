<%-- 
    Document   : jsltview_pet
    Created on : 17/02/2022, 08:24:09 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
    <div class="wrap-contact100 m-t-80">
        <h1>Pet</h1>
        <jsp:useBean id="pet" scope="request" class="Models.PetBean" />
        <p class="py-3">
            <div class="text-muted">
                <c:catch var="errorDB">
                    <sql:setDataSource driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/adopt_pets_db"
                                       user="root"
                                       password=""/>
                    <sql:update>
                        INSERT INTO pets(pet_type, name, Born_Year, color, breed, is_adopted) VALUES (
                        "${pet.getPet_type()}" ,
                        "${pet.getName()}" ,
                        ${pet.getBorn_year()},
                        "${pet.getColor()}",
                        "${pet.getBreed()}" ,
                        ${pet.getIs_adopted()}
                        );
                    </sql:update>
                </c:catch>
                <c:if test="${not empty errorDB}">
                    <div class="alert alert-danger">
                        <strong>Se produjo un error:</strong> ${errorDB} <br>
                    </div>
                </c:if>
            </div>

            <b>Name: </b>${pet.getName()}<br/>
            <b>Pet type: </b> <jsp:getProperty name="pet" property="pet_type" /><br/>
            <b>Born Year: </b> <jsp:getProperty name="pet" property="born_year" /><br/>
            <b>Color: </b> <jsp:getProperty name="pet" property="color" /><br/>
            <b>Breed: </b> <jsp:getProperty name="pet" property="breed" /><br/>
            <b>Is adopted?: </b> 
            <c:if test="${pet.getIs_adopted()}">Yes</c:if>
            <c:if test="${!pet.getIs_adopted()}">No</c:if><br/>
        </p>
        <br/>
    </div>
</div>
</body>
</html>

