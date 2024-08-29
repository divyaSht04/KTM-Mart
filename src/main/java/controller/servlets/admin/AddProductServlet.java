package controller.servlets.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
@WebServlet(urlPatterns = {"/AddProductServlet"}, asyncSupported = true)
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String productName = req.getParameter("productName");
        int productStock = Integer.parseInt(req.getParameter("productQuantity"));
        double productPrice = Double.parseDouble(req.getParameter("productPrice"));
        String productDescription = req.getParameter("productDescription");
        Part imgPart = req.getPart("image");

        System.out.println("Done till here");
    }
}
