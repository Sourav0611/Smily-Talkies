
import java.sql.*;
import javax.swing.*;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SJ
 */
public class dbcon {
    public static Connection con;
    public static ResultSet rs;
    public int result;
    dbcon()
    {
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/theatre","root","root");
       }
        catch(ClassNotFoundException | SQLException e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        
        
        
    }
    public void Executequery(String query)
    {
      try{
          Statement st= dbcon.con.createStatement();
          dbcon.rs =st.executeQuery(query);
           }
      catch(Exception e)
      {
        JOptionPane.showMessageDialog(null,e);
      }
      
      
    }
    
    public void Executeupdate(String query)
         
  { try
        {
            Statement st=dbcon.con.createStatement();
            result=st.executeUpdate(query);
        }
        catch(Exception e)
        {
             JOptionPane.showMessageDialog(null, e);
        }
 
  } 

    void Executequery() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
