package dbc;

import java.sql.*;
public class DB {
    protected String URL = "jdbc:mysql://localhost:3306/hotelmanagementsystem?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true";
    protected String dbuser = "root";
    protected String dbpass = "admin";
    protected String driver = "com.mysql.cj.jdbc.Driver";
    protected Connection conn;
}