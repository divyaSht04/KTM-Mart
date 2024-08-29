package util;

import java.io.File;

public class StringUtils {
	
	// Connection String 
	public static final String URL = "jdbc:mysql://localhost:3306/ktm_mart";
	public static final String USER = "root";
	public static final String PASSWORD = "";
	public static final String CLASSNAME = "com.mysql.cj.jdbc.Driver";
	
	//Dir string
	public static final String IMAGE_DIR_USER = "Users\\DELL\\eclipse-workspace\\KTM Mart\\src\\main\\webapp\\images\\user\\";
	public static final String IMAGE_DIR_SAVE_PATH = "C:" + File.separator + IMAGE_DIR_USER;
	public static final String IMAGE_DIR_PRODUCT = "Users\\DELL\\eclipse-workspace\\KTM Mart\\src\\main\\webapp\\images\\products\\";
	public static final String PRODUCT_IMAGE_DIR_SAVE_PATH = "C:" + File.separator + IMAGE_DIR_PRODUCT;
	
	//register, product pages parameters
	public static final String FULLNAME = "fullName";
	public static final String GENDER = "gender";
	public static final String PASS = "password";
	public static final String CONFIRM_PASS = "confirmPassword";
	public static final String EMAIL = "email";
	public static final String NUMBER = "phone";
	public static final String IMAGE = "image";
	public static final String PRODUCT_ID = "productID";
	public static final String PRODUCT_NAME = "name";
	public static final String PRODUCT_PRICE = "price";
	public static final String PRODUCT_STOCK = "stock_quantity";
	public static final String PRODUCT_DESCRIPTION = "description";

	
	// database query USERS
	public static final String INSERT_USER = "Insert into users (full_name, gender, email, phone_number, password, image) values(?,?,?,?,?,?)";
	public static final String USER_EMAIL = "Select * from users where email = ?";
	public static final String GET_PRODUCTS = "Select * from products";
	public static final String GET_PRODUCT_FROM_ID = "Select * from product where product_id = ?";
	
	// pages
	public static final String REGISTER_PAGE = "/pages/register.jsp";
	public static final String LOGIN_PAGE = "/pages/login.jsp";
	public static final String INDEX_PAGE = "/index.jsp";
	public static final String ADMIN_PAGE = "/pages/admin.jsp";
	public static final String PRODUCT_PAGE = "/pages/product.jsp";
	
	// MESSAGES
	public static final String SUCCESS_MESSAGE = "SUCCESS";
	public static final String ERROR_MESSAGE = "ERROR";
	public static final String ERROR_REGISTER_MESSAGE = "registerMessage";
	public static final String ERROR_SERVER_MESSAGE = "Sorry some unexpected server error courier!, Please try again later!";
	public static final String ERROR_EMAIL_MESSAGE = "The Email You have entered has already been registered!";
	public static final String ERROR_NUMBER_MESSAGE = "The number you have entered has already been registered";
	public static final String ERROR_PASSWORD_MISMATCH_MESSAGE = "Re-check the password you have written!";
	public static final String ERROR_USER_NOT_FOUND = "The email you have entered has not been registered!";
	public static final String ERROR_PRODUCT_NOT_FOUND = "The product dose not exist in the database";
	public static final String ERROR_PRODUCT_MESSAGE = "Could not delete the product!";
	
}
