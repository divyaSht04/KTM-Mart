<%@ page language="java" pageEncoding = "UTF-8" contentType = "text/html; charset = UTF-8" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact Us - Kathmandu Art & Handicraft</title>
        <%
            String contextPath = (String) request.getContextPath();
        %>
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/style.css">
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/contactUs.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
    <jsp:include page = "/pages/header.jsp" />
      <main class="contact-container">
            <section class="contact-header">
                <h1>Contact Us</h1>
                <p>We'd love to hear from you! Get in touch with us using the form below or visit our store.</p>
            </section>

            <section class="contact-content">
                <div class="contact-form">
                    <form action="#" method="POST">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" id="subject" name="subject" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea id="message" name="message" required></textarea>
                        </div>
                        <button type="submit" class="submit-btn">Send Message</button>
                    </form>
                </div>

                <div class="map-container">
                    <!-- Replace the src with your actual Google Maps embed URL -->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3532.2704244393607!2d85.31090931506156!3d27.712875382789098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb18fcb77fd4f7%3A0x58099b8d37a4c09a!2sThamel%2C%20Kathmandu%2044600%2C%20Nepal!5e0!3m2!1sen!2sus!4v1620847195806!5m2!1sen!2sus" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </section>

            <section class="contact-info">
                <h2>Our Contact Information</h2>
                <ul class="contact-info-list">
                    <li class="contact-info-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <span>123 Thamel Street, Kathmandu, Nepal</span>
                    </li>
                    <li class="contact-info-item">
                        <i class="fas fa-phone"></i>
                        <span>+977 1 234 5678</span>
                    </li>
                    <li class="contact-info-item">
                        <i class="fas fa-envelope"></i>
                        <span>info@kathmanduarthandicraft.com</span>
                    </li>
                </ul>
            </section>
        </main>

        <jsp:include page = "/pages/footer.jsp" />
    </body>
</html>