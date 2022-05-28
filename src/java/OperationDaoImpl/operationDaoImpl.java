/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperationDaoImpl;

import OperationDao.operationDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import mode.Student;
import mode.jijin;
import mode.message;
import mode.result;
import util.Pagination;


/**
 *
 * @author kun
 */
public class operationDaoImpl implements operationDao{

    @Override
    public boolean insertStudent(Student stu) {
        
        Connection con=Database.DatabaseConnection.getConnection();
        PreparedStatement psmt;
        
        try {
            psmt=con.prepareStatement("insert into student1 values(?,?,?,?,?,?)");
            //'123','徐敬坤','学生','模拟组','男','666'
            //psmt=con.prepareStatement("insert into student1 values('123','徐敬坤','学生','模拟组','男','666')");
            psmt.setString(1, stu.getSno());
            psmt.setString(2, stu.getSname());
            psmt.setString(3, stu.getJob());
            psmt.setString(4, stu.getGroup());
            psmt.setString(5, stu.getSex());
            psmt.setString(6,stu.getPassword());
            
            
            int i=psmt.executeUpdate();
            
            psmt.close();
            con.close();
            
            
            if(i>=1)
                return true;
//         Connection conn=DatabaseConnection.getConnection();
//         PreparedStatement psmt;
//         ResultSet rs;
//         
//        try {
//            psmt=conn.prepareStatement("insert into bodycheck values(?,?,?,?,?,?)");
//            
//            psmt.setDouble(1, bc.getWeight());
//            psmt.setDouble(2, bc.getHeight());
//            psmt.setDouble(3, bc.getHeartrate());
//            psmt.setDouble(4, bc.getBloodpressure());
//            psmt.setString(5, bc.getId());
//            Date date=new java.sql.Date(bc.getBodychecktime().getTime());
//            psmt.setDate(6, (java.sql.Date) date);
//
//            
//            int i=psmt.executeUpdate();
//            
//            psmt.close();
//            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return false;
    }

    @Override
    public boolean insertJijin(jijin jijin1) {
        Connection con=Database.DatabaseConnection.getConnection();
        PreparedStatement psmt;
        
        try {
            psmt=con.prepareStatement("insert into jijin values(?,?,?,?)");
            //'123','徐敬坤','学生','模拟组','男','666'
            //psmt=con.prepareStatement("insert into student1 values('123','徐敬坤','学生','模拟组','男','666')");
            psmt.setString(1, jijin1.getNum());
            psmt.setString(2, jijin1.getName());
            psmt.setString(3,jijin1.getOwner());
            psmt.setString(4, jijin1.getText());
           
            
            
            int i=psmt.executeUpdate();
            
            psmt.close();
            con.close();
            
            
            if(i>=1)
                return true;
//         Connection conn=DatabaseConnection.getConnection();
//         PreparedStatement psmt;
//         ResultSet rs;
//         
//        try {
//            psmt=conn.prepareStatement("insert into bodycheck values(?,?,?,?,?,?)");
//            
//            psmt.setDouble(1, bc.getWeight());
//            psmt.setDouble(2, bc.getHeight());
//            psmt.setDouble(3, bc.getHeartrate());
//            psmt.setDouble(4, bc.getBloodpressure());
//            psmt.setString(5, bc.getId());
//            Date date=new java.sql.Date(bc.getBodychecktime().getTime());
//            psmt.setDate(6, (java.sql.Date) date);
//
//            
//            int i=psmt.executeUpdate();
//            
//            psmt.close();
//            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return false;
    }

    @Override
    public ArrayList<jijin> QueryJijin(Pagination pagination) {
        Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        ArrayList<jijin> bcs=new ArrayList<jijin>();
        
        try {
            
            
            String sql = "select count(*) as counts from jijin";
            
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            
            
            rs.next();
            
            pagination.setCountSize(rs.getInt("counts"));
            
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            
            
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM (SELECT @rowno:=@rowno+1 as rowno,s.* FROM (SELECT * FROM jijin ORDER BY num ASC) s,(select @rowno:=0) t WHERE @rowno<=?)aa WHERE @rowno>=?;";
            //sql = "select * from student1";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            rs = pstmt.executeQuery();
            
            
    
            jijin jijin1;
            while(rs.next())
            {
                 jijin1=new jijin();
                 
                 
                 jijin1.setNum(rs.getString("num"));
                 jijin1.setName(rs.getString("name"));
                 jijin1.setOwner(rs.getString("owner"));
                 jijin1.setText(rs.getString("text"));
                
                
                 
                 bcs.add(jijin1);
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return bcs;
    }

    @Override
    public boolean insertresult(result rs) {
       Connection con=Database.DatabaseConnection.getConnection();
        PreparedStatement psmt;
        
        try {
            psmt=con.prepareStatement("insert into result values(?,?,?,?)");
            //'123','徐敬坤','学生','模拟组','男','666'
            //psmt=con.prepareStatement("insert into student1 values('123','徐敬坤','学生','模拟组','男','666')");
            psmt.setString(1, rs.getOwner());
            psmt.setString(2, rs.getName());
            psmt.setString(3, rs.getMagazine());
            psmt.setString(4, rs.getGroup());
           
            
            
            int i=psmt.executeUpdate();
            
            psmt.close();
            con.close();
            
            
            if(i>=1)
                return true;
//         Connection conn=DatabaseConnection.getConnection();
//         PreparedStatement psmt;
//         ResultSet rs;
//         
//        try {
//            psmt=conn.prepareStatement("insert into bodycheck values(?,?,?,?,?,?)");
//            
//            psmt.setDouble(1, bc.getWeight());
//            psmt.setDouble(2, bc.getHeight());
//            psmt.setDouble(3, bc.getHeartrate());
//            psmt.setDouble(4, bc.getBloodpressure());
//            psmt.setString(5, bc.getId());
//            Date date=new java.sql.Date(bc.getBodychecktime().getTime());
//            psmt.setDate(6, (java.sql.Date) date);
//
//            
//            int i=psmt.executeUpdate();
//            
//            psmt.close();
//            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return false;
    }

    @Override
    public ArrayList<result> QueryResult(Pagination pagination) {
        Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        ArrayList<result> bcs=new ArrayList<result>();
        
        try {
            
            
            String sql = "select count(*) as counts from result";
            
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            
            
            rs.next();
            
            pagination.setCountSize(rs.getInt("counts"));
            
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            
            
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM (SELECT @rowno:=@rowno+1 as rowno,s.* FROM (SELECT * FROM result) s,(select @rowno:=0) t WHERE @rowno<=?)aa WHERE @rowno>=?;";
            //sql = "select * from student1";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            rs = pstmt.executeQuery();
            
            
    
            result rs1;
            while(rs.next())
            {
                 rs1=new result();
                 
                 rs1.setOwner(rs.getString("owner"));
                 rs1.setName(rs.getString("name"));
                 rs1.setMagazine(rs.getString("magazine"));
                 rs1.setGroup(rs.getString("group1"));
                 
                
                
                 
                 bcs.add(rs1);
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return bcs;
    }

    @Override
    public boolean insertMessage(message ms) {
        Connection con=Database.DatabaseConnection.getConnection();
        PreparedStatement psmt;
        
        try {
            psmt=con.prepareStatement("insert into message values(?,?,?,?)");
            //'123','徐敬坤','学生','模拟组','男','666'
            //psmt=con.prepareStatement("insert into student1 values('123','徐敬坤','学生','模拟组','男','666')");
            psmt.setString(1, ms.getTitle());
            psmt.setString(2, ms.getType());
            psmt.setString(3, ms.getKeywords());
            psmt.setString(4, ms.getText());
           
            
            
            int i=psmt.executeUpdate();
            
            psmt.close();
            con.close();
            
            
            if(i>=1)
                return true;
//         Connection conn=DatabaseConnection.getConnection();
//         PreparedStatement psmt;
//         ResultSet rs;
//         
//        try {
//            psmt=conn.prepareStatement("insert into bodycheck values(?,?,?,?,?,?)");
//            
//            psmt.setDouble(1, bc.getWeight());
//            psmt.setDouble(2, bc.getHeight());
//            psmt.setDouble(3, bc.getHeartrate());
//            psmt.setDouble(4, bc.getBloodpressure());
//            psmt.setString(5, bc.getId());
//            Date date=new java.sql.Date(bc.getBodychecktime().getTime());
//            psmt.setDate(6, (java.sql.Date) date);
//
//            
//            int i=psmt.executeUpdate();
//            
//            psmt.close();
//            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return false;
    }

    @Override
    public ArrayList<message> Querymessage(Pagination pagination) {
         Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        ArrayList<message> bcs=new ArrayList<message>();
        
        try {
            
            
            String sql = "select count(*) as counts from message";
            
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            
            
            rs.next();
            
            pagination.setCountSize(rs.getInt("counts"));
            
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            
            
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM (SELECT @rowno:=@rowno+1 as rowno,s.* FROM (SELECT * FROM message) s,(select @rowno:=0) t WHERE @rowno<=?)aa WHERE @rowno>=?;";
            //sql = "select * from student1";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            rs = pstmt.executeQuery();
            
            
    
            message ms;
            while(rs.next())
            {
                 ms=new message();
                 
                 ms.setTitle(rs.getString("title"));
                 ms.setType(rs.getString("type"));
                 ms.setKeywords(rs.getString("keywords"));
                 ms.setText(rs.getString("text"));
                 
                
                
                 
                 bcs.add(ms);
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return bcs;
    }

    @Override
    public ArrayList<result> QueryResult1(Pagination pagination, String group) {
         Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        ArrayList<result> bcs=new ArrayList<result>();
        
        try {
            
            
            String sql = "select count(*) as counts from result where group1=?";
            
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, group);
            rs = pstmt.executeQuery();
            
            
            rs.next();
            
            pagination.setCountSize(rs.getInt("counts"));
            
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            
            
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM (SELECT @rowno:=@rowno+1 as rowno,s.* FROM (SELECT * FROM result where group1=?) s,(select @rowno:=0) t WHERE @rowno<=?)aa WHERE @rowno>=?;";
            //sql = "select * from student1";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, group);
            pstmt.setInt(2, end);
            pstmt.setInt(3, start);
            rs = pstmt.executeQuery();
            
            
    
            result rs1;
            while(rs.next())
            {
                 rs1=new result();
                 
                 rs1.setOwner(rs.getString("owner"));
                 rs1.setName(rs.getString("name"));
                 rs1.setMagazine(rs.getString("magazine"));
                 rs1.setGroup(rs.getString("group1"));
                 
                
                
                 
                 bcs.add(rs1);
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return bcs;
    }

    @Override
    public ArrayList<jijin> QueryJijin1(Pagination pagination, String group) {
        Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        ArrayList<jijin> bcs=new ArrayList<jijin>();
        
        try {
            
            
            String sql = "select count(*) as counts from jijin where text=?";
            
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, group);
            rs = pstmt.executeQuery();
            
            
            rs.next();
            
            pagination.setCountSize(rs.getInt("counts"));
            
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            
            
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM (SELECT @rowno:=@rowno+1 as rowno,s.* FROM (SELECT * FROM jijin where text=?) s,(select @rowno:=0) t WHERE @rowno<=?)aa WHERE @rowno>=?;";
            //sql = "select * from student1";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, group);
            pstmt.setInt(2, end);
            pstmt.setInt(3, start);
            rs = pstmt.executeQuery();
            
            
    
            jijin rs1;
            while(rs.next())
            {
                 rs1=new jijin();
                 rs1.setNum(rs.getString("num"));
                 rs1.setText(rs.getString("text"));
                 rs1.setOwner(rs.getString("owner"));
                 rs1.setName(rs.getString("name"));
                 
                 
                
                
                 
                 bcs.add(rs1);
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return bcs;
    }

    @Override
    public Student queryMessage(String username, String password) {
        Connection con=Database.DatabaseConnection.getConnection();
        ResultSet rs;
        PreparedStatement pstmt;
        
        
        try {
            
            
            String sql = "select * from student1 where sno=? and password=?";
            
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            
            
            Student stu=new Student();
            while(rs.next()){
            stu.setSno(rs.getString("sno"));
            stu.setSname(rs.getString("sname"));
            stu.setJob(rs.getString("job"));
            stu.setSex(rs.getString("sex"));
            stu.setGroup(rs.getString("group"));
            stu.setPassword(rs.getString("password"));
            //return stu;
            }
            
            
    
            
            
            
            
            return stu;
            
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return null;
    }

   
   // @Override

    @Override
    public boolean deleteStudent(String sno) {
        Connection con=Database.DatabaseConnection.getConnection();
        PreparedStatement psmt;
        
        try {
            psmt=con.prepareStatement("delete from student1 where sno=?");
            //'123','徐敬坤','学生','模拟组','男','666'
            //psmt=con.prepareStatement("insert into student1 values('123','徐敬坤','学生','模拟组','男','666')");
            psmt.setString(1, sno);
            
            
            
            int i=psmt.executeUpdate();
            
            psmt.close();
            con.close();
            
            
            if(i>=1)
                return true;
//         Connection conn=DatabaseConnection.getConnection();
//         PreparedStatement psmt;
//         ResultSet rs;
//         
//        try {
//            psmt=conn.prepareStatement("insert into bodycheck values(?,?,?,?,?,?)");
//            
//            psmt.setDouble(1, bc.getWeight());
//            psmt.setDouble(2, bc.getHeight());
//            psmt.setDouble(3, bc.getHeartrate());
//            psmt.setDouble(4, bc.getBloodpressure());
//            psmt.setString(5, bc.getId());
//            Date date=new java.sql.Date(bc.getBodychecktime().getTime());
//            psmt.setDate(6, (java.sql.Date) date);
//
//            
//            int i=psmt.executeUpdate();
//            
//            psmt.close();
//            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(operationDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return false;
    }
    

    
    
}
