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
public class result {
    private String owner;
    private String name;
    //private int age;
    private String magazine;
    private String group;
    
    public result(){
        
    }
    public result(String owner,String name,String magazine,String group){
        this.owner=owner;
        this.name=name;
        this.magazine=magazine;
        this.group=group;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMagazine() {
        return magazine;
    }

    public void setMagazine(String magazine) {
        this.magazine = magazine;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }
    
}
