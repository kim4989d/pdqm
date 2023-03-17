package egovframework.pdqm.front.support.diagnosis.idx.web;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer ;
import java.util.Calendar ;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.nio.charset.*;
import java.nio.channels.*;
import java.nio.*;
import java.io.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;

import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiag;
import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.idx.service.IdxSelfDiagService;
//import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiag;
//import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller
public class IdxSelfDiagController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "idxSelfDiagService")
    private IdxSelfDiagService idxSelfDiagService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;


    @RequestMapping(value="/support/diagnosis/idx/selectIdxDgnssTrgetListView.do")
	public String selectIdxDgnssTrgetListView(@ModelAttribute("searchVO") IdxSelfDiagVO searchVO, ModelMap model) 
    			throws Exception {
    	
    	System.out.println( "/support/diagnosis/idx/selectIdxDgnssTrgetListView.do" ) ;
    	searchVO.print();
		
		if( searchVO.getLevelDgnssId() == null || searchVO.getLevelDgnssId().length() == 0 )
		{
			System.out.println( "---705.2---" ) ;
			model.addAttribute( "level_5_idx", "idx" ) ;
			return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_view" ;
		}
		
		model.addAttribute( "basicinfo", searchVO ) ;
		model.addAttribute( "idxDgnssId", "" ) ;
		model.addAttribute( "idxDgnssNm", "" ) ;
		
		System.out.println( "---706.1---databaseTyId : " + searchVO.getDatabaseTyId() ) ;
        
        searchVO.setDatabaseTyId( searchVO.getDatabaseTyId() ) ;
        List ingidxdgnssidlist = idxSelfDiagService.selectIngIdxDgnssId( searchVO ) ;
        
        System.out.println( "---706.2---ingidxdgnssidlist.size() : " + ingidxdgnssidlist.size() ) ;
        
        if( ingidxdgnssidlist.size() == 0 )
        	return "egovframework/pdqm/front/support/diagnosis/idx/idxselfdiag_dgnsstrget_nodata" ;

    	IdxSelfDiag r = ( IdxSelfDiag )ingidxdgnssidlist.get( 0 ) ;
    	model.addAttribute( "idxDgnssId", r.getIdxDgnssId() ) ;
    	model.addAttribute( "idxDgnssNm", r.getIdxDgnssNm() ) ;
    	
    	searchVO.setIdxDgnssId( r.getIdxDgnssId() ) ;
    	
    	System.out.println( "----------100------------selectCntIdxDec---idxDgnssId[" + searchVO.getIdxDgnssId() + "], databaseTyId[" + searchVO.getDatabaseTyId() + "]" ) ;
		
		List cntidxdeclist = idxSelfDiagService.selectCntIdxDec( searchVO ) ;
        model.addAttribute( "cntidxdeclist", cntidxdeclist ) ;
        
        System.out.println( "----------101------------getQesitmCount2" ) ;
        
        int cnt1Level = 0 ;
        int cntTotQuestion = 0 ;
        for( int i = 0 ; i < cntidxdeclist.size() ; i++ )
        {
        	IdxSelfDiag record = ( IdxSelfDiag )cntidxdeclist.get( i ) ;
        	if( record.getQesitmCount() > 0 )
        	{
        		cnt1Level++ ;
        		cntTotQuestion += record.getQesitmCount() ;
        	}
        }
        
        System.out.println( "---cntTotQuestion : " + cntTotQuestion + "---cnt1Level : " + cnt1Level + "---" ) ;
        
        model.addAttribute( "cntTotQuestion", cntTotQuestion ) ;
        model.addAttribute( "cnt1Level", cnt1Level ) ;
        
        System.out.println( "----------102------------selectIdxDgnssList" ) ;
        
        searchVO.setIdxId( "0" ) ; //전체 문제 가져올때
        
        List idxdgnsslist = idxSelfDiagService.selectIdxDgnssList( searchVO ) ;
        model.addAttribute( "idxdgnsslist", idxdgnsslist ) ;
        
        return "egovframework/pdqm/front/support/diagnosis/idx/idxselfdiag_dgnsstrget_listview" ;
  	}
	
    /**
	 * 관리수준 자가진단 : 0. 수준진단 답변결과 저장
	 * @param
	 * @exception Exception
	 */
	@RequestMapping(value="/support/diagnosis/idx/submitIdxDgnssTrgetResult.do")
	public String submitIdxDgnssTrgetResult(
			@ModelAttribute("searchVO") IdxSelfDiagVO searchVO,
			IdxSelfDiag idxSelfDiag,
            BindingResult bindingResult, ModelMap model,
            HttpServletRequest request )
	throws Exception {

		//searchVO.print();
		
		model.addAttribute( "answerpaper", searchVO ) ;
		
		System.out.println( "---1---getNewIdxDgnssId" ) ;
		
		List idxdgnssidlist = idxSelfDiagService.getNewIdxResultId( searchVO ) ;
		String idxResultId = ( ( IdxSelfDiag )idxdgnssidlist.get( 0 ) ).getIdxResultId() ;
		model.addAttribute( "idxResultId", idxResultId ) ;
		
		System.out.println( "---1.1---[" + idxResultId + "]" ) ;
		
		LoginVO user = ( LoginVO )EgovUserDetailsHelper.getAuthenticatedUser() ;
    	if( user != null ) idxSelfDiag.setUserIp( user.getIp() ) ;
    	else idxSelfDiag.setUserIp( "" ) ;
    	
    	idxSelfDiag.setIdxDgnssId( searchVO.getIdxDgnssId() ) ;
    	idxSelfDiag.setIdxResultId( idxResultId ) ;
    	idxSelfDiag.setDatabaseTyId( searchVO.getDatabaseTyId() ) ;
    	idxSelfDiag.setInsttNm( searchVO.getInsttNm() ) ;
    	idxSelfDiag.setUpperInsttSeCode( searchVO.getUpperInsttSeCode() ) ;
    	idxSelfDiag.setInsttSeCode( searchVO.getInsttSeCode() ) ;
    	idxSelfDiag.setDatabaseNm( searchVO.getDatabaseNm() ) ;
    	idxSelfDiag.setDatabaseScaleCode( searchVO.getDatabaseScaleCode() ) ;
    	
    	idxSelfDiag.print() ;
		
		System.out.println( "---2---insertIdxDgnss1Result" ) ;
		
		idxSelfDiagService.insertIdxDgnss1Result( idxSelfDiag ) ;
		
		StringTokenizer st = new StringTokenizer( searchVO.getAnswerPaper(), "^" ) ;
		
		while( st.hasMoreTokens() )
		{
			String record = st.nextToken() ;
			
			StringTokenizer st2 = new StringTokenizer( record, "`" ) ;
			
			int idx = 0 ;
			while( st2.hasMoreTokens() )
			{
				String item = st2.nextToken() ;
				
				switch( idx++ )
				{
				case  0 : idxSelfDiag.setQesitmNo( item ) ; 	break ;
				case  1 : idxSelfDiag.setIdxId( item ) ; 		break ;
				case  2 : idxSelfDiag.setUpperIdxId( item ) ; 	break ;
				case  3 : idxSelfDiag.setQesitmId( item ) ;		break ;
				case  4 : idxSelfDiag.setAnswerId( item ) ;		break ;
				case  5 : idxSelfDiag.setAnswerTyCode( item ) ;	break ;
				case  6 : idxSelfDiag.setAllot( item ) ;		break ;
				default : break ;
				}
			}
			
			idxSelfDiag.print() ;
			
			System.out.println( "---302.1---insertIdxDgnss2Result" ) ;
			idxSelfDiagService.insertIdxDgnss2Result( idxSelfDiag ) ;
		}
		
		System.out.println( "---3.1---insertIdxDgnss3Result" ) ;
		idxSelfDiagService.insertIdxDgnss3Result( idxSelfDiag ) ;
		
		System.out.println( "---3.2---insertIdxDgnss4Result" ) ;
		idxSelfDiagService.insertIdxDgnss4Result( idxSelfDiag ) ;
		
		System.out.println( "---3.3---insertIdxDgnss5Result" ) ;
		idxSelfDiagService.insertIdxDgnss5Result( idxSelfDiag ) ;
		
		System.out.println( "---3.4---updateIdxDgnss6Result" ) ;
		idxSelfDiagService.updateIdxDgnss6Result( idxSelfDiag ) ;
		
		System.out.println( "---3.5---selectIdxDgnss1Result" ) ;
		searchVO.setIdxResultId( idxResultId ) ;
		List basicinfolist = idxSelfDiagService.selectIdxDgnss1Result( searchVO ) ;
		model.addAttribute( "basicinfo", basicinfolist.get( 0 ) ) ;
		
		System.out.println( "---4---selectIdxDgnss2Result" ) ;
		
		List complist = idxSelfDiagService.selectIdxDgnss2Result( searchVO ) ;
		if( complist.size() > 0 )
			model.addAttribute( "compinfo", ( IdxSelfDiag )complist.get( 0 ) ) ;
		
		System.out.println( "---5---selectIdxDgnss3Result" ) ;
		
		searchVO.setIdxResultId( idxResultId ) ;
		
		List resultlist = idxSelfDiagService.selectIdxDgnss3Result( searchVO ) ;
		if( resultlist.size() > 0 )
		{
			model.addAttribute( "resultlist", resultlist ) ;
			model.addAttribute( "cnt1Level", resultlist.size() ) ;
		}
		
		System.out.println( "---6---write2XMLFile" ) ;
		
		model.addAttribute( "reportxmlname", write2XMLFile( model, request ) ) ;
		
		print( model ) ;
		
		return "egovframework/pdqm/front/support/diagnosis/idx/idxselfdiag_dgnsstrget_resultview";
	}
	
	@RequestMapping(value="/support/diagnosis/idx/idxSelfDiagReportView.do")
	public String selfDiagReportView(
			@ModelAttribute("searchVO") IdxSelfDiagVO searchVO,
			IdxSelfDiag idxSelfDiag,
            BindingResult bindingResult, ModelMap model )
	throws Exception {
		
		//searchVO.print() ;
		
		model.addAttribute( "param", searchVO ) ;

		return "egovframework/pdqm/front/support/diagnosis/idx/idxselfdiag_dgnsstrget_rebview";
	}
	
	private String write2XMLFile( ModelMap model, HttpServletRequest request )
	{
		int cnt1Level = ( Integer )model.get( "cnt1Level" ) ;
		String idxResultId = ( String )model.get( "idxResultId" ) ;
		
		Calendar c = Calendar.getInstance() ;
		String dd = c.get( Calendar.DAY_OF_MONTH ) + "" ;
		if( dd.length() == 1 ) dd = "0" + dd ;
		
		String fn = "idxSelfDiagResult_" + c.get( Calendar.YEAR ) + c.get( Calendar.MONTH ) + dd + "_" + idxResultId ;
		String fd = request.getRealPath( "/" ) + "/RexServer30/rebxmlfiles/pdqm/front/" ;
		String fp = fd + fn + ".xml" ;
		
		model.addAttribute( "reportpath", fp ) ;
		
		try
		{
			StringBuffer sb = new StringBuffer() ;
			
			sb.append( "<?xml version='1.0' encoding='utf-8'?>\n" ) ;
			sb.append( "<gubun>\n" ) ;
			sb.append( "<rpt1>\n" ) ;
			
			//기본정보
			IdxSelfDiag idxSelfDiag = ( IdxSelfDiag )model.get( "basicinfo" ) ;
			sb.append( "<rexdataset>\n" ) ;
			sb.append( "<rexrow>\n" ) ;
			sb.append( "<INSTT_NM><![CDATA[" + idxSelfDiag.getInsttNm() + "]]></INSTT_NM>\n" ) ;
			sb.append( "<DATABASE_NM><![CDATA[" + idxSelfDiag.getDatabaseNm() + "]]></DATABASE_NM>\n" ) ;
			sb.append( "<UPPER_INSTT_SE_CODE_NM><![CDATA[" + idxSelfDiag.getUpperInsttSeCodeNm() + "]]></UPPER_INSTT_SE_CODE_NM>\n" ) ;
			sb.append( "<INSTT_SE_CODE_NM><![CDATA[" + idxSelfDiag.getInsttSeCodeNm() + "]]></INSTT_SE_CODE_NM>\n" ) ;
			sb.append( "<DATABASE_TY_NM><![CDATA[" + idxSelfDiag.getDatabaseTyNm() + "]]></DATABASE_TY_NM>\n" ) ;
			sb.append( "<DATABASE_SCALE_CODE_NM><![CDATA[" + idxSelfDiag.getDatabaseScaleCodeNm() + "]]></DATABASE_SCALE_CODE_NM>\n" ) ;
			
			//총평 및 참고사항
			idxSelfDiag = ( IdxSelfDiag )model.get( "compinfo" ) ;
			sb.append( "<RESULT_DC><![CDATA[" + idxSelfDiag.getResultDc() + "]]></RESULT_DC>\n" ) ;
			sb.append( "<REFER_DC><![CDATA[" + idxSelfDiag.getReferDc() + "]]></REFER_DC>\n" ) ;
			
			sb.append( "</rexrow>\n" ) ;
			sb.append( "</rexdataset>\n" ) ;
			sb.append( "</rpt1>\n" ) ;
			
			
			List resultlist = ( List )model.get( "resultlist" ) ;
			
			StringBuffer ds1 = new StringBuffer() ;
			
			//진단결과
			ds1.append( "<rpt2>\n" ) ;
			ds1.append( "<rexdataset>\n" ) ;
			
			for( int i = 0 ; i < resultlist.size() ; i++ )
			{
				idxSelfDiag = ( IdxSelfDiag )resultlist.get( i ) ;
				String idxDgnssId = idxSelfDiag.getIdxDgnssId() ;
				
				//<c:if test="${list.dgnssResultClCode2 ne null}">
				if( idxSelfDiag.getDgnssResultClCode2() == null ) continue ;
				
				ds1.append( "<rexrow>\n" ) ;
				ds1.append( "<IDX_NM><![CDATA[" + ( idxSelfDiag.getIdxNm() == null? "" : idxSelfDiag.getIdxNm() ) + "]]></IDX_NM>\n" ) ;
				ds1.append( "<DGNSS_RESULT_CL_CODE><![CDATA[" + ( idxSelfDiag.getDgnssResultClCode() == null? "" : idxSelfDiag.getDgnssResultClCode() ) + "]]></DGNSS_RESULT_CL_CODE>\n" ) ;
				ds1.append( "<DGNSS_RESULT_CL_CODE2><![CDATA[" + ( idxSelfDiag.getDgnssResultClCode2() == null? "" : idxSelfDiag.getDgnssResultClCode2() ) + "]]></DGNSS_RESULT_CL_CODE2>\n" ) ;
				ds1.append( "<DGNSS_RESULT_CL_CODE_NM><![CDATA[" + ( idxSelfDiag.getDgnssResultClCodeNm() == null? "" : idxSelfDiag.getDgnssResultClCodeNm() ) + "]]></DGNSS_RESULT_CL_CODE_NM>\n" ) ;
				ds1.append( "<RESULT_DC><![CDATA[" + ( idxSelfDiag.getResultDc() == null? "" : idxSelfDiag.getResultDc() ) + "]]></RESULT_DC>\n" ) ;
				
				String resultOptimum = "" ;
				String resultNormal  = "" ;
				String resultFaults  = "" ;
				
				//if( idxSelfDiag.getDgnssResultClCode2() != null )
				{
					switch( Integer.parseInt( idxSelfDiag.getDgnssResultClCode2() ) )
					{
					case 100 : resultOptimum = idxSelfDiag.getDgnssResultClCodeNm() ; break ;
					case 200 : resultNormal = idxSelfDiag.getDgnssResultClCodeNm() ; break ;
					case 300 : resultFaults = idxSelfDiag.getDgnssResultClCodeNm() ; break ;
					default : break ;
					}
				}
				
				ds1.append( "<RESULT_OPTIMUM><![CDATA[" + resultOptimum + "]]></RESULT_OPTIMUM>\n" ) ;
				ds1.append( "<RESULT_NORMAL><![CDATA[" + resultNormal + "]]></RESULT_NORMAL>\n" ) ;
				ds1.append( "<RESULT_FAULTS><![CDATA[" + resultFaults + "]]></RESULT_FAULTS>\n" ) ;
				ds1.append( "</rexrow>" ) ;
			}
			
			ds1.append( "</rexdataset>\n" ) ;
			ds1.append( "</rpt2>\n" ) ;
			
			sb.append( ds1 ) ;
			sb.append( "</gubun>\n" ) ;
			
			FileChannel channel = null ;
	    	try
	    	{
	    		Charset charset = Charset.forName( "UTF-8" ) ;
	    		ByteBuffer buff = charset.encode( sb.toString() ) ;
	    		FileOutputStream out = new FileOutputStream( fp ) ;
	    		channel = out.getChannel() ;
	    		channel.write( buff ) ;
	    	}
	    	catch( Exception e )
	    	{
	    		e.printStackTrace() ;
	    	}
	    	finally
	    	{
	    		if( channel != null )
	    		{
	    			try { channel.close() ; }catch( IOException ex ) { ex.printStackTrace() ; }
	    		}
	    	}
		}
		catch( Exception e )
		{
			e.printStackTrace() ;
		}
		
		return fn ;
	}
	
	private void print( List list )
	{
		for( int i = 0 ; i < list.size() ; i++ )
		{
			print( ( Map )list.get( i ) ) ;
		}
	}
	
	private void print( Map formparam )
	{
		Set es = formparam.entrySet();
		java.util.Iterator it = es.iterator();
		while( it.hasNext() )
		{
			Map.Entry e = (Map.Entry)it.next() ;
			System.out.println( e.getKey() + " = " + e.getValue() ) ;
		}
		System.out.println( "" ) ;
	}
}
