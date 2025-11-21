<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 12px}
.style7 {font-size: 25px}
.style22 {color: #00CC00}
.style3 {color: #FF00FF}
.style43 {color: #009900}
.style20 {color: #FF00FF; font-weight: bold; }
.style26 {font-size: 14px}
.style26 {color: #3366FF}
.style42 {color: #CC3300}
.style45 {
	font-size: 13px;
	color: #0000FF;
}
.style46 {color: #6666FF}
.style47 {font-size: 13px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
         
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1 class="style4"><a href="#" class="style7">Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Privacy Preservation in Multi Cloud Secure Data Fusion for Infectious Disease Analysis</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="img">
          <h2><span>Upload Datasets !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> 
		  
		  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
       
						String fname=request.getParameter("fname");
						
						
						
		String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
		
		
	   String Pid,	
Age,	
Gender,	
Total_Bilirubin,	
Direct_Bilirubin,	
Alkaline_Phosphotase,	
Alamine_Aminotransferase,	
Aspartate_Aminotransferase,	
Total_Protiens,	
Albumin,	
Albumin_and_Globulin_Ratio,	
Analysis,
Location;
		
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
		   
		   
	   		      if( row.getCell(0)==null) { Pid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Pid = row.getCell(0).toString();   //else copies cell data to name variable
		   
	   		      if( row.getCell(1)==null) { Age = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Age = row.getCell(1).toString();   //else copies cell data to name variable
 
                  if( row.getCell(2)==null) { Gender = "0";}  
                  else Gender = row.getCell(2).toString();   
				  
				  if( row.getCell(3)==null) { Total_Bilirubin = "0";}
				  else Total_Bilirubin = row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { Direct_Bilirubin = "0";}
				  else Direct_Bilirubin = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { Alkaline_Phosphotase = "0";}
				  else Alkaline_Phosphotase = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { Alamine_Aminotransferase = "0";}
				  else Alamine_Aminotransferase= row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { Aspartate_Aminotransferase= "0";}
				  else Aspartate_Aminotransferase = row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { Total_Protiens= "0";}
				  else Total_Protiens = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { Albumin= "0";}
				  else Albumin = row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { Albumin_and_Globulin_Ratio= "0";}
				  else Albumin_and_Globulin_Ratio= row.getCell(10).toString();
				  
				  if( row.getCell(11)==null) { Analysis= "0";}
				  else Analysis = row.getCell(11).toString();
				  
				  if( row.getCell(12)==null) { Location= "0";}
				  else Location = row.getCell(12).toString();
				  
				 
				  
				 
					String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Analysis));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
		
					String Age1=Age.replace(".0","");
					
						String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	        String encrypted = new String(Base64.encode(Age1.getBytes()));
				String encrypted1 = new String(Base64.encode(Gender.getBytes()));
				String encrypted2 = new String(Base64.encode(Total_Bilirubin.getBytes()));
				String encrypted3 = new String(Base64.encode(Direct_Bilirubin.getBytes()));
				String encrypted4 = new String(Base64.encode(Alkaline_Phosphotase.getBytes()));
				String encrypted5 = new String(Base64.encode(Alamine_Aminotransferase.getBytes()));	
					
					
		
		     
PreparedStatement ps=connection.prepareStatement("insert into datasets(Pid,Age,Gender,Total_Bilirubin,Direct_Bilirubin,Alkaline_Phosphotase,Alamine_Aminotransferase,Aspartate_Aminotransferase,Total_Protiens,Albumin,AGR,Analysis,hcode,Location) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					
							
ps.setString(1,Pid);
ps.setString(2,encrypted);
ps.setString(3,encrypted1);
ps.setString(4,encrypted2);
ps.setString(5,encrypted3);
ps.setString(6,encrypted4);
ps.setString(7,encrypted5);
ps.setString(8,Aspartate_Aminotransferase);
ps.setString(9,Total_Protiens);
ps.setString(10,Albumin);
ps.setString(11,Albumin_and_Globulin_Ratio);	
ps.setString(12,Analysis);
ps.setString(13,h1);
ps.setString(14,Location);
ps.executeUpdate();

       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
      
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		  
		  
				</p>
                <p align="center"><a href="o_DataOwnerMain.jsp">Back</a></p>
				
				<p>&nbsp;</p>
              <p align="right"><a href="o_DataOwnerMain.jsp" class="style20 style45"><strong>Back</strong></a></p>
            </form>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="o_DataOwnerMain.jsp">Home</a></strong></li>
            <li><strong><a href="index.html">Logout</a></strong></li>
          </ul>
        </div>
        <div class="gadget">
          <ul class="ex_menu">
            </li>
          </ul>
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

       