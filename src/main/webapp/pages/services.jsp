<%@ page language="java" pageEncoding = "UTF-8" contentType = "text/html; charset = UTF-8" %>
<html>
    <head>
        <%
            String contextPath = (String) request.getContextPath();
        %>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Our Services - Kathmandu Art & Handicraft</title>
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/style.css">
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/services.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
        <jsp:include page= "/pages/header.jsp" />
            <main>
                <section class="hero">
                    <h1>Our Services</h1>
                    <p>Discover the artistry of Nepal through our curated services and products</p>
                </section>

                <section class="services">
                    <h2>Core Services</h2>
                    <div class="service-grid">
                        <div class="service-card">
                            <i class="fas fa-paint-brush"></i>
                            <h3>Custom Art Creation</h3>
                            <img src="https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b" alt="Custom Art Creation">
                            <p>Collaborate with our skilled artisans to create unique, personalized artworks.</p>
                        </div>
                        <div class="service-card">
                            <i class="fas fa-truck"></i>
                            <h3>Worldwide Shipping</h3>
                            <img src="https://images.unsplash.com/photo-1566576912321-d58ddd7a6088" alt="Worldwide Shipping">
                            <p>We deliver our handcrafted treasures to art enthusiasts around the globe.</p>
                        </div>
                        <div class="service-card">
                            <i class="fas fa-book"></i>
                            <h3>Art Workshops</h3>
                            <img src="https://images.unsplash.com/photo-1452860606245-08befc0ff44b" alt="Art Workshops">
                            <p>Join our expert-led workshops to learn traditional Nepalese art techniques.</p>
                        </div>
                        <div class="service-card">
                            <i class="fas fa-certificate"></i>
                            <h3>Authentication Services</h3>
                            <img src="https://images.unsplash.com/photo-1569235186275-626cb53b83ce" alt="Authentication Services">
                            <p>Get your Nepalese art and artifacts authenticated by our team of experts.</p>
                        </div>
                    </div>
                </section>

                <section class="product-categories">
                    <h2>Product Categories</h2>
                    <div class="category-grid">
                        <div class="category-card">
                            <img src="https://images.unsplash.com/photo-1609873963505-a5061290ec3c" alt="Singing Bowls">
                            <h3>Singing Bowls</h3>
                        </div>
                        <div class="category-card">
                            <img src="https://images.unsplash.com/photo-1567361294763-8a0599dfa59f" alt="Statues">
                            <h3>Statues</h3>
                        </div>
                        <div class="category-card">
                            <img src="https://images.unsplash.com/photo-1606502973842-f64bc2785fe5" alt="Textiles">
                            <h3>Textiles</h3>
                        </div>
                        <div class="category-card">
                            <img src="https://images.unsplash.com/photo-1515562141207-7a88fb7ce338" alt="Jewelry">
                            <h3>Jewelry</h3>
                        </div>
                    </div>
                </section>

                <section class="additional-services">
                    <h2>Additional Services</h2>
                    <div class="service-list">
                        <div class="service-item">
                            <i class="fas fa-gift"></i>
                            <h3>Gift Wrapping</h3>
                            <p>We offer premium gift wrapping services for all our products.</p>
                        </div>
                        <div class="service-item">
                            <i class="fas fa-exchange-alt"></i>
                            <h3>Easy Returns</h3>
                            <p>Hassle-free returns within 30 days of purchase.</p>
                        </div>
                        <div class="service-item">
                            <i class="fas fa-concierge-bell"></i>
                            <h3>Concierge Service</h3>
                            <p>Personal shopping assistance for finding the perfect piece.</p>
                        </div>
                    </div>
                </section>

                <section class="testimonials">
                    <h2>What Our Customers Say</h2>
                    <div class="testimonial-grid">
                        <div class="testimonial-card">
                            <p>"The custom-made statue I ordered is simply breathtaking. The attention to detail is incredible!"</p>
                            - Sarah J., New York
                        </div>
                        <div class="testimonial-card">
                            <p>"I attended one of their online workshops, and it was an enriching experience. Highly recommended!"</p>
                            - Michael L., London
                        </div>
                        <div class="testimonial-card">
                            <p>"The authentication service gave me peace of mind about my collection. Very professional team."</p>
                            - Akira T., Tokyo
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
                            How long does shipping usually take?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>Shipping typically takes 3-5 business days.</p>
                        </div>
                    </div>
                    <div class="faq-item">
                        <button class="faq-question">
                            What materials do you use in your products?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>We use high-quality materials such as gold, brass, and copper.</p>
                        </div>
                    </div>
                    <div class="faq-item">
                        <button class="faq-question">
                            What more services do you offer?
                            <span class="faq-icon">&#x25BC;</span>
                        </button>
                        <div class="faq-answer">
                            <p>We offer a variety of additional services such as gift wrapping, returns, and more.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
                <section class="cta">
                    <h2>Ready to Experience Nepalese Artistry?</h2>
                    <p>Explore our collection or get in touch for custom orders</p>
                    <div class="cta-buttons">
                        <a href="#" class="btn btn-primary">Shop Now</a>
                        <a href="#" class="btn btn-secondary">Contact Us</a>
                    </div>
                </section>
            </main>

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
        <jsp:include page="/pages/footer.jsp" />
    </body>
</html>
