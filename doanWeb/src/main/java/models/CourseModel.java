package models;

import beans.Course;
import org.sql2o.Connection;

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
}
