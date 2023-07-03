package Helpers;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConnectDB {
    public static Connection PostgreSql() {
        Connection conn = null;
        
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ecommerce" , "postgres", "123");
            if (conn != null) {
                System.out.println("Connection Established");
            } else {
                System.out.println("Connection Failed");
            }
        } catch (Exception e) {
            System.out.println("ERROOOOOOOOOOOOOOOR");
        }
        return conn;
    }

    // -------------------------->> ADD USER TO DATABASE <<-----------------------------------
    public int addUser(User user) {
        try {
            Connection conn = new ConnectDB().PostgreSql();          //"','" + user.getBalance() +  "')"
            Statement stmt = conn.createStatement();
            String sql = "insert into users(fname,lname,email,password,balance,phonenumber) values('" + user.getFname() + "','" + user.getLname() + "','" + user.getEmail() + "','" + user.getPassword() + "','" + user.getBalance() + "','" + user.getPhone() + "')";
            int rows = stmt.executeUpdate(sql);
            return rows;
        } catch (SQLException e) {
            return 0;
        }
    }

    // -------------------------->> GET USER WITH EMAIL <<-----------------------------------
    public boolean emailExistance(String email) {
        try {
            Connection conn = new ConnectDB().PostgreSql();
            PreparedStatement pstmt = conn.prepareStatement("SELECT COUNT(*) FROM users WHERE email = ?");
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            return rs.getInt(1) > 0;
        } catch (SQLException e) {
            return true;
        }
    }

    // -------------------------->> GET USER FROM DATABASE <<-----------------------------------
    public User getUser(String email, String password) {
        User user = null;
        try {
            Connection conn = new ConnectDB().PostgreSql();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from users where email='" + email + "' and password='" + password + "'");
            user = new User();
            if (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setBalance((int) rs.getLong("balance"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                user.setPassword(rs.getString("password"));
            } else {
                return null;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    // -------------------------->> GET All USERS FROM DATABASE <<-----------------------------------
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();

        try {
            Connection conn = new ConnectDB().PostgreSql();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM users");
            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setFname(resultSet.getString("fname"));
                user.setLname(resultSet.getString("lname"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setBalance(resultSet.getInt("balance"));
                user.setRole(resultSet.getString("role"));
                user.setPhone(resultSet.getString("phonenumber"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    // -------------------------->> UPDATE EMPLOYEE FROM DATABASE <<-----------------------------------
    public void update(User user) {
        try {
            System.out.println(user);
            Connection conn = new ConnectDB().PostgreSql();
            PreparedStatement pstmt = conn.prepareStatement("UPDATE users SET fname=?, lname =?, email =?, password=?, balance =?, phonenumber =?, role =?::role WHERE id =?");

            pstmt.setString(1, user.getFname());
            pstmt.setString(2, user.getLname());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPassword());
            pstmt.setInt(5, user.getBalance());
            pstmt.setString(6, user.getPhone());
            pstmt.setString(7, user.getRole());
            pstmt.setInt(8, user.getId());

            pstmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("ERRRRRRRROR In Updating");
            ex.printStackTrace();
        }
    }

    //
//    // -------------------------->> UPDATE EMPLOYEE IN DATABASE (PATCH) <<-----------------------------------
//    public int[] updateEmployeePatch(int id, Map<String, Object> updates) {
//        User existedUser = new ConnectDB().getEmployee(id);
//        final int[] counter = {0, 0};
//
//        if (existedUser == null) {
//            throw new RuntimeException("Employee not found");
//        } else {
//            updates.forEach((key, value) -> {
//                switch (key) {
//                    case "name":
//                        if (!((String) value).equals(existedUser.getName())) {
//                            counter[0]++;
//                        }
//                        existedUser.setName((String) value);
//                        counter[1] = 1;
//                        break;
//                    case "salary":
//                        if ((Integer) value != existedUser.getSalary()) {
//                            counter[0]++;
//                        }
//                        existedUser.setSalary((Integer) value);
//                        counter[1] = 1;
//                        break;
//                    case "email":
//                        if (!((String) value).equals(existedUser.getEmail())) {
//                            counter[0]++;
//                        }
//                        existedUser.setEmail((String) value);
//                        counter[1] = 1;
//                        break;
//                    default:
//                        throw new RuntimeException("Unexpected Error Happened During Updating");
//                }
//            });
//            ConnectDB db = new ConnectDB();
//            db.update(existedUser);
//        }
//        return counter;
//    }
//
    // -------------------------->> DELETE USER FROM DATABASE <<-----------------------------------
    public void deleteUser(int id) {
        try {
            Connection conn = new ConnectDB().PostgreSql();
            PreparedStatement pstmt = conn.prepareStatement("delete from users where id = ?");
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //
    public static void main(String[] args) throws SQLException {
        User user = new User();
        ConnectDB db = new ConnectDB();
        db.deleteUser(45);
        System.out.println("Deleted Successfully");
    }
}
