package egovframework.pdqm.admin.support.diagnosis.idx.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.pdqm.admin.support.diagnosis.idx.model.MediaVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.MediaService;
import egovframework.rte.fdl.property.EgovPropertyService;



@Controller
public class MediaController {

	
	 @Resource(name="egovMessageSource")
	    EgovMessageSource egovMessageSource;
	    
	    @Resource(name = "mediaService")
	    private MediaService mediaService;
	    
	    /** EgovPropertyService */
	    @Resource(name = "propertiesService")
	    protected EgovPropertyService propertiesService;

	    
	    @RequestMapping(value="/media/mediaview.do")
		public String MediaView(@ModelAttribute("searchVO") MediaVo searchVO, ModelMap model) 
	    			throws Exception {

	    	return "egovframework/pdqm/admin/support/diagnosis/idx/media/media_test";
	    
	    }
	    
}
