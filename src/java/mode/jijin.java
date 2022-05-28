/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mode;

/**
 *
 * @author Administrator
 */
public class jijin {
    private String num;
    private String name;
    //private int age;
    private String owner;
    private String text;
    public jijin(){
        
    }
    public jijin(String num,String name,String owner,String text){
        this.num=num;
        this.name=name;
        this.owner=owner;
        this.text=text;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    
    
}
