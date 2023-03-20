/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author datng
 */
public class Student {
    private String studentID;
    private String studentName;
    private Date dob;
    private boolean gender;
    private int sPhone;
    private String email;
    ArrayList<Group> groups = new ArrayList<>();

    public Student() {
    }

    public Student(String studentID, String studentName, int sPhone, String email, String sUsername) {
        this.studentID = studentID;
        this.studentName = studentName;
        this.sPhone = sPhone;
        this.email = email;
        
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }
    
    public Date getDob() {
        return dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    
    public boolean getGender() {
        return gender;
    }
    
    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getsPhone() {
        return sPhone;
    }

    public void setsPhone(int sPhone) {
        this.sPhone = sPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }
    
}
