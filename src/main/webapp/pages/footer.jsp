<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
    String contextPath = request.getContextPath();
%>
<link rel="stylesheet" href="<%= contextPath %>/stylesheet/footer.css">
<script src="https://kit.fontawesome.com/54ba46804c.js" crossorigin="anonymous"></script>
</head>
<body>
    <footer>
        <div class="footer-content">
            <div class="footer-section about">
                <h3>About Us</h3>
                <p>Kathmandu Art & Handicraft brings you authentic Nepalese craftsmanship. We're dedicated to preserving traditions and supporting local artisans.</p>
                <div class="contact">
                    <span><i class="fas fa-phone"></i> +977 1234567890</span>
                    <span><i class="fas fa-envelope"></i> info@kathmanduart.com</span>
                </div>
            </div>
            <div class="footer-section links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section social">
                <h3>Connect With Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>
                <div class="newsletter">
                    <h3>Subscribe to Our Newsletter</h3>
                    <form>
                        <input type="email" placeholder="Enter your email">
                        <button type="submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="footer-info">
                <p>&copy; 2024 Kathmandu Art & Handicraft. All rights reserved.</p>
            </div>
            <div class="payment-methods">
                <h4>We Accept:</h4>
                <div class="payment-icons">
                    <i class="fab fa-cc-visa"></i>
                    <i class="fab fa-cc-mastercard"></i>
                    <i class="fab fa-cc-paypal"></i>
                    <i class="fab fa-cc-amex"></i>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
