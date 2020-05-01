/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.Date;


public class rentalHistory {
    int historyID;
    customer c;
    title t;
    Date dateTime;
    boolean active;
    
    //default constructor()
    public rentalHistory(){
        active=true;
    }
    
   
    
    //setters
   public void setHistoryID(int id){ 
       this.historyID=id;
   }
   
   public void setCustomer(customer c){ 
       this.c=c;
   }
   
   public void setTitle(title t){ 
       this.t=t;
   }
   
   public void setDateTime(Date d){ 
       this.dateTime=d;
   }
   
   public void setActive(boolean b){
       this.active=b;
   }
   
   
   //getters
   public int getHistoryID(){ 
       return this.historyID;
   }
   
   public customer getCustomer(){ 
       return this.c;
   }
   
   public title getTitle(){ 
       return this.t;
   }
   
   public Date getDateTime(){ 
       return this.dateTime;
   }
   
   public boolean getActive(){
       return this.active;
   }
   
}
