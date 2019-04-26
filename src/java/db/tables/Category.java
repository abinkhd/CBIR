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
public class Category {
//4. category - id,category_name,category_desc
    public int id;
    public String category_name,category_desc;

    public Category(int id, String category_name, String category_desc) {
        this.id = id;
        this.category_name = category_name;
        this.category_desc = category_desc;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", category_name=" + category_name + ", category_desc=" + category_desc + '}';
    }
    

}
