/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author datng
 */
public class DBContext {
    
    public static Connection getConnection() throws SQLException {
        try {
            Connection conn = null;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433; databaseName=Assingment_PRJ; user = sa; password = 123";
            conn = DriverManager.getConnection(url);
            return conn;
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
//    public boolean checkLogin(Connection conn, String email, String password, String role) {
//        boolean temp = false;
//        String name = "ss";
//        String var = role;
//        String admin = "ADMINSTRATOR";
//        String student = "student";
//        String lecturer = "lecturer";
//        String studentID;
//        String lecturerID;
//        out.println(role);
//        
//        try {
//            if (admin.equals(var)) {
//                out.println(var);
//                PreparedStatement ps = conn.prepareStatement("select * from Admin where email=? and password=?");
//                ps.setString(1, email);
//                ps.setString(2, password);
//                
//                try (ResultSet rs = ps.executeQuery()) {
//                    if (rs.next()) {
//                        if (rs.getString("name") != null) {
//                            name = rs.getString("name");
//                            checklogin.setUser(name);
//                            temp = true;
//                        }
//                    }
//                    conn.close();
//                } catch (SQLException e) {
//                    temp = false;
//                    out.println("error from if");
//                }
//            }
//            if (student.equals(var)) {
//                out.println(var);
//                PreparedStatement ps = conn.prepareStatement("select * from Student where email=? and password=?");
//                ps.setString(1, email);
//                ps.setString(2, password);
//                
//                try (ResultSet rs = ps.executeQuery()) {
//                    if (rs.next()) {
//                        if (rs.getString("studentName") != null) {
//                            name = rs.getString("studentName");
//                            checklogin.setUser(name);
//                            temp = true;
//                        }
//                        if (rs.getString("studentID") != null) {
//                            studentID = rs.getString("studentID");
//                            checklogin.setStudentID(studentID);
//                            out.println(checklogin.getStudentID());
//                        }
//                    }
//                    conn.close();
//                } catch (SQLException e) {
//                    temp = false;
//                    out.println("error from if");
//                }
//            }
//            if (lecturer.equals(var)) {
//                out.println(var);
//                PreparedStatement ps = conn.prepareStatement("select * from Lecturer where email=? and password=?");
//                ps.setString(1, email);
//                ps.setString(2, password);
//                
//                try (ResultSet rs = ps.executeQuery()) {
//                    if (rs.next()) {
//                        if (rs.getString("lecturerName") != null) {
//                            name = rs.getString("lecturerName");
//                            checklogin.setUser(name);
//                            temp = true;
//                        }
//                        if (rs.getString("lecturerID") != null) {
//                            lecturerID = rs.getString("lecturerID");
//                            checklogin.setLecturerID(lecturerID);
//                            out.println(checklogin.getLecturerID());
//                        }
//                    }
//                    conn.close();
//                } catch (SQLException e) {
//                    temp = false;
//                    out.println("error from if");
//                }
//            }
//        } catch (SQLException e) {
//            out.println("error from outer try");
//        }
//        return temp;
//    }
//    
//    public boolean updateStuData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String insid, String depid) {
//        boolean temp = false;
//
//        String query = "update student set STU_FIRST_NAME='" + fname + "',STU_LAST_NAME='" + lname + "',STU_DOB='" + dob + "',STU_SEX='" + sex + "',STU_ADDRESS='" + address + "',EMAIL='" + email + "',STU_PHONE='" + phone + "',INS_ID='" + insid + "',DEP_ID='" + depid + "' where STU_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public boolean studentUpdData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String insid, String depid, String Password) {
//        boolean temp = false;
//
//        String query = "update student set STU_FIRST_NAME='" + fname + "',STU_LAST_NAME='" + lname + "',STU_DOB='" + dob + "',STU_SEX='" + sex + "',STU_ADDRESS='" + address + "',EMAIL='" + email + "',STU_PHONE='" + phone + "',INS_ID='" + insid + "',DEP_ID='" + depid + "',PASSWORD='" + Password + "' where STU_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public boolean insUpdateData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String did, String password) {
//        boolean temp = false;
//
//        String query = "update instructor set INS_FIRST_NAME='" + fname + "',INS_LAST_NAME='" + lname + "',INS_DOB='" + dob + "',INS_SEX='" + sex + "',INS_ADDRESS='" + address + "',EMAIL='" + email + "',INS_PHONE='" + phone + "',DEP_ID='" + did + "',PASSWORD='" + password + "'where INS_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public boolean updateInsData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String did) {
//        boolean temp = false;
//
//        String query = "update instructor set INS_FIRST_NAME='" + fname + "',INS_LAST_NAME='" + lname + "',INS_DOB='" + dob + "',INS_SEX='" + sex + "',INS_ADDRESS='" + address + "',EMAIL='" + email + "',INS_PHONE='" + phone + "',DEP_ID='" + did + "'where INS_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public boolean updateDepData(Connection con, String id, String name) {
//        boolean temp = false;
//
//        String query = "update department set DEP_NAME='" + name + "' where DEP_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public boolean updateCouData(Connection con, String id, String title, String desc, String credit) {
//        boolean temp = false;
//
//        String query = "update course set cou_title='" + title + "',cou_desc='" + desc + "',cou_credit='" + credit + "'where COU_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//
//            if (i != 0) {
//                temp = true;
//                out.println("success");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public Boolean deleteStuData(Connection con, String id) {
//        boolean temp = false;
//        System.out.println(id);
//        String query = "delete from Student where studentID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//            if (i != 0) {
//                temp = true;
//                out.println("success from delete");
//            }
//
//        } catch (SQLException ex) {
//            System.out.println(ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public Boolean deleteLecData(Connection con, String id) {
//        boolean temp = false;
//
//        String query = "delete from Lecturer where lecturerID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//            if (i != 0) {
//                temp = true;
//                out.println("success from delete");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public Boolean deleteCouData(Connection con, String id) {
//        boolean temp = false;
//
//        String query = "delete from course where COU_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//            if (i != 0) {
//                temp = true;
//                out.println("success from delete");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public Boolean deleteRoomData(Connection con, String id) {
//        boolean temp = false;
//
//        String query = "delete from department where DEP_ID='" + id + "'";
//        Statement stmt;
//        ResultSet rs;
//
//        try {
//            stmt = con.createStatement();
//            int i = stmt.executeUpdate(query);
//            if (i != 0) {
//                temp = true;
//                out.println("success from department");
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//            out.println("error in resulset update method");
//            temp = false;
//        }
//
//        return temp;
//    }
//
//    public Boolean insertLecData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String depid, String password) {
//        Boolean temp = false;
//        try {
//            PreparedStatement ps = con.prepareStatement("insert into instructor(INS_ID,INS_FIRST_NAME,INS_LAST_NAME,INS_DOB,INS_SEX,INS_ADDRESS,EMAIL,DEP_ID,PASSWORD,INS_PHONE) values(?,?,?,?,?,?,?,?,?,?)");
//            ps.setString(1, id);
//            ps.setString(2, fname);
//            ps.setString(3, lname);
//            ps.setString(4, dob);
//            ps.setString(5, sex);
//            ps.setString(6, address);
//            ps.setString(7, email);
//            ps.setString(8, depid);
//            ps.setString(9, password);
//            ps.setString(10, phone);
//
//            int chk = ps.executeUpdate();
//
//            if (chk != 0) {
//                temp = true;
//                con.close();
//
//            } else {
//                //JOptionPane.showMessageDialog(null, "Please Check Username and Password ");
//                temp = false;
//            }
//
//            con.close();
//
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return temp;
//    }
//
//    public Boolean insertStuData(Connection con, String id, String fname, String lname, String dob, String sex, String address, String email, String phone, String insid, String depid, String password) {
//        Boolean temp = false;
//        try {
//            PreparedStatement ps = con.prepareStatement("insert into student(STU_ID,STU_FIRST_NAME,STU_LAST_NAME,STU_DOB,STU_SEX,STU_ADDRESS,EMAIL,STU_PHONE,INS_ID,DEP_ID,PASSWORD) values(?,?,?,?,?,?,?,?,?,?,?)");
//            ps.setString(1, id);
//            ps.setString(2, fname);
//            ps.setString(3, lname);
//            ps.setString(4, dob);
//            ps.setString(5, sex);
//            ps.setString(6, address);
//            ps.setString(7, email);
//            ps.setString(8, phone);
//            ps.setString(9, insid);
//            ps.setString(10, depid);
//            ps.setString(11, password);
//
//            int chk = ps.executeUpdate();
//
//            if (chk != 0) {
//                temp = true;
//                con.close();
//
//            } else {
//                //JOptionPane.showMessageDialog(null, "Please Check Username and Password ");
//                temp = false;
//            }
//
//            con.close();
//
//        } catch (SQLException ex) {
//            //Logger.getLogger(MethodUtils.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return temp;
//    }
//
//    public Boolean insertCouData(Connection con, String id, String title, String desc, String credit, String depid) {
//        Boolean temp = false;
//        try {
//            PreparedStatement ps = con.prepareStatement("insert into course (COU_ID,COU_TITLE,COU_DESC,COU_CREDIT,DEP_ID) values(?,?,?,?,?)");
//            ps.setString(1, id);
//            ps.setString(2, title);
//            ps.setString(3, desc);
//            ps.setString(4, credit);
//            ps.setString(5, depid);
//
//            int chk = ps.executeUpdate();
//
//            if (chk != 0) {
//                temp = true;
//                con.close();
//
//            } else {
//                //JOptionPane.showMessageDialog(null, "Please Check Username and Password ");
//                temp = false;
//            }
//
//            con.close();
//
//        } catch (SQLException ex) {
//            //Logger.getLogger(MethodUtils.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return temp;
//    }
//
//    public Boolean insertDepData(Connection con, String id, String name) {
//        Boolean temp = false;
//        try {
//            PreparedStatement ps = con.prepareStatement("insert into department (DEP_ID,DEP_NAME) values(?,?)");
//            ps.setString(1, id);
//            ps.setString(2, name);
//
//            int chk = ps.executeUpdate();
//
//            if (chk != 0) {
//                temp = true;
//                con.close();
//
//            } else {
//                //JOptionPane.showMessageDialog(null, "Please Check Username and Password ");
//                temp = false;
//            }
//
//            con.close();
//
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return temp;
//    }

}
