package com.action;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.fom.LoginForm;
import com.fom.Registrationfrom;

import controller.Dbconn;

public class Registrationaction extends DispatchAction
{

	  
	public ActionForward insert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
		Registrationfrom registerForm=(Registrationfrom)form;
		
        String firstname = registerForm.getFirstname();
        String lastname = registerForm.getLastname();
        String address = registerForm.getAddress();
        String email = registerForm.getEmail();
        int phone = Integer.parseInt(registerForm.getMobile());
        String username = registerForm.getUsername();
        String password = registerForm.getPassword();
       
        System.out.println("name"+firstname);
       
        Statement st=Dbconn.connectDB();
        String sql="INSERT INTO `employee`.`registration` (`id`, `firstname`, `lastname`, `email`, `mobile`, `address`, `username`, `password`) VALUES (NULL, '"+firstname+"', '"+lastname+"', '"+email+"', '"+phone+"', '"+address+"', '"+username+"', '"+password+"');";
        
        int i=st.executeUpdate(sql);
       
        return mapping.findForward("success");
		
	}

	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
		Registrationfrom registerForm=(Registrationfrom)form;
		
		int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("idd"+id);
        
        Statement st=Dbconn.connectDB();
	        
	        String sl="DELETE FROM `employee`.`registration` WHERE id='"+id+"'";
            int i=st.executeUpdate(sl);
		
		 return mapping.findForward("success");
	}
	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
		Registrationfrom registerForm=(Registrationfrom)form;
		
		int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("idd"+id);
       request.getSession().setAttribute("Empid",id);		
		 return mapping.findForward("success");
	}
	
	
	public ActionForward updateDisplay(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
	
		Registrationfrom registerForm=(Registrationfrom)form;
		
        String firstname = registerForm.getFirstname();
        String lastname = registerForm.getLastname();
        String address = registerForm.getAddress();
        String email = registerForm.getEmail();
        int phone = Integer.parseInt(registerForm.getMobile());
        String username = registerForm.getUsername();
        String password = registerForm.getPassword();
       
        System.out.println("name"+firstname);
       
        Statement st=Dbconn.connectDB();
        String sql="update registration set firstname='"+firstname+"', lastname='"+lastname+"',address='"+address+"',email='"+email+"' ,mobile='"+phone+"' ,username='"+username+"' ,password='"+password+"'  where id='"+request.getSession().getAttribute("Empid")+"'   ";
       
        int i=st.executeUpdate(sql);
       
        return mapping.findForward("success");
		
	}

	public ActionForward insertlogin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
	{
		 String pass1 = null,user1 = null;
		LoginForm login=(LoginForm)form;
		
        String username = login.getUsername();
        String password = login.getPassword();
       
        System.out.println("name"+username);
       
        String sql="select username,password from login";

        Statement st=Dbconn.connectDB();
        ResultSet rs1=st.executeQuery(sql);

    	while(rs1.next())
        	{
                   user1=rs1.getString("username");
                 pass1=rs1.getString("password");
                   System.out.println(" "+user1+""+pass1);
                 
            }
               
            if((username.equals(user1))&&(password.equals(pass1)))
            {
                System.out.println("Successfully Login");
                return mapping.findForward("success");
               
            }
            else
            {
                System.out.println(" Login Failed");

                return mapping.findForward("fail");                 
            }
  	
	}
	
	

}

