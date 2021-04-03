package Customer.Demo;
import java.lang.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Customer.Bean.*;
public class CustomerDemo {

	public void setData(Customer c)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
			String query="insert into Customer values(?,?,?,?,?,?,?,null,null,null,null,null,null,null,null,null,null,null,null)";
			PreparedStatement prepareStatement=con.prepareStatement(query);
			prepareStatement.setString(1,c.getName());
		
			prepareStatement.setString(2,c.getMeter_no());
			prepareStatement.setString(3,c.getAddress());
			prepareStatement.setString(4,c.getState());
			prepareStatement.setString(5,c.getCity());
			prepareStatement.setString(6,c.getEmail());
			prepareStatement.setString(7,c.getPhone_Number());
			
			int r=prepareStatement.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Customer> getList()
	{ArrayList<Customer> ls=new ArrayList<Customer>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
			String query="select *from Customer";
			Statement st=con.createStatement();
     ResultSet rs=st.executeQuery(query);
			while(rs.next())
			{
				Customer c=new Customer();
				c.setName(rs.getString(1));
				c.setMeter_no(rs.getString(2));
				c.setAddress(rs.getString(3));
				c.setState(rs.getString(4));
				c.setCity(rs.getString(5));
				c.setEmail(rs.getString(6));
				c.setPhone_Number(rs.getString(7));
				c.setJanuary(rs.getString(8));
				c.setFebruary(rs.getString(9));
				c.setMarch(rs.getString(10));
				c.setApril(rs.getString(11));
				c.setMay(rs.getString(12));
				c.setJune(rs.getString(13));
				c.setJuly(rs.getString(14));
				c.setAugust(rs.getString(15));
				c.setSeptember(rs.getString(16));
				c.setOctober(rs.getString(17));
				c.setNovember(rs.getString(18));
				c.setDecember(rs.getString(19));
				ls.add(c);
		
			}
			return ls;	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	public void calBill(String m,String mon,String b)
	{
		  
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
		
			Statement st=con.createStatement();
	
			ResultSet r=null;
			if(mon.equals("January"))
			{
					String q="update Customer set January='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("February"))
			{
					String q="update Customer set February='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("March"))
			{
					String q="update Customer set March='"+b+"'  where Meter_no ='"+m+"'";
					int t=st.executeUpdate(q);
				
				
			}
			if(mon.equals("April"))
			{
					String q="update Customer set April='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("May"))
			{
					String q="update Customer set January='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			
			if(mon.equals("June"))
			{
					String q="update Customer set June='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("July"))
			{
					String q="update Customer set July='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("August"))
			{
					String q="update Customer set August='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("September"))
			{
					String q="update Customer set September='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("October"))
			{
					String q="update Customer set October='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			if(mon.equals("November"))
			{
					String q="update Customer set November='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
			
			if(mon.equals("December"))
			{
					String q="update Customer set December='"+b+"' where Meter_no ='"+m+"'";
					st.executeUpdate(q);
					
			}
		
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	






public Customer getData(String m,String mon )
{
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
		Statement st=con.createStatement();
		String query="";ResultSet rs=null;

				
		query="select *from Customer where Meter_no='"+m+"'";
		Customer c=new Customer();
		  rs=st.executeQuery(query);
				while(rs.next())
				{
					
					c.setName(rs.getString(1));
					c.setMeter_no(rs.getString(2));
					c.setAddress(rs.getString(3));
					c.setState(rs.getString(4));
					c.setCity(rs.getString(5));
					c.setEmail(rs.getString(6));
					c.setPhone_Number(rs.getString(7));
					c.setJanuary(rs.getString(8));
					c.setFebruary(rs.getString(9));
					c.setMarch(rs.getString(10));
					c.setApril(rs.getString(11));
					c.setMay(rs.getString(12));
					c.setJune(rs.getString(13));
					c.setJuly(rs.getString(14));
					c.setAugust(rs.getString(15));
					c.setSeptember(rs.getString(16));
					c.setOctober(rs.getString(17));
					c.setNovember(rs.getString(18));
					c.setDecember(rs.getString(19));
			break;
			
				}
		
		
	
		return c;	
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return null;
	
}}