/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import mode.result;
import util.Pagination;



/**
 *
 * @author kun
 */
public class DatabaseConnection {
    public static Connection getConnection(){
        Connection con=null;
        //String user="system";
        //String password="779966";
        //String driver="mysql.jdbc.driver.OracleDriver";
        //String url="jdbc:mysql:thin:@localhost:1521:XE";
        
String url = "jdbc:mysql://localhost:3306/a?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf-8";
String userName = "root";
String password = "xu";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);// 获取连接
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
        
        
        
         return con;
    }
    
    public static void main(String[] args)
    {
              Connection con=getConnection();
              Pagination pagination=new Pagination();
               ArrayList<result> bcs1=new ArrayList<result>();
               String group="计算机模拟组";
              bcs1=DaoFactory.getOperationDao().QueryResult1(pagination,group);
              System.out.println(bcs1.get(0).getName());
    }
    
}
