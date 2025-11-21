<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Data Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 40px}
.style3 {font-size: 35px; color: #fc6400; }
.style8 {color: #FF0000}
.style9 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style2">Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</a></h1>
      </div>
      
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3">Infectious Disease Analysis Details!!!</p>
          <p><a href="u_DataConsumersMain.jsp"></a></p>
      <table width="310" height="92" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF33">
					<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Pid</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Age</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Gender</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Total_Bilirubin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Direct_Bilirubin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Alkaline_Phosphotase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Alamine_Aminotransferase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Aspartate_Aminotransferase</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Total_Protiens</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Albumin</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Albumin_and_Globulin_Ratio</strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Analysis</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style8"><strong>Hashcode</strong></strong></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  
 
					<%
 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28;
int i=0,count=0;
try 
{

    String PID=request.getParameter("PID");
  
	String query="select * from datasets where Pid='"+PID+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								
		
		String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(s4.getBytes()));
										
				String decrypted = new String(Base64.decode(s2.getBytes()));
				String decrypted1 = new String(Base64.decode(s3.getBytes()));
				String decrypted2 = new String(Base64.decode(s4.getBytes()));
				String decrypted3 = new String(Base64.decode(s5.getBytes()));
				String decrypted4 = new String(Base64.decode(s6.getBytes()));
				String decrypted5 = new String(Base64.decode(s7.getBytes()));
							
				
			
		%>
					
							<tr bgcolor="#00FFFF">
						
							  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
             <%out.println(s1);%>
            </strong></div></td>
              <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(decrypted);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(decrypted1);%>
              </strong></div></td>
              <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(decrypted2);%>
              </strong></div></td>
			   <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
               <%out.println(decrypted3);%>
               </strong></div></td> <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
               <%out.println(decrypted4);%>
               </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(decrypted5);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(s8);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(s9);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(s10);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(s11);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <%out.println(s12);%>
              </strong></div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FF0000"><div align="center" class="style6 style4 style9"><strong>
              <textarea><%out.println(s13);%></textarea>
              </strong></div></td>
					</tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
      </p>
          <p align="center"><a href="u_DataConsumersMain.jsp">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
