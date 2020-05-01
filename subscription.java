/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;



public abstract class subscription {
    int subscriptionID;
    String subscriptionName;
    
    //setters
    public void setsubscriptionID(int id){
        this.subscriptionID=id;
    }
    
    public void setSubscriptionName(String str){
        this.subscriptionName=str;
    }
    
    //getters
    public int getsubscriptionID(){
        return this.subscriptionID;
    }
    
    public String getSubscriptionName(){
        return this.subscriptionName;
    }
}
