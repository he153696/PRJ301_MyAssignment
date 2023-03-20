/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import dal.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Account;

/**
 *
 * @author datng
 */
public class LoginDAO {
    public String authenticateUser(Account acc) {
        String email = acc.getEmail();
        String password = acc.getPassword();
        
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        
        String emailDB = "";
        String passwordDB = "";
        String roleDB = "";
        
        try {
            conn = DBContext.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery("select username, password, role from Users");
            
            while (rs.next()) {
                emailDB = rs.getNString("email");
                passwordDB = rs.getString("password");
                roleDB = rs.getString("role");
                
                if (email.equals(emailDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
                    return "admin_role";
                else if (email.equals(emailDB) && password.equals(passwordDB) && roleDB.equals("Student"))
                    return "student_role";
                else if (email.equals(emailDB) && password.equals(passwordDB) && roleDB.equals("Lecturer"))
                    return "lecturer_role";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
}
