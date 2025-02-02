package com.galihjuansaputra.javawebjsp.models;

public class Student {
    private String studentID;
    private String studentName;
    private String department;
    private int mark;

    // Constructors
    public Student() {
    }

    public Student(String studentID, String studentName, String department, int mark) {
        this.studentID = studentID;
        this.studentName = studentName;
        this.department = department;
        this.mark = mark;
    }

    // Getters and setters
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

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }
}
