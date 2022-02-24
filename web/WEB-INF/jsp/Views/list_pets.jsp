<%-- 
    Document   : list_pets
    Created on : 21/02/2022, 11:23:56 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100 p-2">
    <div class="m-t-80 wrap-list row p-3 m-2">
        <c:forEach items="${pets}" var="pet">
            <div class="card col-sm-2 col-md-3 m-2" style="width: 18rem;">
                <div class="card-body card-content">
                    <h3 class="card-title"><b>${pet.name}</b> </h3>
                    <h4 class="card-subtitle mb-2 text-muted">${pet.pet_type}</h4>
                    <p class="card-text"><b>Born year: </b>${pet.born_year}</p>
                    <p class="card-text"><b>Color: </b>${pet.color}</p>
                    <p class="card-text"><b>Breed: </b>${pet.breed}</p>
                    <p class="card-text"><b>Is adopted?: </b>
                        <c:if test="${pet.is_adopted}">Yes</c:if>
                        <c:if test="${!pet.is_adopted}">No</c:if><br/>
                    </p>
                    <form class="card-action mt-4" action="form_adoptpet.htm" method="GET">
                        <input name="pet_id" type="hidden" value="${pet.id}" />
                        <button class="btn btn-primary fs-15" type="submit">Adopt this pet</button>
                    </form>
                    </div>
                </div>  
        </c:forEach>

    </div>
</div>
</body>
</html>
