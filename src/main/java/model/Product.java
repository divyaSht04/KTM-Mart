package model;

import util.StringUtils;

import javax.servlet.http.Part;
import java.io.File;

public class Product {

    private String name;
    private int stock_quantity;
    private double price;
    private String description;
    private String imageUrlFromPart;

    public Product(){

    }

    public Product(String name, Part imagePart, String description, double price, int stock_quantity) {
        this.name = name;
        this.imageUrlFromPart = (imagePart != null) ? getImageUrl(imagePart) : null;
        this.description = description;
        this.price = price;
        this.stock_quantity = stock_quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStock_quantity() {
        return stock_quantity;
    }

    public void setStock_quantity(int stock_quantity) {
        this.stock_quantity = stock_quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
        String savePath = StringUtils.PRODUCT_IMAGE_DIR_SAVE_PATH;
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
