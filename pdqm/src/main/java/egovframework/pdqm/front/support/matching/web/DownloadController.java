package egovframework.pdqm.front.support.matching.web;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.EgovProperties;

@Controller("downloadController")
public class DownloadController {

    /**
     * 파일 다운로드 기능을 제공한다.
     */
    @RequestMapping(value = "/EgovFileDown1.do")
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String stordFilePath = EgovProperties.getProperty("Globals.formStorePath");
	
		String filename = request.getParameter("filename");
		String original = request.getParameter("original");
	
		if ("".equals(filename)) {
		    request.setAttribute("message", "File not found.");
		}
	
		if ("".equals(original)) {
		    original = filename;
		}
		
	
			
			request.setAttribute("downFile", stordFilePath + filename);
			request.setAttribute("orginFile", original);
			request.setAttribute("orgFileName", original);
			
			System.out.println("filename ["+filename+"] original ["+original+"]");
	   try {
			EgovFileMngUtil.downFile(request, response);
			
		} catch (Exception e){
			System.out.print(" 다운로드 받을 파일이 없습니다. 지정된 경로를 확인해주세요!! : "+e);
		}
    }
    
    
    
    
}