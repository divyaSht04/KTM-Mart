<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
    String contextPath = (String) request.getContextPath();
%>
<link rel="stylesheet" href="<%= contextPath %>/stylesheet/header.css">
<script src="https://kit.fontawesome.com/54ba46804c.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo">
                <img src="<%= contextPath %>/images/logo.png" alt="Kathmandu Art & Handicraft Logo" draggable="false" />
            </div>

            <!-- Check if the user is not an admin and display search bar and categories -->
            <c:choose>
                <c:when test="${empty isAdmin}">
                    <div class="search-bar">
                        <input type="text" placeholder="Search..." />
                        <button><i class="fas fa-search"></i></button>
                    </div>
                    <div class="categories">
                        <button class="dropdown-btn">
                            Categories <i class="fas fa-caret-down"></i>
                        </button>
                        <div class="dropdown-content">
                            <a href="#singing-bowls">Singing Bowls</a>
                            <a href="#statues">Statues</a>
                            <a href="#textiles">Textiles</a>
                            <a href="#jewelry">Jewelry</a>
                        </div>
                    </div>
                </c:when>
            </c:choose>

            <nav class="main-navbar">
                <ul>
                    <c:choose>
                        <c:when test="${not empty isAdmin}">
                            <!-- Show Admin-specific links -->
                            <li><a href="<%= contextPath %>">Home</a></li>
                            <li><a href="<%= contextPath %>/admin/orders.jsp">Manage Orders</a></li>
                            <li><a href="<%= contextPath %>/admin/products.jsp">Manage Products</a></li>
                        </c:when>
                        <c:otherwise>
                            <!-- Show User-specific links -->
                            <li><a href="<%= contextPath %>">Home</a></li>
                            <li><a href="<%= contextPath %>/pages/product.jsp">Products</a></li>
                            <li><a href="<%= contextPath %>/pages/services.jsp">Services</a></li>
                            <li><a href="<%= contextPath %>/pages/aboutUs.jsp">About Us</a></li>
                            <li><a href="<%= contextPath %>/pages/contactUs.jsp">Contact Us</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </nav>

            <!-- User actions (Login, Signup, Logout, Profile) -->
            <div class="user-actions">
                <c:choose>
                    <c:when test="${empty isAdmin and empty isUser}">
                        <!-- If neither admin nor user is logged in -->
                        <a href="<%=contextPath %>/pages/login.jsp">Login</a>
                        <a href="<%=contextPath %>/pages/register.jsp">Signup</a>
                    </c:when>
                    <c:otherwise>
                        <!-- If logged in -->
                        <a href="<%=contextPath %>/LogoutServlet">Logout</a>
                        <a href="#profile"><i class="fas fa-user"></i></a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </header>
</body>
</html>
