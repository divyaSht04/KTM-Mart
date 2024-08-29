package controller.database;

import model.PasswordEncryptionDecryption;
import model.Product;
import model.User;
import util.StringUtils;

import java.sql.*;
import java.util.ArrayList;


public class Database {

    public Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(StringUtils.CLASSNAME);
        return DriverManager.getConnection(StringUtils.URL, StringUtils.USER, StringUtils.PASSWORD);
    }

    public int registerUser(User userModel) {
        try (Connection conn = getConnection()) {

            PreparedStatement psEmail = conn.prepareStatement(StringUtils.USER_EMAIL);
            psEmail.setString(1, userModel.getEmail());
            ResultSet result = psEmail.executeQuery();

            if (result.next() && result.getInt(1) > 0) {
                return -2; // Email already exists
            }

            PreparedStatement ps = conn.prepareStatement(StringUtils.INSERT_USER);
            ps.setString(1, userModel.getFullName());
            ps.setString(2, userModel.getGender());
            ps.setString(3, userModel.getEmail());
            ps.setString(4, userModel.getNumber());
            ps.setString(5, PasswordEncryptionDecryption.encrypt(userModel.getPassword(), userModel.getEmail()));
            ps.setString(6, userModel.getImageUrlFromPart());

            int rs = ps.executeUpdate();
            System.out.println(rs);

            return rs > 0 ? 1 : 0;

        } catch (Exception e) {
            System.out.println("The Error is: " + e);
            return -1;
        }
    }

    public int LoginUser(String email, String password) {
        try (Connection conn = getConnection()) {
            PreparedStatement ps = conn.prepareStatement("Select password from users where email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String decryptPass = PasswordEncryptionDecryption.decrypt(rs.getString(1), email);
                System.out.println(decryptPass);
                if (decryptPass.equals(password)) {
                    PreparedStatement psUserCheck = conn.prepareStatement("Select role from users where email = ?");
                    psUserCheck.setString(1, email);
                    ResultSet rs2 = psUserCheck.executeQuery();
                    while (rs2.next()) {
                        if (rs2.getInt("role") == 1) {
                            return 1; // user role
                        } else {
                            return 2; // admin role
                        }
                    }
                    return 1;
                } else {
                    return 0;
                }
            } else {
                System.out.println("User not Found!");
                return -2;
            }
        } catch (Exception e) {
            System.out.println("The Error is: " + e.getMessage());
            return -1;
        }
    }

	public ArrayList<Product> getAllProducts()  {
		try(Connection conn = getConnection()){
			PreparedStatement ps = conn.prepareStatement(StringUtils.GET_PRODUCTS);
			ResultSet rs = ps.executeQuery();

			ArrayList<Product> products = new ArrayList<Product>();
			while (rs.next()){
				Product product = new Product();
				product.setName(rs.getString(StringUtils.PRODUCT_NAME));
				product.setPrice(rs.getDouble(StringUtils.PRODUCT_PRICE));
				product.setDescription(rs.getString(StringUtils.PRODUCT_DESCRIPTION));
				product.setImageUrlFromDB(rs.getString(StringUtils.IMAGE));
				product.setStock_quantity(rs.getInt(StringUtils.PRODUCT_STOCK));
				products.add(product);
			}

			return products;
		} catch (Exception ex){
			System.out.println("The Exception is :" + ex.getMessage());
			return null;
		}
	}

    public int DeleteProduct(int productID){
        try(Connection conn = getConnection()){

            PreparedStatement ps = conn.prepareStatement(StringUtils.GET_PRODUCT_FROM_ID);
            ps.setInt(1,productID);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return 1;
            }
            return 0;
        }catch (Exception ex){
            System.out.println("The error is: "+ ex.getMessage());
            return -1;
        }
    }

}
