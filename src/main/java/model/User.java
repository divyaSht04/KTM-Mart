package model;

import java.io.File;

import javax.servlet.http.Part;

import util.StringUtils;


public class User {
	private String fullName;
	private String gender;
	private String password;
	private String number;
	private String email;
	private String imageUrlFromPart;
	
	public User(String fullName, String gender, String password, String number, String email, Part imagePart) {
		this.fullName = fullName;
		this.gender = gender;
		this.password = password;
		this.number = number;
		this.email = email;
		this.imageUrlFromPart = (imagePart != null) ? getImageUrl(imagePart) : null;
	}
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImageUrlFromPart() {
		return imageUrlFromPart;
	}
	
	
	public void setImageUrlFromPart(Part part) {
		this.imageUrlFromPart = getImageUrl(part);
	}
	
	public void setImageUrlFromDB(String imageUrl) {
		this.imageUrlFromPart = imageUrl;
	}
	
	
	
	private String getImageUrl(Part part) {
	    if (part == null) {
	        return "default.jpg"; // default image or logic to handle null
	    }
	    String savePath = StringUtils.IMAGE_DIR_SAVE_PATH;		
	    File fileSaveDir = new File(savePath);
	    String imageUrlFromPart = null;
	    if (!fileSaveDir.exists()) {
	        fileSaveDir.mkdirs();
	    }
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	        if (s.trim().startsWith("filename")) {
	            imageUrlFromPart = s.substring(s.indexOf("=") + 2, s.length() - 1);
	        }
	    }
	    if (imageUrlFromPart == null || imageUrlFromPart.isEmpty()) {
	        imageUrlFromPart = "download.jpg"; // default or placeholder image
	    }
	    return imageUrlFromPart;
	}
	
}
