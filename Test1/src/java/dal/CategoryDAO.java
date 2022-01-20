/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Job;

public class CategoryDAO extends DBContext{
    public void insert(Job a){
        String sql = "INSERT INTO Jobs([Name],[Salary],Datecreated,Activated) VALUES (?,?,?,?)";
        try {
            PreparedStatement pr = connection.prepareStatement(sql);
            pr.setNString(1, a.getName());
            pr.setDouble(2, a.getSalary());
            pr.setString(3, a.getDate());
            pr.setInt(4, a.getActivated());
            pr.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Job> getAll(){
        List<Job> list = new ArrayList<>();
        String sql = "select * from Jobs";
        try {
            PreparedStatement pr = connection.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while (rs.next()) {                
                Job a = new Job();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setSalary(rs.getDouble("salary"));
                a.setDate(rs.getString("datecreated"));
                a.setActivated(rs.getInt("activated"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
