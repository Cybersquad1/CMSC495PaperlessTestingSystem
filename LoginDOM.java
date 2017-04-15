package con.paperless.testing;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;


public class LoginDOM {
	
	
	public static Document getDOM(String test) throws SAXException,ParserConfigurationException,IOException, URISyntaxException
	{
		    Document dom=null;
		    File testFile=null;
		    //directories where tests are
		    testFile=new File("/WebContent/tests"+test+"_test.xml");
	        System.out.println("Test File Absolute Path "+ testFile.getAbsolutePath());
	         
	   DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
	   DocumentBuilder db=dbf.newDocumentBuilder();
	   try{
	        dom=db.parse(testFile);
	   }catch(FileNotFoundException fileNotFound){
		   System.out.println("Error : Test File Not Found "+fileNotFound);
	   }
	   dom.getDocumentElement().normalize();
	   return dom;
	}

}
