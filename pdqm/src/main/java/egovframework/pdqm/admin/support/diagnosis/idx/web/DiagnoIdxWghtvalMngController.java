package egovframework.pdqm.admin.support.diagnosis.idx.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxDbTypePMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnoIdxWghtvalMngVo;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnoIdxWghtvalMngService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import egovframework.pdqm.admin.common.tray.Tray;
import egovframework.pdqm.admin.common.tray.NomalTray;
import java.util.Iterator;
import java.util.StringTokenizer;

@Controller
public class DiagnoIdxWghtvalMngController {

	@Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "diagnoIdxWghtvalMngService")
    private DiagnoIdxWghtvalMngService diagnoIdxWghtvalMngService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    Tray reqtray=new  NomalTray();
    
    
    
    @RequestMapping(value="/support/diagnosis/idx/wghtval/diagnoWghtvalIdxMngList.do")
	public String selectIdxDbTypeList(@ModelAttribute("searchVO") DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
    			throws Exception {
    	System.out.println("===1");



    	    	//searchVO.setf
    	    	
    	searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
    	searchVO.setPageSize(propertiesService.getInt("pageSize"));
    	
    	/** pageing */
    	PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
    	
		
		
    	
    	List resultList=diagnoIdxWghtvalMngService.selectIdxWghtvalMngListIndex(searchVO, model);
    	
    	   
    	System.out.println("init===========");
    	int totCnt = diagnoIdxWghtvalMngService.selectIdxWghtvalMngListTotCnt(searchVO, model);
    	System.out.println("end===========");
    	   	paginationInfo.setTotalRecordCount(totCnt);
	        model.addAttribute("paginationInfo", paginationInfo);
	    
    	model.addAttribute("resultList",resultList);
    	
    	return "egovframework/pdqm/admin/support/diagnosis/idx/wghtval/WghtvalIdxMngList";
    	
    }
    
    
    @RequestMapping(value="/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist.do")
	public String WghtvalIdxMngRegist(@ModelAttribute("searchVO") DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
    			throws Exception {
    
    
  
    	
    	
    	//user.getMberType()
/*    	
    	MBER_TYPE CHARACTER(1)  회원구분: O:일반회원, G:공공기관, A:관리자
*/
    
    	
    	
    	
    	System.out.println("HDATABASETYID==========="+searchVO.getHDATABASETYID());
    	
    	List leftList=diagnoIdxWghtvalMngService.selectIdxWghtvalMngLeft(searchVO, model);
    	
    	
    	List selectbox=diagnoIdxWghtvalMngService.selectIdxDbTypePMngBox(searchVO, model);
	       model.addAttribute("selectbox", selectbox);
	   
	       List temp=null;
    	DiagnoIdxWghtvalMngVo researchVo=null;
    	for(int i=0;i<leftList.size();i++){
    		researchVo=(DiagnoIdxWghtvalMngVo)leftList.get(i);
    		System.out.println("IDXID():"+researchVo.getIDXID());
    		searchVO.setIDXID(researchVo.getIDXID());
    		reqtray.setArray(Integer.parseInt(researchVo.getIDXID()),diagnoIdxWghtvalMngService.selectIdxWghtvalMngRight(searchVO, model));
    		
    		
    		
    	}
    	
    	
    	
    	model.addAttribute("leftList",leftList);
    	model.addAttribute("rightList",reqtray);
    	
    	model.addAttribute("test","test");
    	
    	
    return "egovframework/pdqm/admin/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist";
    }
    
    
    @RequestMapping(value="/support/diagnosis/idx/wghtval/WghtvalIdxMngInsert.do")
	public String WghtvalIdxMngInsert(@ModelAttribute("searchVO") DiagnoIdxWghtvalMngVo searchVO, ModelMap model) 
    			throws Exception {
    
    	



    	
  
    	System.out.println("HDATABASETYID==========="+searchVO.getHDATABASETYID());
    	System.out.println("leftkeys ==========="+searchVO.getLeftkeys());
    	System.out.println("rightkeys ==========="+searchVO.getRightkeys());
    	    	
    	
    	diagnoIdxWghtvalMngService.selectIdxWghtvalMngDel(searchVO, model);
    	
    	
    	
    	  	
    	
    	StringTokenizer leftkey=new StringTokenizer (searchVO.getLeftkeys(),"/");
    	System.out.println("=====================================left menu ==================");
    	int i=0;
    	while(leftkey.hasMoreElements()){
    		//System.out.println("i:"+leftkeyvalue.nextToken());
    		StringTokenizer leftkeyvalue=new StringTokenizer (leftkey.nextToken(),"-");	
    		
    		while(leftkeyvalue.hasMoreElements()){
    			
    			
    			String idxval=leftkeyvalue.nextToken();
    			searchVO.setIDXWGHTVAL(idxval);
    			String idxupper=leftkeyvalue.nextToken();
    			searchVO.setUPPERIDXID(idxupper);
        		String idxlevel=leftkeyvalue.nextToken();
    			searchVO.setIDXLEVEL(idxlevel);
    			String  idxsorder=leftkeyvalue.nextToken();
    			searchVO.setSORTORDR(idxsorder);
    			String idxid=leftkeyvalue.nextToken();
    			searchVO.setIDXID(idxid);
        		i++;
    			
    			System.out.println("idxid: "+searchVO.getIDXID());
    			System.out.println("idxupper: "+searchVO.getUPPERIDXID());
    			System.out.println("idxlevel: "+searchVO.getIDXLEVEL());
    			System.out.println("idxsorder: "+searchVO.getSORTORDR());
    			System.out.println("idxval: "+searchVO.getIDXWGHTVAL());
    		
    			diagnoIdxWghtvalMngService.selectIdxWghtvalMngInsert(searchVO, model);
        		
    		}
    	}
    	
    	
    	
    	
    	
    	int z=0;
    	
    	System.out.println("=====================================right menu ==================");
    	StringTokenizer casetoken=new StringTokenizer (searchVO.getRightkeys(),"#");
    	
    	
    	while(casetoken.hasMoreElements()){
    		
    		String casetostr=casetoken.nextToken();
    		StringTokenizer rightkeyvalue=new StringTokenizer (casetostr,"-");
    		System.out.println("keys :"+casetostr);
    	    
    		
    		while(rightkeyvalue.hasMoreElements()){
    			//System.out.println(rightkeyvalue.nextToken());
    		
    			
/*
    			1. databaseid
    			2. right SORTORDR
    			3. UPPERIDXID 
    			4. IDXLEVEL
    			5. IDXID
  				6. idx_val
  */
    			
    			
    			
    			String db_id=rightkeyvalue.nextToken(); //0
    			searchVO.setDATABASETYID(db_id);
    			String level_order=rightkeyvalue.nextToken(); //right order
    			searchVO.setSORTORDR(level_order);
    			String level_upper=rightkeyvalue.nextToken(); //right upper
    			searchVO.setUPPERIDXID(level_upper);
    			String level_level=rightkeyvalue.nextToken(); // right level
    			searchVO.setIDXLEVEL(level_level);
    			
    			String level_idxid=rightkeyvalue.nextToken(); //right idxid
    			searchVO.setIDXID(level_idxid);
    			
    			String level_value=rightkeyvalue.nextToken(); //right idxid
    			searchVO.setIDXWGHTVAL(level_value);
    			
    			
    			//System.out.println("z:"+(z++)+" token: "+ rightkeyvalue.nextToken());
    		
    			System.out.println("idxid: "+db_id);
    			System.out.println("level_order: "+level_order);
    			System.out.println("level_upper: "+level_upper);
    			System.out.println("level_level: "+level_level);
    			System.out.println("level_idxid: "+level_idxid);
    			System.out.println("level_value: "+level_value);
        		
    			diagnoIdxWghtvalMngService.selectIdxWghtvalMngInsert(searchVO, model);
    			
    			
    			
    			
    		//	diagnoIdxWghtvalMngService.selectIdxWghtvalMngInsert(searchVO, model);
    		}
    		
    	}
	

/*    	
    	INSERT 
    	  INTO TNDATABASETYIDXWGHTVAL VALUES 
    	       (
    	           1, --db_id
    	           1, --지표 id
    	           0, --그대로 가지고오는거(추가) 
    	           1, --그대로 추가(추가)
    	           1,-- 그대로 (추가 )
    	           10,-- 가중치(지표,특성)
    	           SYSDATE,
    	           'POLL',
    	           SYSDATE,
    	           'POLL'
    	       )
    	       ; 
    	       

    */	
    	
    	//diagnoIdxWghtvalMngService.selectIdxWghtvalMngDel(searchVO, model);
    	
    	
    	
    	return "forward:/support/diagnosis/idx/wghtval/WghtvalIdxMngRegist.do";
    }

}
