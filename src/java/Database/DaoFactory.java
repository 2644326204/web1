/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import OperationDao.operationDao;


import OperationDaoImpl.operationDaoImpl;



/**
 *
 * @author kun
 */
public class DaoFactory {
    
    
    public static operationDao getOperationDao(){
        
        return new operationDaoImpl();
        
    }
    
   
    
}
