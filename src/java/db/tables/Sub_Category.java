/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db.tables;

/**
 *
 * @author LENOVO
 */
public class Sub_Category {
//5. sub_category - id,sub_name,sub_desc,category_id
    public int id,category_id;
    public String sub_name,sub_desc;

    public Sub_Category(int id, int category_id, String sub_name, String sub_desc) {
        this.id = id;
        this.category_id = category_id;
        this.sub_name = sub_name;
        this.sub_desc = sub_desc;
    }

    @Override
    public String toString() {
        return "Sub_Category{" + "id=" + id + ", category_id=" + category_id + ", sub_name=" + sub_name + ", sub_desc=" + sub_desc + '}';
    }
    
    
    
}
