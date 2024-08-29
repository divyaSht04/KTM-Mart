<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "util.StringUtils" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Enhanced Admin Dashboard</title>
        <!-- Custom CSS -->
        <%
            String contextPath = (String) request.getContextPath();
        %>
        <link rel="stylesheet" href="<%=contextPath %>/stylesheet/admin.css">
    </head>
    <style>
    <style>
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
                 position: fixed;
                 top: 0;
                 left: 0;
                 height: 100vh;
                 width: 100%;
                 z-index: 2;
                 background-color: rgba(0, 0, 0, 0.8);
                 display: block;
                 animation: fadeIn 0.4s ease;
            }

            @keyframes fadeIn {
             from { opacity: 0; transform: translateY(20px); }
             to { opacity: 1; transform: translateY(0); }
    </style>
    <body>
        <jsp:include page="header.jsp" />
         <%
                        String errorMessage = (String) request.getAttribute(StringUtils.ERROR_MESSAGE);
                        String successMessage = (String) request.getAttribute(StringUtils.SUCCESS_MESSAGE);

                        if (errorMessage != null && !errorMessage.isEmpty()) {
                        %>
                        <div class="errorBox">
                            <span>&times;</span>
                            <div class="box">
                                <img src="<%= contextPath %>/images/error.png">
                                <h3 style="color:black"> <b> <%= errorMessage %> </b> </h3>
                            </div>
                        </div>
                        <%
                            }else if(successMessage !=null && !successMessage.isEmpty()){
                        %>
                         <div class="errorBox">
                            <span>&times;</span>
                            <div class="box">
                               <img src="<%= contextPath %>/images/checkmark.png">
                               <h3 style="color:black"> <b> <%= errorMessage %> </b> </h3>
                            </div>
                         </div>
                        <%
                        }
                        %>
        <div class="admin-dashboard">
            <aside class="sidebar">
                <div class="sidebar-header">
                    <h2><i class="fas fa-cogs"></i> Admin Panel</h2>
                </div>
                <nav class="sidebar-nav">
                    <ul class="nav-list">
                        <li class="nav-item"><a href="#section-update" class="nav-link"><i class="fas fa-edit"></i> Add Product</a></li>
                        <li class="nav-item"><a href="#section-delete" class="nav-link"><i class="fas fa-trash"></i> Delete Product</a></li>
                    </ul>
                </nav>
            </aside>

            <main class="content-area">
                <header class="content-header">
                    <h1><i class="fas fa-box-open"></i> Product Management</h1>
                </header>

                <section id="section-update" class="content-section">
                    <div class="card">
                        <div class="card-header">
                            <h2><i class="fas fa-edit"></i> Add Product</h2>
                        </div>
                        <div class="card-body">
                            <form class="form-add" action = "<%=contextPath %>/AddProductServlet" method = "POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="product-id" class="form-label">Product ID:</label>
                                    <input type="text" class="form-input" id="product-id" name="productId" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-name" class="form-label">Product Name:</label>
                                    <input type="text" class="form-input" id="product-name" name="productName" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-price" class="form-label">Price:</label>
                                    <input type="number" class="form-input" id="product-price" name="productPrice" step="1" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-price" class="form-label">stock-Quantity:</label>
                                    <input type="number" class="form-input" id="product-price" name="productQuantity" step="1" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-description" class="form-label">Description:</label>
                                    <textarea class="form-input" id="product-description" name="productDescription" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="product-image" class="form-label">Product Image:</label>
                                    <input type="file" class="form-input" id="product-image" name="image" accept="image/*">
                                </div>

                                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Update Product</button>
                            </form>
                        </div>
                    </div>
                </section>

                <section id="section-delete" class="content-section">
                    <div class="card">
                        <div class="card-header">
                            <h2><i class="fas fa-trash"></i> Delete Product</h2>
                        </div>
                        <div class="card-body">
                            <form class="form-delete" action="<%= contextPath%>/DeleteProductServlet" method = "GET">
                                <div class="form-group">
                                    <label for="delete-product-id" class="form-label">Product ID:</label>
                                    <input type="text" class="form-input" id="delete-product-id" name="productID" required>
                                </div>
                                <button type="submit" class="btn btn-danger" > <i class="fas fa-trash"></i> Delete Product</button>
                            </form>
                        </div>
                    </div>
                </section>
            </main>
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
