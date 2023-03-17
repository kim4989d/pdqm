package egovframework.pdqm.front.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FrontViewController{

	//공공정보품질관리 개요
    @RequestMapping("/front/summary/outline.do")
    public String outline() throws Exception {
   
    	return "/egovframework/pdqm/front/summary/outline";
    }
    
    //법지침매뉴얼
    @RequestMapping("/front/summary/GuideLine.do")
    public String GrideLine() throws Exception {
   
    	return "/egovframework/pdqm/front/summary/GuideLine";
    }
    
    //품질관리표준
    @RequestMapping("/front/summary/introStandard.do")
    public String introStandard() throws Exception {
   
    	return "/egovframework/pdqm/front/summary/introStandard";
    }
    
    //품질진단사업 안내
    @RequestMapping("/front/support/dgnssInfo.do")
    public String dgnssInfo() throws Exception {
   
    	return "/egovframework/pdqm/front/support/dgnssInfo";
    }
    
    //품질개선사업 안내
    @RequestMapping("/front/support/improvInfo.do")
    public String improvInfo() throws Exception {
   
    	return "/egovframework/pdqm/front/support/improvInfo";
    }
    
    //수요조사 안내
    @RequestMapping("/front/support/supportResearch.do")
    public String supportResearch() throws Exception {
   
    	return "/egovframework/pdqm/front/support/supportResearch";
    }
    
    //연계정보정합성 검증 안내
    @RequestMapping("/front/support/introMatching.do")
    public String introMatching() throws Exception {
   
    	return "/egovframework/pdqm/front/support/introMatching";
    }
    
    //교육 안내
    @RequestMapping("/front/education/introEducation.do")
    public String introEducation() throws Exception {
   
    	return "/egovframework/pdqm/front/education/introEducation";
    }
    
    //협의회 커뮤니티 안내
    @RequestMapping("/front/community/introCommunity.do")
    public String introCommunity() throws Exception {
   
    	return "/egovframework/pdqm/front/community/introCommunity";
    }
    
    //센터소개 소개
    @RequestMapping("/front/intro/intro.do")
    public String intro() throws Exception {
   
    	return "/egovframework/pdqm/front/intro/intro";
    }
    
    //센터소개 주요사업
    @RequestMapping("/front/intro/mainBusiness.do")
    public String mainBusiness() throws Exception {
   
    	return "/egovframework/pdqm/front/intro/mainBusiness";
    }
    
    //사이트맵
    @RequestMapping("/front/info/sitemap.do")
    public String sitemap() throws Exception {
   
    	return "/egovframework/pdqm/front/info/sitemap";
    }
    
    

}
