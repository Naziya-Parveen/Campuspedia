<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<title>CAMPUSPEDIA</title>
<meta name="keywords" content="" />
<meta name="description" content="" />


<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>


</head>
<body>
	
<div id="slider">
	<div id="tooplate_wrapper">
        <div id="tooplate_sidebar">
		
            <div id="header">
                <h1><a href="#"><img src="images/tooplate_logo.png" title="CAMPUSPEDIA"/></a></h1>
            </div>    
			
           
		</div> <!-- end of sidebar -->  
    <div id="content">
         
         <div style="position:absolute; top:50px; right: 280px;" >
           <h3><a href="./index.html">Logout</a></h3>
         </div>
         
          <div class="scroll">
            <div class="scrollContainer">
              <div class="panel" id="test_details">
                  <div id="contact_form">
                     <h2>Event Details</h2>
                     
                     <%
                      out.print("<html>");
      out.print("<body>");
      out.print("<center><table  border='2';>");
      
      out.print("<tr>");
      out.print("<td>Date</td>");
      out.print("<td>Description</td>");
      out.print("</tr>");
      Connection con = null;
      try{
          
          
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/campuspedia","root","root");
          
         String sql = "select * from eventdetails";
         PreparedStatement ps = con.prepareStatement(sql);

         ResultSet rs  = ps.executeQuery();
         
         while(rs.next())
         {
              out.print("<tr>");
              out.print("<td>"+rs.getString("date")+"</td>");
              out.print("<td>"+rs.getString("description")+"</td>");
              out.print("</tr>");
         
         }
      }
      catch(Exception e)
      {
         e.printStackTrace();
      }
      finally{
       try{
        con.close();
       }
       catch(Exception e)
       {
         e.printStackTrace();
       }
      }
      
      out.print("</table></center>");
      out.print("</body>");
      out.print("</html>");
                   
                     
                     %>
                     
                      </div>
               <br/>
                  <a href="./student.html"><button>Go back</button></a>
                </div><!-- end of view test details -->
                
           
				
              
          </div><!-- end of scroll -->
		</div>
    </div> <!-- end of content -->
</div>
</div>
</div>


</body>
</html>