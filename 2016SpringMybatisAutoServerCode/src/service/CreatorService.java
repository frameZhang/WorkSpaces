package service;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

import entity.Entity;
import entity.Field;

public class CreatorService {
	XmlParser parser = new XmlParser();
	public void createInPath(String xmlPath,String exportPath){
		File filePath = new File(xmlPath);
		if(filePath.isDirectory()) {	//�����·�����������·��������xml
			String[] list;  
	        list = filePath.list(new FilenameFilter() {  //�ҳ�·��������xml
	            private Pattern pattern = Pattern.compile("\\w+\\.xml");   
	            public boolean accept(File dir, String name) {  
	                return pattern.matcher(name).matches();  
	            }  
	        });    
	        for(String file : list){
	        	createInFile(xmlPath + "/" + file,exportPath);
	        }
		} else {
			createInFile(xmlPath,exportPath);
		}
	}
	
	private void createInFile(String filePath,String exportPath){
		try{
			Entity entity = parser.parsetToEntity(filePath, true);
		 	FreemarkHandler t = new FreemarkHandler();
		 	t.createCode(entity,exportPath);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
