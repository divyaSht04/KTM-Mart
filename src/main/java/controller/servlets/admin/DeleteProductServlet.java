package controller.servlets.admin;

import controller.database.Database;
import util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/DeleteProductServlet"}, asyncSupported = true)
public class DeleteProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int productId = Integer.parseInt(req.getParameter(StringUtils.PRODUCT_ID));
        int result = 0;
        /* Calling out the database controller! */
        Database dbController = new Database();
        result = dbController.DeleteProduct(productId);

        switch (result){
            case 1 :{
                req.setAttribute(StringUtils.SUCCESS_MESSAGE, StringUtils.SUCCESS_MESSAGE);
                req.getRequestDispatcher(StringUtils.ADMIN_PAGE).forward(req,resp);
                break;
            }
            case -1 :{
                req.setAttribute(StringUtils.ERROR_MESSAGE,StringUtils.ERROR_PRODUCT_MESSAGE);
                req.getRequestDispatcher(StringUtils.ADMIN_PAGE).forward(req,resp);
                break;
            }
            case 0:{
                req.setAttribute(StringUtils.ERROR_MESSAGE,StringUtils.ERROR_PRODUCT_NOT_FOUND);
                req.getRequestDispatcher(StringUtils.ADMIN_PAGE).forward(req,resp);
                break;
            }
        }
    }
}
