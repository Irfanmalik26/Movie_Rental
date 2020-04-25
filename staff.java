/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;


public class staff {
    String staffID;
    String password;
    
     public staff()
    {
        this.staffID=null;
        this.password=null;
    }
     
    public staff(String id, String pass)
    {
        this.staffID=id;
        this.password=pass;
    }
    
    public void setStaffID(String id){
        this.staffID=id;
    }
    
    public void setPassword(String pass){
        this.password=pass;
    }
    
    public String getStaffID(){
        return this.staffID;
    }
    
    public String getPassword(){
        return this.password;
    }
    
}
