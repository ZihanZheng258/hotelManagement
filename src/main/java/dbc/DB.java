package dbc;
// set the information that need to connect to a database
import java.sql.*;
public class DB {
    protected String URL = "jdbc:mysql://localhost:3306/hotel?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true";
    protected String dbuser = "root";
    protected String dbpass = "";
    protected String driver = "com.mysql.cj.jdbc.Driver";
    protected Connection conn;
}
