package egovframework.com.cop.ems.service;

import javax.annotation.Resource;

import egovframework.com.cop.ems.service.SndngMailVO;
import egovframework.com.cop.ems.service.impl.SndngMailRegistDAO;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;



/**
 * 발송메일등록 비동기 처리  클래스
 * @author 
 * @since 2011.12.05
 * @version 1.0
 * @see
 *  
 * <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2011.12.05  윤경한          최초 생성 
 *  </pre>
 */


public class SndngMailRegistThread extends Thread {

	/** SndngMailRegistDAO */
    private SndngMailRegistDAO sndngMailRegistDAO;
	
    /** Message ID Generation */
    private EgovIdGnrService egovMailMsgIdGnrService;
	
    private EgovSndngMailService egovSndngMailService;
    
    private SndngMailVO mail;
    
    /**
     * <p>
     * 발송하고자 하는 뉴스레터 메일VO와 서비스를 파라메타로 받는 기본 컨스트럭터(Constructor).
     * </p>
     *
     * @param SndngMailVO
     * @param SndngMailRegistDAO
     * @param EgovIdGnrService
     * @param EgovSndngMailService
     */
    public SndngMailRegistThread(	SndngMailVO vo, 
    								SndngMailRegistDAO sndngMailRegistDAO,
    								EgovIdGnrService egovMailMsgIdGnrService,
    								EgovSndngMailService egovSndngMailService	) 
    {
    	this.mail = vo;
    	this.sndngMailRegistDAO = sndngMailRegistDAO;
    	this.egovMailMsgIdGnrService = egovMailMsgIdGnrService;
    	this.egovSndngMailService = egovSndngMailService;
    }
	
    /**
     * <p>
     * 
     * </p>
     */    
	public void run() {
		try {
			if(insertSndngMail()) {
				System.out.println("SndngMailRegistServiceThread:insertSndngMail Success :-)");
			}
		}
		catch (Exception e) {
			System.out.println("SndngMailRegistServiceThread run Exception : " + e);
		}
	}
	
    /**
	 * 발송할 메일을 등록한다
	 * @param 
	 * @return boolean
	 * @exception Exception
	 */
    public boolean insertSndngMail() throws Exception {
    	
    	
    	try {
	    	String recptnPersons = this.mail.getRecptnPerson().replaceAll(" ", "");
	    	String [] recptnPersonList = recptnPersons.split(";");
	    	

	    	for (int j = 0; j < recptnPersonList.length; j++) {
	    		
	    		// 1-0.메세지ID를 생성한다.
	        	String mssageId = egovMailMsgIdGnrService.getNextStringId();	// TODO: DEBUG
	        	
	        	// 1-1.발송메일  데이터를 만든다.
	        	SndngMailVO mailVO = new SndngMailVO();
	        	mailVO.setMssageId(mssageId);
	        	mailVO.setDsptchPerson(this.mail.getDsptchPerson());
	        	
	        	mailVO.setRecptnPerson(recptnPersonList[j]);
	        	mailVO.setSj(this.mail.getSj());
	        	//mailVO.setEmailCn(EgovStringUtil.checkHtmlView(this.mail.getEmailCn()));
	        	mailVO.setEmailCn(this.mail.getEmailCn());
	        	mailVO.setSndngResultCode("C");	// C:완료 <- Exception 미발생시 성공
	       		//mailVO.setAtchFileId("");

	        	boolean sendingMailResult = egovSndngMailService.sndngMail(mailVO);
	        	
	        	if(!sendingMailResult) {
	        		mailVO.setSndngResultCode("F");	// 발송 실패
	        	}
	        	
	        	// 1-3.발송메일을 등록한다.
	        	sndngMailRegistDAO.insertSndngMail(mailVO);
	        	
	        	// 1-4.발송메일 요청XML 파일을 생성한다.
	        	//trnsmitXmlData(mailVO);
	    	}
        } catch (Exception e) {
            System.out.println("insertSndngMail exception: "+e.toString());
        }
    	
    	return true;
    }
}