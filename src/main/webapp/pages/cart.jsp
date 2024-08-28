<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <!-- Custom CSS -->
    <%
        String contextPath = (String) request.getContextPath();
    %>
    <link rel="stylesheet" href="<%=contextPath%>/stylesheet/cart.css">
</head>
<body>
    <div class="cart-container">
        <h1 class="cart-title">Your Shopping Cart</h1>
        <div class="cart-content">
            <div class="cart-items">
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://via.placeholder.com/150" alt="Product Image">
                    </div>
                    <div class="product-details">
                        <h5 class="product-title">Product Name</h5>
                        <p class="product-description">Short product description</p>
                        <p class="product-quantity"><small>Quantity: 1</small></p>
                        <p class="product-price"><strong>$19.99</strong></p>
                        <button class="btn-remove">Remove</button>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <img src="https://via.placeholder.com/150" alt="Product Image">
                    </div>
                    <div class="product-details">
                        <h5 class="product-title">Another Product</h5>
                        <p class="product-description">Another short product description</p>
                        <p class="product-quantity"><small>Quantity: 2</small></p>
                        <p class="product-price"><strong>$29.99</strong></p>
                        <button class="btn-remove">Remove</button>
                    </div>
                </div>
            </div>
            <div class="order-summary">
                <div class="summary-card">
                    <div class="summary-details">
                        <h5 class="summary-title">Order Summary</h5>
                        <ul class="summary-list">
                            <li class="summary-item">
                                <span>Subtotal</span>
                                <strong>$79.97</strong>
                            </li>
                            <li class="summary-item">
                                <span>Shipping</span>
                                <strong>$5.00</strong>
                            </li>
                            <li class="summary-item">
                                <span>Total</span>
                                <strong>$84.97</strong>
                            </li>
                        </ul>
                        <button class="btn-primary">Proceed to Checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
