/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.time.Year;


public class title {
    int titleID;
    String titleName;
    type t;
    boolean availability;
    String mediaFormat;
    int releaseYear;
    String genre;
    String description;
    
     //default constructor()
    public title(){
        this.titleID=0;
        this.titleName=null;
        this.availability=false;
        this.mediaFormat=null;
        this.releaseYear=0;
        this.genre=null;
        this.description=null;
    }
    
    //parameterized constructor()
    public title(int id,String name,type t,boolean a, String mediaFormat, int releaseYear,String genre,String description){
        this.titleID=id;
        this.titleName=name;
        this.availability=a;
        this.t=t;
        this.mediaFormat=mediaFormat;
        this.releaseYear=releaseYear;
        this.genre=genre;
        this.description=description;
    }
    
   //setters 
    public void setTitleID(int id){
        this.titleID=id;
    }
    
    public void setTitleName(String str){
        this.titleName=str;
    }
    
    public void setType(type t){
        this.t=t;
    }
    
    public void setAvailability(boolean a){
        this.availability=a;
    }
    
    public void setReleaseYear(int a){
        this.releaseYear=a;
    }
    
    public void setMediaFormat(String str){
        this.mediaFormat=str;
    }
    
    public void setGenre(String str){
        this.genre=str;
    }
    
    public void setDescription(String str){
        this.description=str;
    }
    
 //getters
    public int getTitleID(){
        return this.titleID;
    }
    
    public String getTitleName(){
        return this.titleName;
    }
    
    public type getType(){
        return this.t;
    }
    
    public boolean getAvailability(){
        return this.availability;
    }
    
    public int getReleaseYear(){
        return this.releaseYear;
    }
    
    public String getMediaFormat(){
        return this.mediaFormat;
    }
    
    public String getGenre(){
        return this.genre;
    }
    
    public String getDescription(){
        return this.description;
    }
    
}
