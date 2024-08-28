package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.database.Database;
import model.*;

import util.StringUtils;

@WebServlet(asyncSupported = true, urlPatterns = { "/RegisterServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int result = 0;

		String fullName = request.getParameter(StringUtils.FULLNAME);
		String gender = request.getParameter(StringUtils.GENDER);
		String password = request.getParameter(StringUtils.PASS);
		String ConfirmPassword = request.getParameter(StringUtils.CONFIRM_PASS);
		Part image = request.getPart(StringUtils.IMAGE);
		String number = request.getParameter(StringUtils.NUMBER);
		String email = request.getParameter(StringUtils.EMAIL);

		User userModel = new User(fullName, gender, ConfirmPassword, number, email, image);

		Database dbController = new Database();
		String savePath = StringUtils.IMAGE_DIR_SAVE_PATH;
		String fileName = userModel.getImageUrlFromPart();
		if (!fileName.isEmpty() && fileName != null) {
			image.write(savePath + fileName);
		}

		if (password.equals(ConfirmPassword)) {
			result = dbController.registerUser(userModel);
			switch (result) {
				case 1 : {
				response.sendRedirect(request.getContextPath() + StringUtils.LOGIN_PAGE);
				break;
			}
				case 0: {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_REGISTER_MESSAGE);
				request.getRequestDispatcher(StringUtils.REGISTER_PAGE).forward(request, response);
				break;
			}
				case -1 : {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_SERVER_MESSAGE);
				request.getRequestDispatcher(StringUtils.REGISTER_PAGE).forward(request, response);
				break;
			}
				case -2 : {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_EMAIL_MESSAGE);
				request.getRequestDispatcher(StringUtils.REGISTER_PAGE).forward(request, response);
				break;
			}
				case -3 :{
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_NUMBER_MESSAGE);
				request.getRequestDispatcher(StringUtils.REGISTER_PAGE).forward(request, response);
			}
			}
		} else {
			request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_PASSWORD_MISMATCH_MESSAGE);
			request.getRequestDispatcher(StringUtils.REGISTER_PAGE).forward(request, response);
		}
	}

}
