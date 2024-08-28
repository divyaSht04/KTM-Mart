package controller.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import controller.database.Database;
import util.StringUtils;

@WebServlet(asyncSupported = true, urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Database db = new Database();

		String email = request.getParameter(StringUtils.EMAIL);
		String password = request.getParameter(StringUtils.PASS);

		int result = db.LoginUser(email, password);
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(30 * 60); // 30 minutes of session

		Cookie userCookie = new Cookie("email", email);
		userCookie.setMaxAge(60 * 60); // 1 hour of cookie
		response.addCookie(userCookie);

		switch (result) {
			case 1: {
				session.setAttribute("isUser", true); // Setting "isUser" attribute
				response.sendRedirect(request.getContextPath() + StringUtils.INDEX_PAGE); // Redirect to user page
				break;
			}
			case 2: {
				session.setAttribute("isAdmin", true); // Setting "isAdmin" attribute
				request.getRequestDispatcher(StringUtils.ADMIN_PAGE).forward(request, response); // Forward to admin page
				break;
			}
			case -2: {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_USER_NOT_FOUND);
				request.getRequestDispatcher(StringUtils.LOGIN_PAGE).forward(request, response);
				break;
			}
			case -1: {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_SERVER_MESSAGE);
				request.getRequestDispatcher(StringUtils.LOGIN_PAGE).forward(request, response);
				break;
			}
			default: {
				request.setAttribute(StringUtils.ERROR_MESSAGE, StringUtils.ERROR_PASSWORD_MISMATCH_MESSAGE);
				request.getRequestDispatcher(StringUtils.LOGIN_PAGE).forward(request, response);
				break;
			}
		}
	}
}
