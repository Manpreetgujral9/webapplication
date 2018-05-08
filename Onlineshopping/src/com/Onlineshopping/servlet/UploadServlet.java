package com.Onlineshopping.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
//import org.apache.commons.io.output.*;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
	private boolean isMultipart;
	   private String filePath;
	   private int maxFileSize = 50000 * 1024;
	   private int maxMemSize = 10000 * 1024;
	   private File file ;

	   public void init( ){
	      // Get the file location where it would be stored.
	       filePath = getServletContext().getInitParameter("file-path"); 
	   }
	  
	public void doPost(HttpServletRequest request,HttpServletResponse response)   throws ServletException, java.io.IOException {
		 String  pname,pbrand,category,description;
		 int rating,discount,price;
		 pname=pbrand=category=description=null;
		 price=rating=discount=0;
		   // Check that we have a file upload request
	      isMultipart = ServletFileUpload.isMultipartContent(request);
	      response.setContentType("text/html");
	      java.io.PrintWriter out = response.getWriter( );
         
	     
	      
	      if( !isMultipart )
	      {
	         out.println("No Upload This Time");
	         return;
	      }
	      DiskFileItemFactory factory = new DiskFileItemFactory();
	      
	      
	      // maximum size that will be stored in memory, threshold memory size
	      factory.setSizeThreshold(maxMemSize);
     
	      // Location to save data that is larger than maxMemSize.
	      factory.setRepository(new File("c:\\temp"));

	      // Create a new file upload handler in which we link the buffer factory
	      ServletFileUpload up = new ServletFileUpload(factory);
	      
	      

	      up.setSizeMax( maxFileSize );
	     

	      try{ 

	      List<?> fileItems = up.parseRequest(request);
		

	      Iterator<?> element = fileItems.iterator();
	      
	      Iterator<?> iter=fileItems.iterator();
	      while(iter.hasNext()){
	    	  FileItem item=(FileItem)iter.next();
	    	  if(item.isFormField()){
	    		 
	    		  if(item.getFieldName().equals("ProductName"))
	    		  {
	    			  pname=item.getString();
	    		  }
	    		  if(item.getFieldName().equals("ProductBrand"))
	    		  {
	    			  pbrand=item.getString();
	    		  }
	    		  if(item.getFieldName().equals("Category"))
	    		  {
	    			category=item.getString();
	    		  }
	    		  if(item.getFieldName().equals("Description"))
	    		  {
	    			description=item.getString();
	    		  }
	    		  if(item.getFieldName().equals("Discount"))
	    		  {
	    			discount=Integer.parseInt(item.getString());
	    		  }
	    		  if(item.getFieldName().equals("Price"))
	    		  {
	    			  price=Integer.parseInt(item.getString());
	    		  }
	      }
	      }
	    	  System.out.println(pname+","+pbrand+","+category+","+description+","+discount+","+price+","+rating);
	    	  try{
	  			Class.forName("oracle.jdbc.driver.OracleDriver");
	  			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","manpreet1","pass");
	  			String str="Insert into Product1 values(seq_product1.NEXTVAL,?,?,?,?,?,?)"; 
	  			PreparedStatement ps=con.prepareStatement(str);
	  			ps.setString(1,pname);
	  		    ps.setString(2,pbrand);
	  			ps.setString(3,category);
	  			ps.setString(6,description);
	  			ps.setInt(5,discount);
	  			ps.setInt(4,price);
	  			 int i=ps.executeUpdate();

		    	  if(i>0)
		    	  {// con.close();
		    		  System.out.println("values entered successfully");
		    		  response.sendRedirect("Product.jsp");
		    	  }
		    	 /* else
		    	  {
		    		  System.out.println("this time unsuccessful!!!");
		    	  }*/
		    	  con.close();
		    	 	}
	    	  
	    	  catch (Exception e)
	    	  {
	    		  e.printStackTrace();
	    	  }  
	      
	      out.println("<html>");
	      out.println("<head>");
	      out.println("<title>Servlet upload</title>");  
	      out.println("</head>");
	      out.println("<body>");
	      while ( element.hasNext () ) 
	      {
	        FileItem fi = (FileItem)element.next();
	         if ( !fi.isFormField () )	
	         {
	            
	            String fieldName = fi.getFieldName();
	            String fileName = pname+".jpg";//fi.getName();
	            String contentType = fi.getContentType();
	            boolean isInMemory = fi.isInMemory();
	            long sizeInBytes = fi.getSize();
	            				 
	            
	            if( fileName.lastIndexOf("\\") >= 0 ){
	               file = new File( filePath +"\\"+ fileName.substring( fileName.lastIndexOf("\\"))) ;
	            }else{
	               file = new File( filePath +"\\"+fileName.substring(fileName.lastIndexOf("\\")+1)) ;
	            }
	            
	          
	            fi.write( file ) ;
	            out.println("Uploaded Filename: " + fileName + "<br>"+ filePath);
	         }
	      }
	      out.println("</body>");
	      out.println("</html>");
	      }catch(Exception ex) {
		       System.out.println(ex);
		   } 
		   }
	   
	   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
		   
		   doPost(request, response); 
		}
	   	    
	


}