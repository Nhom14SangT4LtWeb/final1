package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.o7planning.simplewebapp.conn.DBConnect;
@SuppressWarnings("serial")
@WebServlet("/Search_Admin")
public class Search_Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Search_Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
        Statement st;
        try {
            
             conn =DBConnect.getConnection();
            System.out.println("Connected!");
            String pli = request.getParameter("pli");
 
            ArrayList al = null;
            ArrayList pli_pli = new ArrayList();
            String query = "select  * from users where username like '%"+pli+"%' or email like '%"+pli+"%' and user_role ='admin'";
            		
 
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
 
            while (rs.next()) {
                al = new ArrayList();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
                al.add(rs.getString(7));
                
            //    al.add(rs.getString(4));
 
                System.out.println("al :: " + al);
                pli_pli.add(al);
            }
 
            request.setAttribute("adList", pli_pli);
            RequestDispatcher view = request.getRequestDispatcher("/Listadmin.jsp");
            view.forward(request, response);
            conn.close();
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
