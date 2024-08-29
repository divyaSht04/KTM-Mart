<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String contextPath = (String) request.getContextPath();
%>
<link rel="stylesheet" href="<%=contextPath%>/stylesheet/style.css" />
<link rel="stylesheet" href="<%=contextPath%>/stylesheet/footer.css" />
</head>
<body>
    <jsp:include page="/pages/header.jsp" />
	<main>
		<section id="hero">
			<div class="slider">
				<div class="slide active">
					<img
						src="https://images.unsplash.com/photo-1627827961200-cb3197e1e0b7?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Handcrafted Singing Bowls" draggable="false" />
					<div class="slide-content">
						<h1>Discover the Magic of Handcrafted Singing Bowls</h1>
						<p>Experience tranquility with our authentic Nepalese
							craftsmanship</p>
						<a href="#products" class="cta-button">Shop Now</a>
					</div>
				</div>
				<div class="slide">
					<img
						src="https://images.unsplash.com/photo-1627764627459-ba29d6051fe0?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Nepalese Handicrafts" draggable="false" />
					<div class="slide-content">
						<h1>Explore Nepalese Handicrafts</h1>
						<p>Bring home a piece of Kathmandu's rich cultural heritage</p>
						<a href="#products" class="cta-button">Explore</a>
					</div>
				</div>
				<div class="slide">
					<img
						src="https://images.unsplash.com/photo-1627809381945-be54dcb628d2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Artisan Craftsmanship" draggable="false" />
					<div class="slide-content">
						<h1>Artisan Craftsmanship at Its Finest</h1>
						<p>Each piece tells a story of tradition and skill</p>
						<a href="#about" class="cta-button">Learn More</a>
					</div>
				</div>
			</div>
			<button class="slider-arrow left">
				<i class="fas fa-chevron-left"></i>
			</button>
			<button class="slider-arrow right">
				<i class="fas fa-chevron-right"></i>
			</button>
		</section>

		<section id="featured-products">
		    <c:if test ="${not empty products}">
			<h2>Featured Products</h2>
			<div class="product-slider">
			<c:forEach var = "product" items="${products}">
				<div class="product">
					<img
						src="<%= contextPath %>/images/products/${product.imageUrlFromPart}"
						alt="Antique Singing Bowl" draggable="false" />
					<div class="info-container">
						<h3>${product.name}</h3>
						<p>$${product.price}</</p>
					</div>
					<button>Add to Cart</button>
				</div>
	        </c:forEach>
			</div>
			</c:if>
		</section>

		<section id="services">
			<h2>Our Services</h2>
			<div class="service-gallery">
				<div class="service">
					<img
						src="https://plus.unsplash.com/premium_photo-1689620161540-8034ea6aee5f?q=80&w=2086&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Custom Orders" draggable="false" />
					<div class="service-description">
						<h3>Custom Orders</h3>
						<p>We create bespoke handicrafts tailored to your specifications.</p>
					</div>
				</div>
				<div class="service">
					<img
						src="https://images.unsplash.com/photo-1607124010107-a2eafce10eea?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Worldwide Shipping" draggable="false" />
					<div class="service-description">
						<h3>Worldwide Shipping</h3>
						<p>We deliver our products to customers around the globe.</p>
					</div>
				</div>
				<div class="service">
					<img
						src="https://plus.unsplash.com/premium_photo-1672287579498-08cd90130b0f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Product Restoration" draggable="false" />
					<div class="service-description">
						<h3>Product Restoration</h3>
						<p>We offer expert restoration services for antique	handicrafts.</p>
					</div>
				</div>
			</div>
		</section>

		<section id="categories">
			<h2>Product Categories</h2>
			<div class="category-list">
				<h3>
					<a href="#singing-bowls" class="category"> <img
						src="https://images.unsplash.com/photo-1579291465628-98115e927a42?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Singing Bowls" draggable="false" /> Singing Bowls
					</a>
				</h3>
				<h3>
					<a href="#statues" class="category"> <img
						src="https://images.unsplash.com/photo-1705347925706-d4097457c2ec?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Statues" draggable="false" /> Statues
					</a>
				</h3>
				<h3>
					<a href="#textiles" class="category"> <img
						src="https://plus.unsplash.com/premium_photo-1674617773608-74ff28e59d74?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Textiles" draggable="false" /> Textiles
					</a>
				</h3>
				<h3>
					<a href="#jewelry" class="category"> <img
						src="https://images.unsplash.com/photo-1685489814570-e525ec91fffd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Jewelry" draggable="false" /> Jewelry
					</a>
				</h3>
			</div>
		</section>

		<section id="about">
			<h2>About Us</h2>
			<div class="about-content">
				<img src="logo1.png" alt="Our Workshop" />
				<div class="about-text">
					<p>Kathmandu Art & Handicraft, nestled in the heart of Thamel,
						Nepal, is a treasure trove of authentic Nepalese craftsmanship.
						Our journey began with a passion for preserving and sharing the
						rich cultural heritage of Nepal through its exquisite handicrafts.
					</p>
					<p>Specializing in antique singing bowls and a wide array of
						handicraft products, we take pride in offering unique,
						high-quality items that reflect the skill and artistry of local
						artisans. Each piece in our collection tells a story of tradition,
						spirituality, and artistic excellence.</p>
					<p>Visit us to experience the magic of Nepal's artistic legacy
						and take home a piece of this enchanting culture.</p>
				</div>
			</div>
		</section>

		<section id="blogs">
			<h2>Latest Blogs</h2>
			<div class="blog-cards">
				<div class="blog-card">
					<img
						src="https://images.unsplash.com/photo-1579291465300-106653a86c92?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="The Art of Crafting Singing Bowls" draggable="false" />
					<h3>The Art of Crafting Singing Bowls</h3>
					<p>Discover the ancient techniques behind creating these
						mystical instruments...</p>
					<a href="#" class="read-more">Read More</a>
				</div>
				<div class="blog-card">
					<img
						src="https://plus.unsplash.com/premium_photo-1673298260591-7000cd0b2f79?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Exploring Nepalese Textile Traditions" draggable="false" />
					<h3>Exploring Nepalese Textile Traditions</h3>
					<p>Delve into the colorful world of Nepalese fabrics and
						weaving methods...</p>
					<a href="#" class="read-more">Read More</a>
				</div>
				<div class="blog-card">
					<img
						src="https://images.unsplash.com/photo-1710052498487-c7d523059a28?q=80&w=1950&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
						alt="Symbolism in Nepalese Art" draggable="false" />
					<h3>Symbolism in Nepalese Art</h3>
					<p>Uncover the hidden meanings behind traditional Nepalese
						artistic motifs...</p>
					<a href="#" class="read-more">Read More</a>
				</div>
			</div>
		</section>

		<section id="faq">
			<h2>Frequently Asked Questions</h2>
			<div class="faq-list">
				<div class="faq-item">
					<h3>How do I choose the right singing bowl?</h3>
					<p>Consider factors such as size, material, and sound quality.
						We offer guidance to help you find the perfect bowl for your
						needs.</p>
				</div>
				<div class="faq-item">
					<h3>Do you offer international shipping?</h3>
					<p>Yes, we ship our products worldwide. Shipping costs and
						delivery times vary depending on the destination.</p>
				</div>
				<div class="faq-item">
					<h3>Are your products ethically sourced?</h3>
					<p>Absolutely. We work directly with local artisans and ensure
						fair compensation for their craftsmanship.</p>
				</div>
			</div>
		</section>

		<section id="newsletter">
			<h2>Subscribe to Our Newsletter</h2>
			<p>Stay updated with our latest products, offers, and artisan
				stories.</p>
			<form class="newsletter-form">
				<input type="email" placeholder="Enter your email address" required />
				<button type="submit">Subscribe</button>
			</form>
		</section>

		<section id="contact">
			<h2>Contact Us</h2>
			<div class="contact-content">
				<form class="contact-form">
					<input type="text" placeholder="Your Name" required /> <input
						type="email" placeholder="Your Email" required />
					<textarea placeholder="Your Message" required></textarea>
					<button type="submit">Send Message</button>
				</form>
				<div class="contact-info">
					<h3>Visit Our Store</h3>
					<p>Kathmandu Art & Handicraft</p>
					<p>Thamel, Kathmandu, Nepal</p>
					<p>Phone: +977 1234567890</p>
					<p>Email: info@kathmanduarthandicraft.com</p>
				</div>
			</div>
		</section>
	</main>
	<script src= "<%= contextPath%>/script/script.js" />
	<jsp:include page="/pages/footer.jsp" />
</body>
</html>