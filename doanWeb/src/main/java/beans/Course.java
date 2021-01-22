package beans;

public class Course {
    int CouID;
    String CouName;
    String Field;
    String Instructor;
    String Rating;
    String Img;
    int Price;
    String SalePrice;

    public Course(int couID, String couName, String field, String instructor, String rating, String img, int price, String salePrice) {
        CouID = couID;
        CouName = couName;
        Field = field;
        Instructor = instructor;
        Rating = rating;
        Img = img;
        Price = price;
        SalePrice = salePrice;
    }

    public Course() {
    }

    public int getCouID() {
        return CouID;
    }

    public void setCouID(int couID) {
        CouID = couID;
    }

    public String getCouName() {
        return CouName;
    }

    public void setCouName(String couName) {
        CouName = couName;
    }

    public String getField() {
        return Field;
    }

    public void setField(String field) {
        Field = field;
    }

    public String getInstructor() {
        return Instructor;
    }

    public void setInstructor(String instructor) {
        Instructor = instructor;
    }

    public String getRating() {
        return Rating;
    }

    public void setRating(String rating) {
        Rating = rating;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String img) {
        Img = img;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public String getSalePrice() {
        return SalePrice;
    }

    public void setSalePrice(String salePrice) {
        SalePrice = salePrice;
    }
}
