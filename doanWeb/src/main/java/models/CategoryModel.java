package models;

import beans.Category;
import org.sql2o.Connection;


import java.util.List;
import java.util.Optional;


public class CategoryModel {
    public static List<Category> getAll() {

        String sql = "select * from categories";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }

    public static Optional<Category> findById(int id) {
        final String sql = "select * from categories where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            List<Category> list = con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeAndFetch(Category.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }


    public static void add(Category c) {
        final String sql = "INSERT INTO categories (CatName) VALUES (:CatName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }

    public static void delete(int id) {
        final String sql = "delete from categories where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }
    }

    public static void update(Category c) {
        final String sql = "update categories set CatName = :CatName where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }
}
