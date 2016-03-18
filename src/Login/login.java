package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.lnt.project.loan.employee.Employee;
import com.lnt.project.loan.employee.EmployeeDaoImpl;

import oracle.jdbc.driver.OracleDriver;


public class login  
{
	
	Connection conn;
	Statement st;
	ResultSet rs,rs1,rs2;
	
	
	public login()
	{
		System.out.println("Login() ctor....");
		try 
		{
			DriverManager.registerDriver(new OracleDriver());
			conn = DriverManager.getConnection
					("jdbc:oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
			st = conn.createStatement();
		}
		
		catch (SQLException e) {e.printStackTrace();}
	}
	
	
	
	public int verify(String username,String password)
	{
		int flag=0;
		
		try {
			String qry1 = "select password,PId from person where email='"+username+"'";
			System.out.println("Email check query: "+qry1);
			rs = st.executeQuery(qry1);
			//System.out.println(qry1);
			
			if (rs.next()) 
			{	//System.out.println("hi1");
				if(rs.getString(1).equalsIgnoreCase(password))
				{//System.out.println("hi2");
				String s=rs.getString(2);
				String qry2 = "select * from customer where PId='"+rs.getString(2)+"'";
				System.out.println(qry2);
					rs1=st.executeQuery(qry2);
					if(rs1.next())
					{
						//System.out.println("hi3");
						flag=1;
					}	
					else
					{//System.out.println("hi4");
						/*EmployeeDaoImpl edi = EmployeeDaoImpl.getInstance();
						Employee e = edi.getEmployee(s);
						if(e!=null)
						{
							if(e.getRole().equalsIgnoreCase("Manager"))
							{
								flag = 2;
							}
							else if(e.getRole().equalsIgnoreCase("Admin"))
							{
								flag=3;
							}
						}*/
						
						
					rs2=st.executeQuery("select * from employee where PId='"+s+"'");
						if(rs2.next())
						{
							if((rs2.getString(2)).equalsIgnoreCase("Manager"))
							flag=2;
							else if((rs2.getString(2)).equalsIgnoreCase("Admin"))
							flag=3;
						}
						
					}
					
					
				}
				else
				{
					flag=4;
				}
			}
			else
			{
				flag=5;
			}	
			
			} catch (SQLException e1) {
			// TODO Auto-generated catch block
			//System.out.println("Unable create Flight Bean ...");
			e1.printStackTrace();
		}
		return flag;	
	}
	
	public String getPiDbyEmail(String email)
	{
		try
		{
			String qry1 = "select PId from person where email='"+email+"'";
			rs = st.executeQuery(qry1);
			//System.out.println(qry1);
			
			if (rs.next()) 
			{
				return rs.getString(1);
			}
		}
		catch (SQLException e1) {
			// TODO Auto-generated catch block
			//System.out.println("Unable create Flight Bean ...");
			e1.printStackTrace();
		}
		return null;
	}
	public String getnamebyEmail(String email)
	{
		try
		{
			String qry1 = "select name from person where email='"+email+"'";
			rs = st.executeQuery(qry1);
			//System.out.println(qry1);
			
			if (rs.next()) 
			{
				return rs.getString(1);
			}
		}
		catch (SQLException e1) {
			// TODO Auto-generated catch block
			//System.out.println("Unable create Flight Bean ...");
			e1.printStackTrace();
		}
		return null;
	}
}

	
	


