package beans;

public class Course {

    int CouID;
    String CouName, TinyDes, FullDes;
    float Rating;
    int Price;
    String SalePrice,Preview;
    int CatID;

    public Course() {
    }

    public Course(int couID, String couName, String tinyDes, String fullDes, float rating, int price, String salePrice, String preview, int catID) {
        CouID = couID;
        CouName = couName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Rating = rating;
        Price = price;
        SalePrice = salePrice;
        Preview = preview;
        CatID = catID;
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

    public String getTinyDes() {
        return TinyDes;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public float getRating() {
        return Rating;
    }

    public void setRating(float rating) {
        Rating = rating;
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

    public String getPreview() {
        return Preview;
    }

    public void setPreview(String preview) {
        Preview = preview;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }
}
