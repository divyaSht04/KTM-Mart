<%@page import="util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String contextPath = request.getContextPath();
%>
<title>Insert title here</title>
<link rel="stylesheet" href="<%=contextPath%>/stylesheet/register.css" />
   <style>
        .errorBox {
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            width: 100%;
            z-index: 1;
            background-color: rgba(0, 0, 0, 0.8);
            display: block;
        }
        .box {
            height: 500px;
            width: 700px;
            border: 3px solid white;
            position: relative;
            top: 20%;
            left: 30%;
            background: rgba(255, 255, 255, 0.46);
        }
        span {
            position: absolute;
            font-size: 50px;
            right: 1%;
            color: rgb(255, 255, 255);
            cursor: pointer;
        }
        .errorBox .box img {
            position: absolute;
            top: 10%;
            left: 20%;
            height: 60%;
            width: 60%;
            object-fit: cover;
        }
        .errorBox h3 {
            font-size: 30px;
            font-weight: 700;
            color: white;
            position: absolute;
            top: 70%;
            left: 20%;
        }
        
        .errorBox {
            animation: fadeIn 0.4s ease;
        }
        
        @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
        
    </style>
</head>
<body>
    <%
    String errorMessage = (String) request.getAttribute(StringUtils.ERROR_MESSAGE);

    if (errorMessage != null && !errorMessage.isEmpty()) {
    %>
    <div class="errorBox">
        <span>&times;</span>
        <div class="box">
            <img src="<%= contextPath %>/images/error.png">
            <h3><%= errorMessage %></h3>
        </div>
    </div>
    <%
    }
    %>
    <div class="auth-container">
        <div class="auth-header">
            <h1>Create Account</h1>
            <p>Sign up for a new account</p>
        </div>
        <form id="signup-form" class="signup-form" enctype="multipart/form-data" action="<%= contextPath %>/RegisterServlet" method="post">
            <div class="form-row">
                <div class="form-group">
                    <label for="signup-name">Full Name</label> <input type="text"
                        id="signup-name" name="fullName" required>
                </div>
                <div class="form-group">
                    <label for="signup-gender">Gender</label> <select
                        id="signup-gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="signup-email">Email</label> <input type="email"
                        id="signup-email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="signup-phone">Phone Number</label> <input type="tel"
                        id="signup-phone" name="phone" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="signup-password">Password</label> <input
                        type="password" id="signup-password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="signup-confirm-password">Confirm Password</label> <input
                        type="password" id="signup-confirm-password"
                        name="confirmPassword" required>
                </div>
            </div>
            <div class="form-group">
                <label for="signup-image">Profile Image</label> <input type="file"
                    id="signup-image" name="image" accept="image/*" required>
            </div>
            <button type="submit" class="submit-btn">Sign Up</button>
        </form>
        <div class="login-link">
            <p>
                Already have an account? <a href="<%= contextPath %>/pages/login.jsp">Log in</a>
            </p>
        </div>
    </div>
    <script>
        document.querySelector(".errorBox span").onclick = () => {
            document.querySelector(".errorBox").style.display = "none";
        }
        window.onclick = () =>{
        	document.querySelector(".errorBox").style.display = "none";
        }
    </script>
</body>
</html>
