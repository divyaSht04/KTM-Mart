<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding = "UTF-8" contentType = "text/html; charset = UTF-8" %>
<html>
    <head>
            <%
                String contextPath = (String) request.getContextPath();
            %>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Kathmandu Art & Handicraft - Products</title>
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/style.css">
        <link rel="stylesheet" href="<%= contextPath%>/stylesheet/product.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
        <jsp:include page= "/pages/header.jsp" />
           <div class="container">
                <h1>Our Products</h1>
                        <section class="category-section" id="singing-bowls">
                            <h2>Singing Bowls</h2>
                            <div class="product-grid">
                                <!-- Correctly referencing the products list with ${products} -->
                                <c:forEach items="${products}" var="product">
                                    <div class="product-card">
                                        <img src="<%= contextPath %>/images/products/${product.imageUrlFromPart}" alt="Tibetan Singing Bowl" class="product-image">
                                        <div class="info-container">
                                            <h3 class="product-title">${product.name}</h3>
                                            <p class="product-price">$ ${product.price}</p>
                                        </div>
                                        <div class="button-container">
                                            <button class="product-button">Add to Cart</button>
                                            <a href="productdesc.html"><button class="details-button">View Details</button></a>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- Other static product cards can remain as they are -->
                            </div>
                        </section>

                <section class="category-section" id="statues">
                    <h2>Statues</h2>
                    <div class="product-grid">
                        <div class="product-card">
                            <img src="https://plus.unsplash.com/premium_photo-1689620161540-8034ea6aee5f?q=80&w=2086&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Buddha Statue" class="product-image">
                            <h3 class="product-title">Buddha Statue</h3>
                            <p class="product-price">$129.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="https://images.unsplash.com/photo-1645438357200-2860a2aa576b?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Ganesh Statue" class="product-image">
                            <h3 class="product-title">Ganesh Statue</h3>
                            <p class="product-price">$109.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="https://images.unsplash.com/photo-1665845616203-6b90a232766a?q=80&w=2092&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Tara Statue" class="product-image">
                            <h3 class="product-title">Tara Statue</h3>
                            <p class="product-price">$149.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                    </div>
                </section>

                <section class="category-section" id="textiles">
                    <h2>Textiles</h2>
                    <div class="product-grid">
                        <div class="product-card">
                            <img src="pashmina-shawl.jpg" alt="Pashmina Shawl" class="product-image">
                            <h3 class="product-title">Pashmina Shawl</h3>
                            <p class="product-price">$89.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="prayer-flags.jpg" alt="Prayer Flags" class="product-image">
                            <h3 class="product-title">Prayer Flags</h3>
                            <p class="product-price">$24.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="thangka.jpg" alt="Thangka Painting" class="product-image">
                            <h3 class="product-title">Thangka Painting</h3>
                            <p class="product-price">$199.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="category-section" id="jewelry">
                    <h2>Jewelry</h2>
                    <div class="product-grid">
                        <div class="product-card">
                            <img src="silver-necklace.jpg" alt="Silver Necklace" class="product-image">
                            <h3 class="product-title">Silver Necklace</h3>
                            <p class="product-price">$59.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="turquoise-bracelet.jpg" alt="Turquoise Bracelet" class="product-image">
                            <h3 class="product-title">Turquoise Bracelet</h3>
                            <p class="product-price">$39.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                        <div class="product-card">
                            <img src="coral-earrings.jpg" alt="Coral Earrings" class="product-image">
                            <h3 class="product-title">Coral Earrings</h3>
                            <p class="product-price">$49.99</p>
                            <div class="button-container">
                                <button class="product-button">Add to Cart</button>
                                <a href="productdesc.html"><button class="details-button">View Details</button></a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <jsp:include page = "/pages/footer.jsp" />
    </body>
</html>