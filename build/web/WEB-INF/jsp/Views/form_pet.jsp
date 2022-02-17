<%-- 
    Document   : form_user
    Created on : 13/02/2022, 07:43:34 PM
    Author     : Mariana
--%>

<%@page import="Models.Dao"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
            <div class="wrap-contact100 m-t-80">
                <form class="contact100-form validate-form" action="view_pet.htm" method="POST">
                    <span class="contact100-form-title m-b-0">
                        Pet
                    </span>
                    <p class="text-muted mt-0">
                        <%
                            try {
                                if (Dao.conecta() != null) {
                                    Connection con = Dao.conecta();
                                    out.print("Conexion a Base de datos exitosa.");
                                }else{
                                    out.print("Conexion a Base de datos nula.");
                                }
                            } catch (Exception ex) {
                                out.print("Conexion a Base de datos fallida: " + ex.getMessage());
                            }
                        %>
                    </p>
                    <br/>
                    <div class="wrap-input100 validate-input" data-validate="Name is required">
                        <span class="label-input100">Name</span>
                        <input class="input100" type="text" name="txtName" placeholder="Enter the pet's name" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Born year is required: ex@abc.xyz">
                        <span class="label-input100">Born year</span>
                        <input class="input100" type="text" name="txtBornYear" placeholder="Enter the pet's born year" required>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input" data-validate = "Color is required">
                        <span class="label-input100">Color</span>
                        <input class="input100" type="text" name="txtColor" placeholder="Enter the pet's color" required>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Breed is required">
                        <span class="label-input100">Breed</span>
                        <input class="input100" type="text" name="txtBreed" placeholder="Enter the pet's breed" required>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 input100-select">
                        <span class="label-input100">Pet type</span>
                        <div class="select2">
                            <select class="selection-2" name="txtPetType">
                                <option selected>Select a type of pet</option>
                                <option value="Cat">Cat</option>
                                <option value="Dog">Dog</option>
                                <option value="Hamster">Hamster</option>
                                <option value="Bird">Bird</option>
                                <option value="Reptil">Reptil</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 input100-select">
                        <span class="label-input100">Is adopted?</span>
                        <div>
                            <select class="selection-2" name="txtIs_adopted">
                                <option selected>Select if is adopted</option>
                                <option value="true">Yes</option>
                                <option value="false">No</option>
                            </select>
                        </div>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <script>
                        $(document).ready(function() {
                            $('.selection-2').select2();
                        });
                    </script>
                    
                    <div class="container-contact100-form-btn">
                        <div class="wrap-contact100-form-btn">
                            <div class="contact100-form-bgbtn"></div>
                            <button class="contact100-form-btn">
                                <span>
                                    Submit
                                    <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="dropDownSelect1"></div>
        <script>
            $(".selection-2").select2({
                minimumResultsForSearch: 20,
                dropdownParent: $('#dropDownSelect1')
            });
        </script>
    </body>
</html>
