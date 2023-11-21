package com.example.util;

import java.sql.DriverManager;
import java.sql.Connection;

public class JDBCUtil {
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p232_22200759","p232_22200759","uche7H");
            }
        catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static void main(String ars[]) {
        Connection conn = getConnection();
        if(conn != null)
            System.out.println("DB 연결됨!");
        else
            System.out.println("DB 연결중 오류 !");
    }
}
