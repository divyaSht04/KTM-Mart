<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <body>
        <jsp:include page="header.jsp" />
        <div class="admin-dashboard">
            <aside class="sidebar">
                <div class="sidebar-header">
                    <h2><i class="fas fa-cogs"></i> Admin Panel</h2>
                </div>
                <nav class="sidebar-nav">
                    <ul class="nav-list">
                        <li class="nav-item"><a href="#section-update" class="nav-link"><i class="fas fa-edit"></i> Update Product</a></li>
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
                            <h2><i class="fas fa-edit"></i> Update Product</h2>
                        </div>
                        <div class="card-body">
                            <form class="form-update">
                                <div class="form-group">
                                    <label for="product-id" class="form-label">Product ID:</label>
                                    <input type="text" class="form-input" id="product-id" name="product-id" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-name" class="form-label">Product Name:</label>
                                    <input type="text" class="form-input" id="product-name" name="product-name" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-price" class="form-label">Price:</label>
                                    <input type="number" class="form-input" id="product-price" name="product-price" step="0.01" required>
                                </div>

                                <div class="form-group">
                                    <label for="product-description" class="form-label">Description:</label>
                                    <textarea class="form-input" id="product-description" name="product-description" required></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="product-image" class="form-label">Product Image:</label>
                                    <input type="file" class="form-input" id="product-image" name="product-image" accept="image/*">
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
                            <form class="form-delete">
                                <div class="form-group">
                                    <label for="delete-product-id" class="form-label">Product ID:</label>
                                    <input type="text" class="form-input" id="delete-product-id" name="delete-product-id" required>
                                </div>

                                <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i> Delete Product</button>
                            </form>
                        </div>
                    </div>
                </section>
            </main>
        </div>
    </body>
</html>
