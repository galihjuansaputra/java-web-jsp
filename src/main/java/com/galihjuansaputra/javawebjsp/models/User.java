package com.galihjuansaputra.javawebjsp.models;

public class User {
    private String userID;
    private String password;

    public User(String userID, String password) {
        this.userID = userID;
        this.password = password;
    }

    public boolean isValid() {
        // hardcoded validation logic
        return userID.equals("admin") && password.equals("admin");
    }

    public String getUsername() {
        return userID;
    }

}