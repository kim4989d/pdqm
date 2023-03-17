package egovframework.pdqm.front.support.diagnosis.level.web;

import java.util.ArrayList;
import java.util.Map ;
import java.util.HashMap ;
import java.util.List;
import java.util.Set ;
import java.util.StringTokenizer ;
import java.util.Calendar ;
import java.lang.SecurityManager ;
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

import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiag;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.level.service.SelfDiagService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class SelfDiagController {

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;
    
    @Resource(name = "selfDiagService")
    private SelfDiagService selfDiagService;
    
    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;


    @RequestMapping(value="/support/diagnosis/level/selfDgnssPrintView.do")
	public String selfDgnssPrintView(@ModelAttribute("searchVO") SelfDiagVO searchVO, ModelMap model) 
    			throws Exception {
    
    	return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_printview" ;
    }
    
    @RequestMapping(value="/support/diagnosis/level/selfDgnssInformation.do")
	public String selfDgnssInformation(@ModelAttribute("searchVO") SelfDiagVO searchVO, ModelMap model) 
    			throws Exception {
    
    	return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_information" ;
    }

	@RequestMapping(value="/support/diagnosis/level/selectDgnssTrgetView.do")
	public String selectDgnssTrgetView(@ModelAttribute("searchVO") SelfDiagVO searchVO, ModelMap model) 
    			throws Exception {
    	
		//searchVO.print() ;
		
		System.out.println( "---701---selectLevelDgnssId" ) ;
		
		List leveldgnssidlist = selfDiagService.selectLevelDgnssId( searchVO ) ;
		model.addAttribute( "cntleveldgnssid", leveldgnssidlist.size() ) ;
		if( leveldgnssidlist.size() > 0 )
			model.addAttribute( "leveldgnssid", ( ( SelfDiag )leveldgnssidlist.get( 0 ) ).getLevelDgnssId() ) ;
		
		System.out.println( "---702---selectUpperInsttSeCode" ) ;
		
		List upperinsttlist = selfDiagService.selectUpperInsttSeCode( searchVO ) ;
		model.addAttribute( "upperinsttlist", upperinsttlist ) ;
		
		System.out.println( "---703---selectInsttSeCode" ) ;
		
		List insttlist = selfDiagService.selectInsttSeCode( searchVO ) ;
		model.addAttribute( "insttlist", insttlist ) ;
		
		System.out.println( "---704---selectDatabaseTyId" ) ;
		
		List dbtypelist = selfDiagService.selectDatabaseTyId( searchVO ) ;
        model.addAttribute( "dbtypelist", dbtypelist ) ;
        
        System.out.println( "---705---selectDatabaseScaleCode" ) ;
        
        List dbscalecodelist = selfDiagService.selectDatabaseScaleCode( searchVO ) ;
        model.addAttribute( "dbscalecodelist", dbscalecodelist ) ;
        
        System.out.println( "---707---" ) ;
        
        model.addAttribute( "level_5_idx", searchVO.getLevel_5_idx() ) ;
        
        if( searchVO.getLevel_5_idx().equals( "idx" ) )
        	return "egovframework/pdqm/front/support/diagnosis/idx/idxselfdiag_dgnsstrget_view" ;
        
        return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_view" ;
  	}
	
	@RequestMapping(value="/support/diagnosis/level/selectDgnssTrgetListView.do")
	public String selectDgnssTrgetListView(@ModelAttribute("searchVO") SelfDiagVO searchVO, ModelMap model) 
    			throws Exception {
    	
		searchVO.print();
		
		model.addAttribute( "basicinfo", searchVO ) ;
	
		searchVO.setDgnssTrgetId( "0" ) ; //진단대상ID(전체=0)
		searchVO.setLevelDgnssId( searchVO.getLevelDgnssId() ) ; //자가진단관리(설문)ID
		
		System.out.println( "---600---selectCntDgnssTrget" ) ;
		
        List dgnsstrgetcntlist = selfDiagService.selectCntDgnssTrget(searchVO) ;
        model.addAttribute( "dgnsstrgetcntlist", dgnsstrgetcntlist ) ;
        
        int cnt1Level = 0 ;
        int cntTotQuestion = 0 ;
        for( int i = 0 ; i < dgnsstrgetcntlist.size() ; i++ )
        {
        	SelfDiag record = ( SelfDiag )dgnsstrgetcntlist.get( i ) ;
        	if( record.getQesitmCount() > 0 )
        	{
        		cnt1Level++ ;
        		cntTotQuestion += record.getQesitmCount() ;
        	}
        }
        model.addAttribute( "cntTotQuestion", cntTotQuestion ) ;
        model.addAttribute( "cnt1Level", cnt1Level ) ;
        
        System.out.println( "---cntTotQuestion : " + cntTotQuestion + "---cnt1Level : " + cnt1Level + "---" ) ;
        
        System.out.println( "---601---selectDgnssTrgetList" ) ;
        
        List dgnsstrgetlist = selfDiagService.selectListDgnssTrget( searchVO ) ;
        model.addAttribute("dgnsstrgetlist", dgnsstrgetlist) ;
        
        return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_listview";
  	}
	
	/**
	 * 관리수준 자가진단 : 0. 수준진단 답변결과 저장
	 * @param
	 * @exception Exception
	 */
	@RequestMapping(value="/support/diagnosis/level/submitDgnssTrgetResult.do")
	public String submitDgnssTrgetResult(
			@ModelAttribute("searchVO") SelfDiagVO searchVO,
			SelfDiag selfDiag,
            BindingResult bindingResult, ModelMap model,
            HttpServletRequest request )
	throws Exception {

		System.out.println( "/support/diagnosis/level/submitDgnssTrgetResult.do" ) ;
		searchVO.print();
		
		model.addAttribute( "answerpaper", searchVO ) ;
		
		System.out.println( "---300---getNewLevelResultId" ) ;
		
		List levelidlist = selfDiagService.getNewLevelResultId( searchVO ) ;
		String levelResultId = ( ( SelfDiag )levelidlist.get( 0 ) ).getLevelResultId() ;
		model.addAttribute( "levelResultId", levelResultId ) ;
		
		System.out.println( "---301---insertDgnssTrget1Result---levelResultId = " + levelResultId + "---levelDgnssId = " + searchVO.getLevelDgnssId()) ;
		
		LoginVO user = ( LoginVO )EgovUserDetailsHelper.getAuthenticatedUser() ;
    	if( user != null ) selfDiag.setUserIp( user.getIp() ) ;
    	else selfDiag.setUserIp( "" ) ;
    	
		selfDiag.setLevelResultId( levelResultId ) ;
		selfDiag.setLevelDgnssId( searchVO.getLevelDgnssId() ) ;
		selfDiag.setDatabaseTyId( searchVO.getDatabaseTyId() ) ;
		selfDiag.setInsttNm( searchVO.getInsttNm() ) ;
		selfDiag.setUpperInsttSeCode( searchVO.getUpperInsttSeCode() ) ;
		selfDiag.setInsttSeCode( searchVO.getInsttSeCode() ) ;
		selfDiag.setDatabaseNm( searchVO.getDatabaseNm() ) ;
		selfDiag.setDatabaseScaleCode( searchVO.getDatabaseScaleCode() ) ;
		
		selfDiag.print() ;
		selfDiagService.insertDgnssTrget1Result( selfDiag ) ;
		
		String qesitmNo = null ;
		String dgnssTrgetId = null ;
		String answerId = null ;
		String answerType = null ;
		String allot = null ;
		
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
				case  0 : selfDiag.setQesitmNo( item ) ; 		break ;
				case  1 : selfDiag.setDgnssTrgetLevel( item ) ; break ;
				case  2 : selfDiag.setDgnssTrgetId( item ) ; 	break ;
				case  3 : selfDiag.setUpperDgnssTrgetId( item ) ;	break ;
				case  4 : selfDiag.setQesitmNo( item ) ;		break ;
				case  5 : selfDiag.setQesitmId( item ) ;		break ;
				case  6 : selfDiag.setAnswerTyCode( item ) ;	break ;
				case  7 : selfDiag.setSortOrdrQ( item ) ;		break ;
				case  8 : selfDiag.setAnswerId( item ) ;		break ;
				case  9 : selfDiag.setAnswerStdr( item ) ;		break ;
				case 10 : selfDiag.setAllot( item ) ;			break ;
				case 11 : selfDiag.setSortOrdrA( item ) ;		break ;
				default : break ;
				}
			}
			
			selfDiag.print() ;
			
			System.out.println( "---302.1---insertDgnssTrget2Result" ) ;
			selfDiagService.insertDgnssTrget2Result( selfDiag ) ;
		}
		
		System.out.println( "---303---insertDgnssTrget3Result" ) ;
		
		selfDiagService.insertDgnssTrget3Result( selfDiag ) ;
		
		System.out.println( "---303.2---insertDgnssTrget4Result" ) ;
		
		selfDiagService.insertDgnssTrget4Result( selfDiag ) ;
		
		System.out.println( "---303.3---insertDgnssTrget5Result" ) ;
		
		selfDiagService.insertDgnssTrget5Result( selfDiag ) ;
		
		System.out.println( "---303.4---selectDgnssTrget1Result" ) ;
		
		searchVO.setLevelResultId( levelResultId ) ;
		List basicinfolist = selfDiagService.selectDgnssTrget1Result( searchVO ) ;
		model.addAttribute( "basicinfo", basicinfolist.get( 0 ) ) ;
		
		searchVO.setDgnssTrgetId( selfDiag.getDgnssTrgetId() ) ; //진단대상ID(전체=0)
		
		System.out.println( "---304---selectCompResult" ) ;
		
		searchVO.setDgnssTrgetId( "0" ) ; //진단대상ID(전체=0)
		List complist = selfDiagService.selectCompResult( searchVO ) ;
		model.addAttribute( "complist", complist ) ;
		model.addAttribute( "cnt1Level", complist.size() ) ;
		
		System.out.println( "---305---selectDetailResult" ) ;
		
		searchVO.setLevelResultId( levelResultId ) ;
		List resultlist = selfDiagService.selectDetailResult( searchVO ) ;
		model.addAttribute( "resultlist", resultlist ) ;
		
		int cnt2Level = 0 ;
		if( resultlist.size() > 0 )
		{
			dgnssTrgetId = ( ( SelfDiag )resultlist.get( 0 ) ).getDgnssTrgetId() ;
			
			for( int i = 1 ; i < resultlist.size() ; i++ )
			{
				SelfDiag r = ( SelfDiag )resultlist.get( i ) ;
				if( !r.getUpperDgnssTrgetId().equals( dgnssTrgetId ) ) break ;
				cnt2Level++ ;
			}
		}
		model.addAttribute( "cnt2Level", cnt2Level ) ;
		
		System.out.println( "---306---write2XMLFile" ) ;
		
		model.addAttribute( "reportxmlname", write2XMLFile( model, request ) ) ;
		
		print( model ) ;
		
		return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_resultview";
	}
	
	@RequestMapping(value="/support/diagnosis/level/selfDiagReportView.do")
	public String selfDiagReportView(
			@ModelAttribute("searchVO") SelfDiagVO searchVO,
			SelfDiag selfDiag,
            BindingResult bindingResult, ModelMap model )
	throws Exception {
		
		//searchVO.print() ;
		
		model.addAttribute( "param", searchVO ) ;

		return "egovframework/pdqm/front/support/diagnosis/level/selfdiag_dgnsstrget_rebview";
	}
	
	private int deleteXMLFileTheOldTimes( String pfolder, Calendar c )
	{
		String[] flist = new File( pfolder ).list() ;
		int cnt = 0 ;
		
		c.add( Calendar.DATE, -1 ) ;
		
		String strfind = "_" + c.get( Calendar.YEAR ) + c.get( Calendar.MONTH ) ;
		String strday  = c.get( Calendar.DAY_OF_MONTH ) + "" ;
		if( strday.length() < 2 ) strday = "0" + strday ;
		strfind = strfind + strday + "_" ;
		System.out.println( "\t\t strfind : " + strfind ) ;
		
		for( int i = 0 ; i < flist.length ; i++ )
		{
			if( flist[ i ].indexOf( strfind ) != -1 )
			{
				File f = new File( flist[ i ] ) ; 
				
				try
				{
					System.out.println( "\t\t flist[" + i + "] : " + flist[ i ] ) ;
					if( f.delete() ) System.out.println( "\t\t Delete OK !!" ) ;
					else System.out.println( "\t\t Not Delete!!" ) ;
				}
				catch( SecurityException e )
				{
					//- If a security manager exists and its SecurityManager.checkRead(java.lang.String) method denies read access to the directory
					e.printStackTrace() ;
				}
				cnt++ ;
			}
		}
		return cnt ;
	}
	
	private String write2XMLFile( ModelMap model, HttpServletRequest request )
	{
		int cnt1Level = ( Integer )model.get( "cnt1Level" ) ;
		int cnt2Level = ( Integer )model.get( "cnt2Level" ) ;
		String levelResultId = ( String )model.get( "levelResultId" ) ;
		
		Calendar c = Calendar.getInstance() ;
		String dd = c.get( Calendar.DAY_OF_MONTH ) + "" ;
		if( dd.length() == 1 ) dd = "0" + dd ;
		
		String fn = "selfDiagResult_" + c.get( Calendar.YEAR ) + c.get( Calendar.MONTH ) + dd + "_" + levelResultId ;
		String fd = request.getRealPath( "/" ) + "/RexServer30/rebxmlfiles/pdqm/front/" ;
		String fp = fd + fn + ".xml" ;
		
		model.addAttribute( "reportpath", fp ) ;
		
		deleteXMLFileTheOldTimes( fd, c ) ;
		
		try
		{
			StringBuffer sb = new StringBuffer() ;
			
			sb.append( "<?xml version='1.0' encoding='utf-8'?>\n" ) ;
			sb.append( "<gubun>\n" ) ;
			sb.append( "<rpt1>\n" ) ;
			
			//기본정보
			SelfDiag selfDiag = ( SelfDiag )model.get( "basicinfo" ) ;
			sb.append( "<rexdataset>\n" ) ;
			sb.append( "<rexrow>\n" ) ;
			sb.append( "<INSTT_NM><![CDATA[" + selfDiag.getInsttNm() + "]]></INSTT_NM>\n" ) ;
			sb.append( "<DATABASE_NM><![CDATA[" + selfDiag.getDatabaseNm() + "]]></DATABASE_NM>\n" ) ;
			sb.append( "<UPPER_INSTT_SE_CODE_NM><![CDATA[" + selfDiag.getUpperInsttSeCodeNm() + "]]></UPPER_INSTT_SE_CODE_NM>\n" ) ;
			sb.append( "<INSTT_SE_CODE_NM><![CDATA[" + selfDiag.getInsttSeCodeNm() + "]]></INSTT_SE_CODE_NM>\n" ) ;
			sb.append( "<DATABASE_TY_NM><![CDATA[" + selfDiag.getDatabaseTyNm() + "]]></DATABASE_TY_NM>\n" ) ;
			sb.append( "<DATABASE_SCALE_CODE_NM><![CDATA[" + selfDiag.getDatabaseScaleCodeNm() + "]]></DATABASE_SCALE_CODE_NM>\n" ) ;
			sb.append( "</rexrow>\n" ) ;
			sb.append( "</rexdataset>\n" ) ;
			sb.append( "</rpt1>\n" ) ;
			
			List complist = ( List )model.get( "complist" ) ;
			List resultlist = ( List )model.get( "resultlist" ) ;
			
			StringBuffer ds1 = new StringBuffer() ;
			StringBuffer ds2 = new StringBuffer() ;
			
			//진단결과
			ds1.append( "<rpt2>\n" ) ;
			ds1.append( "<rexdataset>\n" ) ;
			
			//진단결과  설명
			ds2.append( "<rpt3>\n" ) ;
			ds2.append( "<rexdataset>\n" ) ;
			
			for( int i = 0 ; i < complist.size() ; i++ )
			{
				selfDiag = ( SelfDiag )complist.get( i ) ;
				String dgnssTrgetId = selfDiag.getDgnssTrgetId() ;
				
				ds1.append( "<rexrow>\n" ) ;
				ds1.append( "<DGNSS_TRGET_NM><![CDATA[" + ( selfDiag.getDgnssTrgetNm() == null? "" : selfDiag.getDgnssTrgetNm() ) + "]]></DGNSS_TRGET_NM>\n" ) ;
				ds1.append( "<DGNSS_RESULT_CL_CODE_COMP><![CDATA[" + ( selfDiag.getDgnssResultClCode() == null? "" : selfDiag.getDgnssResultClCode() ) + "]]></DGNSS_RESULT_CL_CODE_COMP>\n" ) ;
				ds1.append( "<DGNSS_RESULT_CL_CODE_NM_COMP><![CDATA[" + ( selfDiag.getDgnssResultClCodeNm() == null? "" : selfDiag.getDgnssResultClCodeNm() ) + "]]></DGNSS_RESULT_CL_CODE_NM_COMP>\n" ) ;
				
				for( int j = 0, key = 0 ; j < resultlist.size() ; j++ )
				{
					SelfDiag selfDiag2 = ( SelfDiag )resultlist.get( j ) ;
					String upperDgnssTrgetId = selfDiag2.getUpperDgnssTrgetId() ;
					
					if( upperDgnssTrgetId.equals( dgnssTrgetId ) )
					{
						ds1.append( "<DGNSS_RESULT_CL_CODE_" + key + "><![CDATA[" + ( selfDiag2.getDgnssResultClCode() == null? "" : selfDiag2.getDgnssResultClCode() ) + "]]></DGNSS_RESULT_CL_CODE_" + key + ">\n" ) ;
						ds1.append( "<DGNSS_RESULT_CL_CODE_NM_" + key + "><![CDATA[" + ( selfDiag2.getDgnssResultClCodeNm() == null? "" : selfDiag2.getDgnssResultClCodeNm() ) + "]]></DGNSS_RESULT_CL_CODE_NM_" + key + ">\n" ) ;
						key++ ;
						
						ds2.append( "<rexrow>\n" ) ;
						ds2.append( "<UPPER_DGNSS_TRGET_NM><![CDATA[" + ( selfDiag.getDgnssTrgetNm() == null? "" : selfDiag.getDgnssTrgetNm() ) + "]]></UPPER_DGNSS_TRGET_NM>\n" ) ;
						ds2.append( "<DGNSS_TRGET_NM><![CDATA[" + ( selfDiag2.getDgnssTrgetNm() == null? "" : selfDiag2.getDgnssTrgetNm() ) + "]]></DGNSS_TRGET_NM>\n" ) ;
						ds2.append( "<RESULT_DC><![CDATA[" + ( selfDiag2.getResultDc() == null? "" : selfDiag2.getResultDc() ) + "]]></RESULT_DC>\n" ) ;
						ds2.append( "</rexrow>\n" ) ;
					}
				}
				ds1.append( "</rexrow>\n" ) ;
			}
			
			ds1.append( "</rexdataset>\n" ) ;
			ds1.append( "</rpt2>\n" ) ;
			
			ds2.append( "</rexdataset>\n" ) ;
			ds2.append( "</rpt3>\n" ) ;
			
			sb.append( ds1 ) ;
			sb.append( ds2 ) ;
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
