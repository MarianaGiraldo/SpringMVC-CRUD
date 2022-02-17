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
                <form class="contact100-form validate-form" action="view_user.htm" method="POST">
                    <span class="contact100-form-title m-b-0">
                        Welcome!
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
                        <span class="label-input100">Your Name</span>
                        <input class="input100" type="text" name="txtName" placeholder="Enter your name" required>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <span class="label-input100">Email</span>
                        <input class="input100" type="email" name="txtEmail" placeholder="Enter your email addess" required>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input" data-validate = "Phone number is required">
                        <span class="label-input100">Phone Number</span>
                        <input class="input100" type="text" name="txtPhone" placeholder="Enter your phone number" required>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Phone number is required">
                        <span class="label-input100">Identification Number</span>
                        <input class="input100" type="text" name="txtId" placeholder="Enter your ID" required>
                        <span class="focus-input100"></span>
                    </div>
                    <!--
                    <div class="wrap-input100 input100-select">
                        <span class="label-input100">Needed Services</span>
                        <div>
                            <select class="selection-2" name="service">
                                <option>Choose Services</option>
                                <option>Online Store</option>
                                <option>eCommerce Bussiness</option>
                                <option>UI/UX Design</option>
                                <option>Online Services</option>
                            </select>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 input100-select">
                        <span class="label-input100">Budget</span>
                        <div>
                            <select class="selection-2" name="budget">
                                <option>Select Budget</option>
                                <option>1500 $</option>
                                <option>2000 $</option>
                                <option>2500 $</option>
                            </select>
                        </div>
                        <span class="focus-input100"></span>
                    </div>
                    -->
                    
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

    </body>
</html>
