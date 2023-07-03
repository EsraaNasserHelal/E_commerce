package Helpers;

import java.util.Map;
import Dao.ProductDao;

public class Product {

    private int _id;
    private String name;
    private int price;
    private String description;
    private int num;
    private String category;
    private String image_path;

    public Product() {
    }
    public Product(int _id,String name, int price, 
            String description, int num,
            String category,String image_path){
        this._id = _id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.num = num;
        this.category = category;
        this.image_path = image_path;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    @Override
    public String toString() {
        return "Product{" +
                "_id=" + _id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", num=" + num +
                ", category='" + category + '\'' +
                ", image_path='" + image_path + '\'' +
                '}';
    }


}
