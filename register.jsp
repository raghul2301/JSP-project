<%@ page import = "java.sql.*"%>
<%
String name = request.getParameter("username");
String age = request.getParameter("age");
String email = request.getParameter("mail");
String phone = request.getParameter("phone");
String password = request.getParameter("password");
String repassword = request.getParameter("repassword");

try{
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","");
    PreparedStatement ps = conn.prepareStatement("insert into register(name,age,email,phone,password,confirm_password) values ('"+name+"','"+age+"','"+email+"','"+phone+"','"+password+"','"+repassword+"')");
    
    int x = ps.executeUpdate();
    if(x>0)
    {
        out.println("Successful");
    }
    else
    {
        out.println("Failed");
    }
}
catch(Exception e){
    out.print(e);
}
%>