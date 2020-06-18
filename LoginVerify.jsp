<%@page import="java.sql.*"%>
<%
    String u=request.getParameter("id");
    String p=request.getParameter("pass");
            try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/test","root","root");
            String s="select * from LOGINTEST where USERID=? and PASSWORD=?";
            PreparedStatement ps=con.prepareStatement(s);
            ps.setString(1,u);
            ps.setString(2,p);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                out.println("LOGIN SUCCESSFULL!!");
            }
            else{
                out.println("LOGIN FAILED! Please Try Again!!");
            }
        } catch (Exception e) {
            out.println(e);
        }
    %>