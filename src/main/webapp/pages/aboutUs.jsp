<%@ page language="java" pageEncoding = "UTF-8" contentType = "text/html; charset = UTF-8" %>
<html>
    <head>
    <%
        String contextPath = (String) request.getContextPath();
    %>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Kathmandu Art & Handicraft</title>
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/style.css">
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/aboutUs.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    </head>
    <body>
            <jsp:include page = "/pages/header.jsp" />
            <section class="hero">
                <div class="hero-content">
                    <h1>About Kathmandu Art & Handicraft</h1>
                    <p>Discover the rich cultural heritage of Nepal through our exquisite artisanal creations</p>
                </div>
            </section>

            <section class="about-us">
                <div class="container">
                    <h2>Our Story</h2>
                    <div class="story-content">
                        <div class="story-text">
                            <p>Founded in 2010, Kathmandu Art & Handicraft has been dedicated to preserving and promoting Nepal's rich artistic traditions. Our journey began with a passion for craftsmanship and a desire to share the beauty of Nepalese art with the world.</p>
                            <p>Today, we work with over 100 skilled artisans across Nepal, bringing their unique creations to a global audience while ensuring fair trade practices and sustainable production methods.</p>
                        </div>
                        <div class="story-image">
                            <img src="logo1.png" alt="Artisan at work">
                        </div>
                    </div>
                </div>
            </section>

            <section class="our-values">
                <div class="container">
                    <h2>Our Values</h2>
                    <div class="values-grid">
                        <div class="value-card">
                            <i class="fas fa-hands-helping animated-icon"></i>
                            <h3>Fair Trade</h3>
                            <p>We ensure fair compensation and safe working conditions for all our artisans.</p>
                        </div>
                        <div class="value-card">
                            <i class="fas fa-leaf animated-icon"></i>
                            <h3>Sustainability</h3>
                            <p>Our products are crafted using eco-friendly materials and processes.</p>
                        </div>
                        <div class="value-card">
                            <i class="fas fa-heart animated-icon"></i>
                            <h3>Cultural Preservation</h3>
                            <p>We strive to keep traditional Nepalese art forms alive and thriving.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="stats">
                <div class="container">
                    <h2>Our Impact</h2>
                    <div class="stats-grid">
                        <div class="stat-item">
                            <i class="fas fa-users animated-icon"></i>
                            <span class="stat-number">10,000+</span>
                            <p>Satisfied Customers</p>
                        </div>
                        <div class="stat-item">
                            <i class="fas fa-globe-americas animated-icon"></i>
                            <span class="stat-number">50+</span>
                            <p>Countries Served</p>
                        </div>
                        <div class="stat-item">
                            <i class="fas fa-hand-holding-usd animated-icon"></i>
                            <span class="stat-number">$500K+</span>
                            <p>Artisan Earnings</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="reviews">
                    <h2>What Our Customers Say</h2>
                    <div class="review-slider">
                        <div class="review-card card1">
                            <i class="fas fa-quote-left"></i>
                            <p>"The quality of the handicrafts is exceptional. I'm thrilled with my purchase!"</p>
                            <p class="reviewer">- Sarah J., USA</p>
                        </div>
                        <div class="review-card card2">
                            <i class="fas fa-quote-left"></i>
                            <p>"Beautiful products that truly capture the essence of Nepalese artistry."</p>
                            <p class="reviewer">- Akira T., Japan</p>
                        </div>
                        <div class="review-card card3">
                             <i class="fas fa-quote-left"></i>
                            <p>"Excellent customer service and fast shipping. Highly recommended!"</p>
                            <p class="reviewer">- Elena M., Italy</p>
                        </div>
                        <div class="review-card card4">
                            <i class="fas fa-quote-left"></i>
                            <p>"Excellent customer service and fast shipping. Highly recommended!"</p>
                            <p class="reviewer">- Elena M., Italy</p>
                        </div>
                    </div>
            </section>


        <section class="faq">
            <div class="container">
                <h2>Frequently Asked Questions</h2>
                <div class="faq-box">
                    <div class="faq-item">
                        <button class="faq-question">
                            What services do you offer?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>We offer a range of services including custom orders, product consultations, and more.</p>
                        </div>
                    </div>
                    <div class="faq-item">
                        <button class="faq-question">
                            What is your address?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>We are located at Thamel, Kathmandu, Nepal.</p>
                        </div>
                    </div>
                    <div class="faq-item">
                        <button class="faq-question">
                            How can I contact you?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>You can contact us via email at kathart@gmail.com or call us at +977-123456789.</p>
                        </div>
                    </div>
                    <div class="faq-item">
                        <button class="faq-question">
                            What products do you offer?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>We offer a variety of handcrafted products including singing bowls, sculptures, and more.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            <section class="team">
                <div class="container">
                    <h2>Meet Our Team</h2>
                    <div class="team-grid">
                        <div class="team-member">
                            <img src="https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Team Member 1">
                            <h3>Nishant Acharya</h3>
                            <p>Founder & CEO</p>
                        </div>
                        <div class="team-member">
                            <img src="https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Team Member 2">
                            <h3>Divya Shrestha</h3>
                            <p>Head of Design</p>
                        </div>
                        <div class="team-member">
                            <img src="https://plus.unsplash.com/premium_photo-1675130119373-61ada6685d63?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Team Member 3">
                            <h3>Sandesh Rijal</h3>
                            <p>Artisan Coordinator</p>
                        </div>
                    </div>
                </div>
            </section>
      <script>
             document.querySelectorAll('.faq-question').forEach(item => {
                item.addEventListener('click', function() {
                    const faqItem = this.parentElement;

                    // Toggle the active state
                    faqItem.classList.toggle('active');

                    // Collapse all other open items
                    document.querySelectorAll('.faq-item').forEach(otherItem => {
                        if (otherItem !== faqItem) {
                            otherItem.classList.remove('active');
                        }
                    });
                });
            });
    </script>
    <jsp:include page = "/pages/footer.jsp" />
    </body>
</html>