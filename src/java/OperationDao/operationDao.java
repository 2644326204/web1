/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperationDao;

import java.util.ArrayList;
import mode.Student;
import mode.jijin;
import mode.result;
import mode.message;
import util.Pagination;


/**
 *
 * @author kun
 */
public interface operationDao {
    public boolean insertStudent(Student stu);
    public boolean deleteStudent(String sno);
    public boolean insertJijin(jijin jijin1);
    public boolean insertresult(result rs);
    public boolean insertMessage(message ms);
    public Student queryMessage(String username,String password);
     public ArrayList<result> QueryResult(Pagination pagination);
     public ArrayList<result> QueryResult1(Pagination pagination,String group);
    public ArrayList<jijin> QueryJijin(Pagination pagination);
    public ArrayList<jijin> QueryJijin1(Pagination pagination,String group);
    public ArrayList<message> Querymessage(Pagination pagination);
}
