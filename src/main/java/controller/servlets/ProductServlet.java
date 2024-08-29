package controller.servlets;

import controller.database.Database;
import model.Product;
import util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(asyncSupported = true ,urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Database dbController = new Database();
        // retrive  the product from the product page!
        ArrayList<Product> productList =  dbController.getAllProducts();

        for (Product product: productList){
            System.out.println(product.getImageUrlFromPart());
        }

        request.setAttribute("products", productList);
        request.getRequestDispatcher(StringUtils.INDEX_PAGE).forward(request,response);
    }
}
