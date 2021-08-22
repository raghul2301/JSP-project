<%@ page import = "java.sql.*"%>
<%
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String message=request.getParameter("message");
try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
            PreparedStatement ps = conn.prepareStatement("insert into feed(name,email,comment) values (?,?,?)");
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,message);
            int x = ps.executeUpdate();
        if(x>0)
        {
                out.println("registration successfull");
        }
        else
        {
                out.println("registration failed");
        }
}
catch(Exception e){
    out.print(e);
}
%>