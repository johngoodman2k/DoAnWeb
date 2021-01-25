package models;

import beans.Category;
import beans.Course;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


public class CourseModel {

    public static List<Course> getAll() {
        String sql = "select * from courses";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }

        public static List<Course> findByCatID(int catID) {
            String sql = "select * from courses where CatID = :CatID";
            try (Connection con = DbUtils.getConnection()) {
                return con.createQuery(sql)
                        .addParameter("CatID", catID)
                        .executeAndFetch(Course.class);
            }
        }
        public static Optional<Course> findByID(int id) {
        String sql = "select * from courses where CouID = :CouID";
        try (Connection con = DbUtils.getConnection()) {
            List<Course> list = con.createQuery(sql)
                    .addParameter("CouID", id)
                    .executeAndFetch(Course.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }

    public static List<Course> searchByName(String couName) {
        String sql = "select * from courses where CouName like :CouName";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CouName", "%"+ couName +"%")
                    .executeAndFetch(Course.class);

//List<Course> list= new ArrayList<>();
//String sql = "select * from courses\n" + "where CouName like ?";
//try( Connection con = DbUtils.getConnection())
//{
//
//
        }
    }
    public static void add(Course c) {
        final String sql = "INSERT INTO courses (CouName) VALUES (:CouName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CouName", c.getCouName())
                    .executeUpdate();
        }
    }

    public static void delete(int id) {
        final String sql = "delete from courses where CouID = :CouID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CouID", id)
                    .executeUpdate();
        }
    }

    public static void update(Course c) {
        final String sql = "UPDATE courses SET  CouName = :CouName, TinyDes = :TinyDes, FullDes = :FullDes, Rating = :Rating, Price = :Price, SalePrice = :SalePrice, Preview = :Preview, CatID = :CatID WHERE CouID = :CouID ";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CouID", c.getCouID())
                    .addParameter("CouName", c.getCouName())
                    .addParameter("TinyDes", c.getTinyDes())
                    .addParameter("FullDes", c.getFullDes())
                    .addParameter("Rating", c.getRating())
                    .addParameter("Price", c.getPrice())
                    .addParameter("SalePrice", c.getSalePrice())
                    .addParameter("Preview", c.getPreview())
                    .addParameter("CatID", c.getCatID())

                    .executeUpdate();
        }
    }
}
