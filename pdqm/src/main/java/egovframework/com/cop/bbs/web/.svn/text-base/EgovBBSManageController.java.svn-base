package egovframework.com.cop.bbs.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sourceforge.ajaxtags.xml.AjaxXmlBuilder;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.ComDefaultCodeVO;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovCmmUseService;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.EgovProperties;
import egovframework.com.cmm.service.FileVO;
import egovframework.com.cmm.service.Globals;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cop.bbs.service.Board;
import egovframework.com.cop.bbs.service.BoardMaster;
import egovframework.com.cop.bbs.service.BoardMasterVO;
import egovframework.com.cop.bbs.service.BoardVO;
import egovframework.com.cop.bbs.service.EgovBBSAttributeManageService;
import egovframework.com.cop.bbs.service.EgovBBSCommentService;
import egovframework.com.cop.bbs.service.EgovBBSManageService;
import egovframework.com.cop.bbs.service.EgovBBSSatisfactionService;
import egovframework.com.cop.bbs.service.EgovBBSScrapService;
import egovframework.com.cop.ems.service.EgovSndngMailRegistService;
import egovframework.com.cop.ems.service.SndngMailVO;
import egovframework.com.utl.sim.service.EgovFileScrty;
import egovframework.pdqm.admin.support.diagnosis.level.util.DrsAjaxXmlView;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 게시물 관리를 위한 컨트롤러 클래스
 * @author 공통서비스개발팀 이삼섭
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------       --------    ---------------------------
 *   2009.3.19  이삼섭          최초 생성
 *   2009.06.29	한성곤			2단계 기능 추가 (댓글관리, 만족도조사)
 *   2011.07.01 안민정		 	댓글, 스크랩, 만족도 조사 기능의 종속성 제거
 *   2011.8.26	정진오			IncludedInfo annotation 추가
 *   2011.09.07 서준식           유효 게시판 게시일 지나도 게시물이 조회되던 오류 수정
 * </pre>
 */


@Controller
public class EgovBBSManageController {


    @Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;

    @Resource(name = "EgovBBSAttributeManageService")
    private EgovBBSAttributeManageService bbsAttrbService;

    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;

    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;
    
    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

    // khyoon 2011.10.27
    @Resource(name = "EgovCmmUseService")
    private EgovCmmUseService cmmUseService;

    // khyoon 2011.11.28
    /** EgovSndngMailRegistService */
	@Resource(name = "sndngMailRegistService")
    private EgovSndngMailRegistService sndngMailRegistService;    
	
	// khyoon 2011.12.09
	//private SndngMailRegistThread sndngMailRegistThread;
    //~khyoon
    
    //---------------------------------
    // 2009.06.29 : 2단계 기능 추가
    // 2011.07.01 : 댓글, 스크랩, 만족도 조사 기능의 종속성 제거
    //---------------------------------
    @Autowired(required=false)
    private EgovBBSCommentService bbsCommentService;
    
    @Autowired(required=false)
    private EgovBBSSatisfactionService bbsSatisfactionService;
    
    @Autowired(required=false)
    private EgovBBSScrapService bbsScrapService;
    ////-------------------------------

    @Autowired
    private DefaultBeanValidator beanValidator;

    Logger log = Logger.getLogger(this.getClass());
    
    /**
     * XSS 방지 처리.
     * 
     * @param data
     * @return
     */
    protected String unscript(String data) {
        if (data == null || data.trim().equals("")) {
            return "";
        }
        
        String ret = data;
        
        ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;script");
        ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;/script");
        
        ret = ret.replaceAll("<(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;object");
        ret = ret.replaceAll("</(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;/object");
        
        ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;applet");
        ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;/applet");
        
        ret = ret.replaceAll("<(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        ret = ret.replaceAll("</(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        
        ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "&lt;form");
        ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "&lt;form");

        return ret;
    }

    /**
     * 뉴스레터 콘텐츠 설정 : Ajax Request 처리
     * khyoon 2011.12.15
	 * @param request
	 * @return ajax response 
     * @throws Exception
     */    
    @RequestMapping("/admin/contents/setNewsletterContent.do")
    public synchronized ModelAndView setNewsletterContent(HttpServletRequest request) throws Exception {
    	
    	ModelAndView model = new ModelAndView(new DrsAjaxXmlView());
    	AjaxXmlBuilder axBuilder = new AjaxXmlBuilder();
    	
		String selBbsId = (String)request.getParameter("selBbsId");
		System.out.println("selBbsId="+selBbsId);
		String selBbsNm = (String)request.getParameter("selBbsNm");
		String selNttId = (String)request.getParameter("selNttId");
		String selNttSj = (String)request.getParameter("selNttSj");
		String propertyKey = (String)request.getParameter("propertyKey");
		System.out.println("propertyKey="+propertyKey);
		
		String href = "bbsId=" + selBbsId + "&nttId=" + selNttId;
		String desc = selBbsNm + " > " + selNttSj;
		
		if(selBbsId.equals("")) {
			href = " ";
			selNttSj = " ";
			desc = " ";
		}

		// Save Newsletter Property
		EgovProperties.setProperty(Globals.PDQM_CONF_PATH, propertyKey+".HREF", href);
		EgovProperties.setProperty(Globals.PDQM_CONF_PATH, propertyKey+".SUBJECT", selNttSj);
		EgovProperties.setProperty(Globals.PDQM_CONF_PATH, propertyKey+".DESC", desc);
		
		//System.out.println("setNewsletterContent >>> " + desc);
		axBuilder.addItem(desc);
		model.addObject("ajaxData", axBuilder.toString());
		
		return model;
    }
    
    /**
     * 뉴스레터 게시물 이메일 발송
     * TODO: 비동기 호출(Thread)로 변경 예정 
     * khyoon 2011.11.28
     * @param boardVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/sendNewsletter.do")
    public String sendNewsletter(@ModelAttribute("searchVO") BoardVO boardVO, 
    								ModelMap model) throws Exception {
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
    	if(isAuthenticated) {
    		
    		// 뉴스레터 수신 대상자 목록 조회 및 저장
    		StringBuffer sbRecptnPersons = new StringBuffer();
    		List list = bbsMngService.selectNewsletterTargetList();
    		for(int i=0; i<list.size(); i++)
    		{	
    			sbRecptnPersons.append((String)list.get(i));
    			if(list.size() > (i+1))
    				sbRecptnPersons.append(";");
    		}
    		
    		if(list.size() > 0) {
	    		SndngMailVO vo = new SndngMailVO();
	    		vo.setRecptnPerson(sbRecptnPersons.toString());
	    		
	    		// 뉴스레터 제목 및 내용 조회 및 저장
	    		BoardVO board = bbsMngService.selectBoardArticle(boardVO);
	    		vo.setEmailCn(board.getNttCn());
	    		vo.setSj(board.getNttSj());
	    		vo.setDsptchPerson("webmaster");	// 발신자 정보
	    		
	    		// khyoon 2011.12.13 이메일 전송 비동기 방식으로 변경
	    		//if(sndngMailRegistService.insertSndngMail(vo)) {
    			sndngMailRegistService.insertSndngMailByThread(vo);
    			//~khyoon
    		}    		
    	}
    	
    	return "forward:/cop/ems/selectSndngMailList.do";
    }
    
   
    /**
     * 게시물에 대한 파일확장자 아이콘 정보를 조회한다.
     * khyoon 2011.11.14
     * @param commandMap
     * @param model
     * @return
     * @throws Exception
     */    
    @RequestMapping("/cop/bbs/selectFileIconInfo.do")
    public String selectFileIcon(Map<String, Object> commandMap, ModelMap model) 
    		throws Exception
    {
    	FileVO fv = new FileVO();
    	String atchFileId = (String)commandMap.get("firstAtchFileId");

    	if(atchFileId != null)
    		fv.setAtchFileId(atchFileId);
    	else
    		fv.setAtchFileId("0");
    	
    	String fileExtsn = fileMngService.selectFirstFileExtsn(fv);
    	
    	if(fileExtsn != null)
    		model.addAttribute("fileExtsn", fileExtsn);
    	    	
    	return "egovframework/pdqm/common/bbs/FileExtsnInfo";
    }
    
    /**
     * 게시판에 대한 쓰기권한을 조회한다.
     * khyoon 2011.11.29
     * @param user
     * @return
     * @throws 
     */    
    private String getWritePermission(String bbsId, LoginVO user) {
    	// A: 관리자, G:공공기관, O: 일반
    	// 묻고 답하기 게시판은 로그인 상태라면 누구나 글쓰기 가능
    	if(bbsId.equals("BBSMSTR_000000000131") && !user.getMberType().equals(""))	{
    		return "W";
    	}
    	// COM201, 1:공공기관, 2:협의회, 3:전문가, 4:일반, 5:관리자
    	// 커뮤니티게시판은 협의회 회원만 열람/글쓰기 가능
    	if(bbsId.equals("BBSMSTR_000000000151") && user.getMberGrp().equals("2")) {
    		return "W";    		
    	}
    	// 커뮤니티자료실은 협의회 회원만 열람/글쓰기 가능
    	if(bbsId.equals("BBSMSTR_000000000152") && user.getMberGrp().equals("2")) {
    		return "W";    		
    	}    	
    	
    	return "R";
    }
    
    /**
     * 게시물에 대한 목록을 조회한다.
     * khyoon HttpServletRequest 파라미터 추가 2011.11.02
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/selectBoardList.do")
    public String selectBoardArticles(	HttpServletRequest request, 
    									@ModelAttribute("searchVO") BoardVO boardVO, 
    									ModelMap model) throws Exception {
    	
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	boardVO.setBbsId(boardVO.getBbsId());
	boardVO.setBbsNm(boardVO.getBbsNm());
	
	boardVO.setSearchNttClCode(boardVO.getSearchNttClCode());
	
	BoardMasterVO vo = new BoardMasterVO();
	vo.setBbsId(boardVO.getBbsId());
	
	BoardMasterVO master = bbsAttrbService.selectBBSMasterInf(vo);
	
	//-------------------------------
	// 방명록이면 방명록 URL로 forward
	//-------------------------------
	if (master.getBbsTyCode().equals("BBST04")) {
	    return "forward:/cop/bbs/selectGuestList.do";
	}
	////-----------------------------

	
	boardVO.setPageUnit(propertyService.getInt("pageUnit"));
	boardVO.setPageSize(propertyService.getInt("pageSize"));
	
	if(master.getDetailListPosblAt().equals("Y") || master.getCnWithListPosblAt().equals("Y")) {
		// TODO: pdqm.properties 읽어오는 설정으로 변경예정
		boardVO.setPageUnit(5);
	}
	if(master.getBbsAttrbCode().equals("BBSA07")) {	// 동영상게시판
		boardVO.setPageUnit(6);
	}

	PaginationInfo paginationInfo = new PaginationInfo();
	
	paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
	paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
	paginationInfo.setPageSize(boardVO.getPageSize());

	boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
	boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
	// khyoon 게시물분류가능 게시판인 경우 해당 분류코드 데이터 설정 2011.10.27
	if(master.getNttClPosblAt().equals("Y")) {
		ComDefaultCodeVO cvo = new ComDefaultCodeVO();
		cvo.setCodeId(master.getNttClCodeId());
		List codeResult = cmmUseService.selectCmmCodeDetail(cvo);
		model.addAttribute("codeList", codeResult);
		
		boardVO.setNttClCodeId(master.getNttClCodeId());

	}
	else
		boardVO.setNttClCodeId("");
	
	if(master.getBbsAttrbCode().equals("BBSA08")) {	// 뉴스레터 컨텐츠 관리
		boardVO.setBbsId(boardVO.getSearchBbsId());		
		boardVO.setPageUnit(propertyService.getInt("pageUnit"));
	}
	
	//Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, vo.getBbsAttrbCode());
	Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, master.getBbsAttrbCode());//2011.09.07
	int totCnt = Integer.parseInt((String)map.get("resultCnt"));
	
	paginationInfo.setTotalRecordCount(totCnt);

	//-------------------------------
	// 기본 BBS template 지정 
	//-------------------------------
	if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
	    master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}
	////-----------------------------
	
	model.addAttribute("resultList", map.get("resultList"));
	model.addAttribute("resultCnt", map.get("resultCnt"));
	model.addAttribute("boardVO", boardVO);
	model.addAttribute("brdMstrVO", master);
	model.addAttribute("paginationInfo", paginationInfo);
	
	// khyoon 2011.11.29
	if(user != null) {
		String permission = getWritePermission(boardVO.getBbsId(), user);
		model.addAttribute("permission", permission);
		model.addAttribute("user", user);
	}
	//~khyoon
	
	// 게시판 속성에 따라 View 페이지 변경
	if(master.getBbsAttrbCode().equals("BBSA06")) {	// 뉴스레터
		return "egovframework/pdqm/admin/contents/newsletter/NewsletterList";		
	}
	else if(master.getBbsAttrbCode().equals("BBSA08")) {	// 뉴스레터 컨텐츠 관리
		
		return "egovframework/pdqm/admin/contents/newsletter/NewsletterContentMng";
	}
	else if(master.getBbsAttrbCode().equals("BBSA07")) {	// 동영상게시판
		// 동영상 게시판 분류코드를 목록화면에서 탭 메뉴로 사용
	    if(master.getNttClPosblAt().equals("Y")) {
			ComDefaultCodeVO cvo = new ComDefaultCodeVO();
			cvo.setCodeId(master.getNttClCodeId());
			List codeResult = cmmUseService.selectCmmCodeDetail(cvo);
			model.addAttribute("codeList", codeResult);
		}		
		
		return "egovframework/pdqm/common/bbs/VideoNoticeList";
	}
	else if(master.getCnWithListPosblAt().equals("Y")) {
		boardVO.setPlusCount(true);	// 조회수 증가
		//System.out.println("selectBoardArticles:boardVO.getNttId()"+boardVO.getNttId());
		BoardVO contentVO = bbsMngService.selectBoardArticle(boardVO);
		model.addAttribute("contentVO",contentVO);
		
		if(master.getBbsId().equals("BBSMSTR_000000000161"))	// 우수사례공유
			return "egovframework/pdqm/common/bbs/NoticeListWithContent";
		else
			return "egovframework/pdqm/common/bbs/ContentWithNoticeList";
	}
	else if(master.getDetailListPosblAt().equals("Y")) {
		
		return "egovframework/pdqm/common/bbs/DetailNoticeList";
	}
	else {
		String act = request.getParameter("act");
		if(act != null) {
			// 메인화면-공지사항 요약
			if(act.equals("summary")) {
				return "egovframework/pdqm/common/bbs/NoticeSummary";
			}
		}
	}

	//return "egovframework/com/cop/bbs/EgovNoticeList";
	return "egovframework/pdqm/common/bbs/NoticeList";
    }

    /**
     * khyoon 2011.11.02 이전글/다음글 게시물 제목과 링크정보를 조회한다.
     * 
     * @param model
     * @return
     * @throws Exception
     */    
    @RequestMapping("/cop/bbs/selectNttInfo.do")
    public String selectNttSubject(Map<String, Object> commandMap, ModelMap model) throws Exception {
    	
    	String bbsId = (String)commandMap.get("param_bbsId");
    	//String nttId = (String)commandMap.get("param_nttId");
    	String nttNo = (String)commandMap.get("param_nttNo");
    	String sortOrdr = (String)commandMap.get("param_sortOrdr");
    	String act = (String)commandMap.get("param_act");
    	
    	BoardVO param = new BoardVO();
    	param.setBbsId(bbsId);
    	//param.setNttId(Integer.parseInt(nttId));
    	param.setNttNo(Long.parseLong(nttNo));
    	param.setSortOrdr(Long.parseLong(sortOrdr));
    	param.setNttClCodeId("0");
    	param.setAct(act);
    	
    	BoardVO vo = bbsMngService.selectBoardArticle(param);
    	
    	if(vo.getNttId() == 0) {
    		if(act.equals("PREVIOUS"))
    			vo.setNttSj("이전글이 없습니다");
    		else if(act.equals("NEXT"))
    			vo.setNttSj("다음글이 없습니다");
    	}

    	model.addAttribute("result", vo);    	
    	
    	return "egovframework/pdqm/common/bbs/NoticeInfo";
    }
    
    /**
     * 게시판에 대한 수정(삭제/수정)권한을 조회한다.
     * khyoon 2011.11.29
     * @param user
     * @return
     * @throws 
     */    
    private String getModifyPermission(BoardVO board, LoginVO user) {
    	if(board.getFrstRegisterId().equals(user.getUniqId())) {
    		return "M";
    	}
    	
    	return "R";
    }
   
    /**
     * 게시물에 대한 상세 정보를 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/selectBoardArticle.do")
    public String selectBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	
	// 조회수 증가 여부 지정
	boardVO.setPlusCount(true);
	
	//---------------------------------
	// 2009.06.29 : 2단계 기능 추가
	//---------------------------------
	if (!boardVO.getSubPageIndex().equals("")) {
	    boardVO.setPlusCount(false);
	}
	////-------------------------------

	//boardVO.setLastUpdusrId(user.getUniqId());
	BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

	model.addAttribute("result", vo);
	//CommandMap의 형태로 개선????

	//model.addAttribute("sessionUniqId", user.getUniqId());

	//----------------------------
	// template 처리 (기본 BBS template 지정  포함)
	//----------------------------
	BoardMasterVO master = new BoardMasterVO();
	
	master.setBbsId(boardVO.getBbsId());
	//master.setUniqId(user.getUniqId());
	
	BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);

	if (masterVo.getTmplatCours() == null || masterVo.getTmplatCours().equals("")) {
	    masterVo.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", masterVo);
	// khyoon 2011.11.29
	if(user != null) {
		String permission = getModifyPermission(vo, user);
		model.addAttribute("permission", permission);
		model.addAttribute("user", user);
	}
	//~khyoon	
	////-----------------------------
	
	//----------------------------
	// 2009.06.29 : 2단계 기능 추가
	// 2011.07.01 : 댓글, 스크랩, 만족도 조사 기능의 종속성 제거
	//----------------------------
	if (bbsCommentService != null){
		if (bbsCommentService.canUseComment(boardVO.getBbsId())) {
		    model.addAttribute("useComment", "true");
		}
	}
	if (bbsSatisfactionService != null) {
		if (bbsSatisfactionService.canUseSatisfaction(boardVO.getBbsId())) {
		    model.addAttribute("useSatisfaction", "true");
		}
	}
	if (bbsScrapService != null ) {
		if (bbsScrapService.canUseScrap()) {
		    model.addAttribute("useScrap", "true");
		}
	}
	////--------------------------
	
	if(masterVo.getBbsAttrbCode().equals("BBSA06")) {	// 뉴스레터
		long targetCnt = bbsMngService.selectNewsletterTargetListCnt();
		model.addAttribute("newsletterTargetCnt", targetCnt);
		return "egovframework/pdqm/admin/contents/newsletter/NewsletterInqire";		
	}	
	
	//return "egovframework/com/cop/bbs/EgovNoticeInqire";
	return "egovframework/pdqm/common/bbs/NoticeInqire";
    }

    /**
     * 게시물 등록을 위한 등록페이지로 이동한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/addBoardArticle.do")
    public String addBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
    	
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	BoardMasterVO bdMstr = new BoardMasterVO();

	if (isAuthenticated) {
		
	    BoardMasterVO vo = new BoardMasterVO();
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId(user.getUniqId());

	    bdMstr = bbsAttrbService.selectBBSMasterInf(vo);
	    model.addAttribute("bdMstr", bdMstr);
	    
		// khyoon 게시물분류코드 리스트 설정 2011.10.28
	    if(bdMstr.getNttClPosblAt().equals("Y")) {
			ComDefaultCodeVO cvo = new ComDefaultCodeVO();
			cvo.setCodeId(bdMstr.getNttClCodeId());
			List codeResult = cmmUseService.selectCmmCodeDetail(cvo);
			model.addAttribute("codeList", codeResult);
		}

	    
		// khyoon 바인딩 오류 처리용 2011.10.31
		//BoardVO board = new BoardVO();
		//board.setNewsletterForm("general");	// Default : 일반서식
		model.addAttribute("board", boardVO);
		//~khyoon
		model.addAttribute("brdMstrVO", bdMstr);


		if(bdMstr.getBbsAttrbCode().equals("BBSA06")) {	// 뉴스레터
			return "egovframework/pdqm/admin/contents/newsletter/NewsletterRegist";		
		}
	}
	
	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	//if (bdMstr.getTmplatCours() == null || bdMstr.getTmplatCours().equals("")) {
	//    bdMstr.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	//}

	

	////-----------------------------
	

	//return "egovframework/com/cop/bbs/EgovNoticeRegist";
	return "egovframework/pdqm/common/bbs/NoticeRegist";
    }
    
    
    /**
     * 게시물을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/insertBoardArticle.do")
    public String insertBoardArticle(final MultipartHttpServletRequest multiRequest, 
    								@ModelAttribute("searchVO") BoardVO boardVO,
    								@ModelAttribute("bdMstr") BoardMaster bdMstr, 
    								@ModelAttribute("board") Board board, 
    								BindingResult bindingResult, 
    								SessionStatus status,
    								ModelMap model) throws Exception {

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

    /* khyoon 2011.11.02 Server-Side Validation 제거
     * 					>  제거이유 : 게시물 등록 페이지를 범용으로 사용으로 하기 위하여 
	beanValidator.validate(board, bindingResult);
	
	if (bindingResult.hasErrors()) {

	    BoardMasterVO master = new BoardMasterVO();
	    BoardMasterVO vo = new BoardMasterVO();
	    
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId(user.getUniqId());

	    master = bbsAttrbService.selectBBSMasterInf(vo);

	    model.addAttribute("bdMstr", master);

	    //----------------------------
	    // 기본 BBS template 지정 
	    //----------------------------
	    if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
		master.setTmplatCours("css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	    }

	    model.addAttribute("brdMstrVO", master);
	    ////-----------------------------

	    return "egovframework/com/cop/bbs/EgovNoticeRegist";
	}
	*/
    
	if (isAuthenticated) {
		
	    // khyoon 뉴스게시판의 게시글이 아닌 경우 초기화 2011.11.01
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA04")) {
	    	if(!bdMstr.getBbsAttrbCode().equals("BBSA07")) {	// 동영상 게시판이 아닐경우만
	    		board.setSourceUrl("");
	    	}
		    board.setNewsDay("");
		    board.setPressNm("");
	    }
	    
	    // khyoon 전문가칼럼의 게시글이 아닌 경우 초기화 2011.11.15
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA05")) {
	    	board.setPubDate("");
	    	board.setBlogUrl("");
	    	board.setTwitterUrl("");
	    	board.setFacebookUrl("");
	    }
	    else {	
	    	board.setPubDate(board.getPubYear()+board.getPubMonth());
	    }
	    //~khyoon		
		
		
	    List<FileVO> result = null;
	    String atchFileId = "";
	    
	    final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    if (!files.isEmpty()) {
			result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
			atchFileId = fileMngService.insertFileInfs(result);
			if(atchFileId != null)
				board.setAtchFileId(atchFileId);
	    }

	    
	    board.setFrstRegisterId(user.getUniqId());
	    board.setBbsId(board.getBbsId());
	    
	    //board.setNtcrNm("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
	    board.setPassword("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
	    
	    board.setNtcrId(user.getId()); //게시물 통계 집계를 위해 등록자 ID 저장
	    board.setNtcrNm(user.getName()); //게시물 통계 집계를 위해 등록자 Name 저장
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    bbsMngService.insertBoardArticle(board);

	    // khyoon 2011.11.24 뉴스레터는 등록 후 내용보기로 이동
		if(bdMstr.getBbsAttrbCode().equals("BBSA06")) {	// 뉴스레터
			return "forward:/cop/bbs/selectBoardArticle.do";		
		}	    
		//~khyoon
	}

	//status.setComplete();
	// khyoon 게시물 리스트 호출 Action 파라미터 추가 2011.11.02
	//return "forward:/cop/bbs/selectBoardList.do";
	return "forward:/cop/bbs/selectBoardList.do?action=insertBoardArticle";
	//~khyoon
    }

    /**
     * 게시물에 대한 답변 등록을 위한 등록페이지로 이동한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/addReplyBoardArticle.do")
    public String addReplyBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	BoardMasterVO master = new BoardMasterVO();
	BoardMasterVO vo = new BoardMasterVO();
	
	vo.setBbsId(boardVO.getBbsId());
	vo.setUniqId(user.getUniqId());

	master = bbsAttrbService.selectBBSMasterInf(vo);
	
	model.addAttribute("bdMstr", master);
	model.addAttribute("result", boardVO);

	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
	    master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", master);
	////-----------------------------

	// khyoon 2011.11.10
	//return "egovframework/com/cop/bbs/EgovNoticeReply";
	return "egovframework/pdqm/common/bbs/NoticeReply";
	//~khyoon
    }

    /**
     * 게시물에 대한 답변을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/replyBoardArticle.do")
    public String replyBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, ModelMap model,
	    SessionStatus status) throws Exception {

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	/* khyoon 2011.11.10 Server-Validation 제거
	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {
	    BoardMasterVO master = new BoardMasterVO();
	    BoardMasterVO vo = new BoardMasterVO();
	    
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId(user.getUniqId());

	    master = bbsAttrbService.selectBBSMasterInf(vo);
	    
	    model.addAttribute("bdMstr", master);
	    model.addAttribute("result", boardVO);

	    //----------------------------
	    // 기본 BBS template 지정 
	    //----------------------------
	    if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
		master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	    }

	    model.addAttribute("brdMstrVO", master);
	    ////-----------------------------

	    return "egovframework/com/cop/bbs/EgovNoticeReply";
	}
	*/

	if (isAuthenticated) {

	    // khyoon 뉴스게시판의 게시글이 아닌경우만 초기화 2011.11.01
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA04")) {
		    board.setSourceUrl("");
		    board.setNewsDay("");
		    board.setPressNm("");
	    }
	    // khyoon 전문가칼럼의 게시글이 아닌 경우 초기화 2011.11.15
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA05")) {
	    	board.setPubDate("");
	    	board.setBlogUrl("");
	    	board.setTwitterUrl("");
	    	board.setFacebookUrl("");
	    }
	    else {	
	    	board.setPubDate(board.getPubYear()+board.getPubMonth());
	    }
	    //~khyoon		

		
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    String atchFileId = "";
	    
	    if (!files.isEmpty()) {
			List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
			atchFileId = fileMngService.insertFileInfs(result);
			if(atchFileId != null)
				board.setAtchFileId(atchFileId);		
	    }

	    //board.setAtchFileId(atchFileId);
	    board.setReplyAt("Y");
	    board.setFrstRegisterId(user.getUniqId());
	    board.setBbsId(board.getBbsId());
	    board.setParnts(Long.toString(boardVO.getNttId()));
	    board.setSortOrdr(boardVO.getSortOrdr());
	    board.setReplyLc(Integer.toString(Integer.parseInt(boardVO.getReplyLc()) + 1));
	    
	    //board.setNtcrNm("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
	    board.setPassword("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)

	    // khyoon 2011.11.11
	    board.setNtcrId(user.getId()); //게시물 통계 집계를 위해 등록자 ID 저장
	    board.setNtcrNm(user.getName()); //게시물 통계 집계를 위해 등록자 Name 저장
	    //~khyoon
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    bbsMngService.insertBoardArticle(board);
	}
	
	// khyoon 2011.11.10
	return "forward:/cop/bbs/selectBoardList.do";
	//return "forward:/cop/bbs/selectBoardList.do?action=insertBoardArticle";
	//~khyoon
    }

    /**
     * 게시물 수정을 위한 수정페이지로 이동한다.
     * 
     * @param boardVO
     * @param vo
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/forUpdateBoardArticle.do")
    public String selectBoardArticleForUpdt(@ModelAttribute("searchVO") BoardVO boardVO, 
    										@ModelAttribute("board") BoardVO vo, 
    										ModelMap model)	throws Exception {

	//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getNttId "+boardVO.getNttId());
	//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getBbsId "+boardVO.getBbsId());

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	boardVO.setFrstRegisterId(user.getUniqId());
	
	BoardMaster master = new BoardMaster();
	BoardMasterVO bmvo = new BoardMasterVO();
	BoardVO bdvo = new BoardVO();

	System.out.println(">>> searchVO() nttId = "+boardVO.getNttId());
	System.out.println(">>> board() nttId = "+vo.getNttId());

	
	vo.setBbsId(boardVO.getBbsId());
	
	master.setBbsId(boardVO.getBbsId());
	master.setUniqId(user.getUniqId());

	if (isAuthenticated) {
	    bmvo = bbsAttrbService.selectBBSMasterInf(master);
	    
	    bdvo = bbsMngService.selectBoardArticle(boardVO);
	    
		// khyoon 게시물분류코드 리스트 설정 2011.10.28
	    if(bmvo.getNttClPosblAt().equals("Y")) {
			ComDefaultCodeVO cvo = new ComDefaultCodeVO();
			cvo.setCodeId(bmvo.getNttClCodeId());
			List codeResult = cmmUseService.selectCmmCodeDetail(cvo);
			model.addAttribute("codeList", codeResult);
		}	    
	}

	model.addAttribute("result", bdvo);
	model.addAttribute("bdMstr", bmvo);
	
	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	if (bmvo.getTmplatCours() == null || bmvo.getTmplatCours().equals("")) {
	    bmvo.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", bmvo);
	////-----------------------------
	
	// khyoon 2011.11.24
	if(bmvo.getBbsAttrbCode().equals("BBSA06")) {	// 뉴스레터
		return "egovframework/pdqm/admin/contents/newsletter/NewsletterUpdt";		
	}	
	//~khyoon
	
	// khyoon 2011.11.09
	//return "egovframework/com/cop/bbs/EgovNoticeUpdt";
	return "egovframework/pdqm/common/bbs/NoticeUpdt";
	//~khyoon
    }

    /**
     * 게시물에 대한 내용을 수정한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/updateBoardArticle.do")
    public String updateBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, ModelMap model,
	    SessionStatus status) throws Exception {

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	String atchFileId = boardVO.getAtchFileId();

	/* khyoon Server-Validation 제거 2011.11.10
	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {

	    boardVO.setFrstRegisterId(user.getUniqId());
	    
	    BoardMaster master = new BoardMaster();
	    BoardMasterVO bmvo = new BoardMasterVO();
	    BoardVO bdvo = new BoardVO();
	    
	    master.setBbsId(boardVO.getBbsId());
	    master.setUniqId(user.getUniqId());

	    bmvo = bbsAttrbService.selectBBSMasterInf(master);
	    bdvo = bbsMngService.selectBoardArticle(boardVO);

	    model.addAttribute("result", bdvo);
	    model.addAttribute("bdMstr", bmvo);

	    // khyoon 2011.11.10
	    //return "egovframework/com/cop/bbs/EgovNoticeUpdt";
	    return "egovframework/pdqm/common/bbs/NoticeUpdt";
	    //~khyoon
	}
	*/
	
	/*
	boardVO.setFrstRegisterId(user.getUniqId());
	BoardMaster _bdMstr = new BoardMaster();
	BoardMasterVO bmvo = new BoardMasterVO();
	BoardVO bdvo = new BoardVO();
	vo.setBbsId(boardVO.getBbsId());
	_bdMstr.setBbsId(boardVO.getBbsId());
	_bdMstr.setUniqId(user.getUniqId());

	if (isAuthenticated) {
	    bmvo = bbsAttrbService.selectBBSMasterInf(_bdMstr);
	    bdvo = bbsMngService.selectBoardArticle(boardVO);
	}
	//*/

	if (isAuthenticated) {
	    final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    if (!files.isEmpty()) {
		if ("".equals(atchFileId)) {
		    List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0, atchFileId, "");
		    atchFileId = fileMngService.insertFileInfs(result);
		    if(atchFileId != null)
				board.setAtchFileId(atchFileId);
		} else {
		    FileVO fvo = new FileVO();
		    fvo.setAtchFileId(atchFileId);
		    int cnt = fileMngService.getMaxFileSN(fvo);
		    List<FileVO> _result = fileUtil.parseFileInf(files, "BBS_", cnt, atchFileId, "");
		    fileMngService.updateFileInfs(_result);
		}
	    }

	    board.setLastUpdusrId(user.getUniqId());
	    
	    board.setNtcrNm("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
	    board.setPassword("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    // khyoon 뉴스게시판의 게시글이 아닌 경우 초기화 2011.11.01
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA04")) {
	    	if(!bdMstr.getBbsAttrbCode().equals("BBSA07")) {	// 동영상 게시판이 아닐경우만
	    		board.setSourceUrl("");
	    	}
		    board.setNewsDay("");
		    board.setPressNm("");
	    }
	    
	    // khyoon 전문가칼럼의 게시글이 아닌 경우 초기화 2011.11.15
	    if(!bdMstr.getBbsAttrbCode().equals("BBSA05")) {
	    	board.setPubDate("");
	    	board.setBlogUrl("");
	    	board.setTwitterUrl("");
	    	board.setFacebookUrl("");
	    }
	    else {	
	    	board.setPubDate(board.getPubYear()+board.getPubMonth());
	    }
	    //~khyoon		
	    
	    bbsMngService.updateBoardArticle(board);
	    
	    // khyoon 2011.11.24
	    if(bdMstr.getBbsAttrbCode().equals("BBSA06")) {
	    	return "forward:/cop/bbs/selectBoardArticle.do?act=UPDATE";
	    }
	    //~khyoon
	}
	
	return "forward:/cop/bbs/selectBoardList.do";
    }

    /**
     * 게시물에 대한 내용을 삭제한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/deleteBoardArticle.do")
    public String deleteBoardArticle(	@ModelAttribute("searchVO") BoardVO boardVO, 
    									@ModelAttribute("board") Board board,
    									@ModelAttribute("bdMstr") BoardMaster bdMstr, 
    									ModelMap model) throws Exception {
	
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
	if (isAuthenticated) {

	    board.setLastUpdusrId(user.getUniqId());
	    
	    bbsMngService.deleteBoardArticle(board);
	    
	}

	return "forward:/cop/bbs/selectBoardList.do";
    }

    /**
     * 방명록에 대한 목록을 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/selectGuestList.do")
    public String selectGuestList(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	@SuppressWarnings("unused")
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
	// 수정 및 삭제 기능 제어를 위한 처리
	model.addAttribute("sessionUniqId", user.getUniqId());
	
	BoardVO vo = new BoardVO();

	vo.setBbsId(boardVO.getBbsId());
	vo.setBbsNm(boardVO.getBbsNm());
	vo.setNtcrNm(user.getName());
	vo.setNtcrId(user.getUniqId());

	BoardMasterVO masterVo = new BoardMasterVO();
	
	masterVo.setBbsId(vo.getBbsId());
	masterVo.setUniqId(user.getUniqId());
	
	BoardMasterVO mstrVO = bbsAttrbService.selectBBSMasterInf(masterVo);

	vo.setPageUnit(propertyService.getInt("pageUnit"));
	vo.setPageSize(propertyService.getInt("pageSize"));

	PaginationInfo paginationInfo = new PaginationInfo();
	paginationInfo.setCurrentPageNo(vo.getPageIndex());
	paginationInfo.setRecordCountPerPage(vo.getPageUnit());
	paginationInfo.setPageSize(vo.getPageSize());

	vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
	vo.setLastIndex(paginationInfo.getLastRecordIndex());
	vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	Map<String, Object> map = bbsMngService.selectGuestList(vo);
	int totCnt = Integer.parseInt((String)map.get("resultCnt"));
	
	paginationInfo.setTotalRecordCount(totCnt);

	model.addAttribute("resultList", map.get("resultList"));
	model.addAttribute("resultCnt", map.get("resultCnt"));
	model.addAttribute("brdMstrVO", mstrVO);
	model.addAttribute("boardVO", vo);
	model.addAttribute("paginationInfo", paginationInfo);

	return "egovframework/com/cop/bbs/EgovGuestList";
    }

    /**
     * 방명록 수정을 위한 특정 내용을 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/selectSingleGuestList.do")
    public String selectSingleGuestList(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("brdMstrVO") BoardMasterVO brdMstrVO,
	    ModelMap model) throws Exception {

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	@SuppressWarnings("unused")
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

	boardVO.setBbsId(boardVO.getBbsId());
	boardVO.setBbsNm(boardVO.getBbsNm());
	boardVO.setNtcrNm(user.getName());

	boardVO.setPageUnit(propertyService.getInt("pageUnit"));
	boardVO.setPageSize(propertyService.getInt("pageSize"));

	PaginationInfo paginationInfo = new PaginationInfo();
	paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
	paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
	paginationInfo.setPageSize(boardVO.getPageSize());

	boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
	boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	Map<String, Object> map = bbsMngService.selectGuestList(boardVO);
	int totCnt = Integer.parseInt((String)map.get("resultCnt"));
	
	paginationInfo.setTotalRecordCount(totCnt);

	model.addAttribute("resultList", map.get("resultList"));
	model.addAttribute("resultCnt", map.get("resultCnt"));
	model.addAttribute("boardVO", vo);
	model.addAttribute("brdMstrVO", brdMstrVO);
	model.addAttribute("paginationInfo", paginationInfo);

	return "egovframework/com/cop/bbs/EgovGuestList";
    }

    /**
     * 방명록에 대한 내용을 삭제한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/deleteGuestList.do")
    public String deleteGuestList(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") Board board, ModelMap model) throws Exception {
	@SuppressWarnings("unused")
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
	if (isAuthenticated) {
	    bbsMngService.deleteGuestList(boardVO);
	}
	
	return "forward:/cop/bbs/selectGuestList.do";
    }

    /**
     * 방명록 수정의 위한 목록을 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/updateGuestList.do")
    public String updateGuestList(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") Board board, BindingResult bindingResult,
	    ModelMap model) throws Exception {

	//BBST02, BBST04
	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {

	    BoardVO vo = new BoardVO();

	    vo.setBbsId(boardVO.getBbsId());
	    vo.setBbsNm(boardVO.getBbsNm());
	    vo.setNtcrNm(user.getName());
	    vo.setNtcrId(user.getUniqId());

	    BoardMasterVO masterVo = new BoardMasterVO();
	    
	    masterVo.setBbsId(vo.getBbsId());
	    masterVo.setUniqId(user.getUniqId());
	    
	    BoardMasterVO mstrVO = bbsAttrbService.selectBBSMasterInf(masterVo);

	    vo.setPageUnit(propertyService.getInt("pageUnit"));
	    vo.setPageSize(propertyService.getInt("pageSize"));

	    PaginationInfo paginationInfo = new PaginationInfo();
	    paginationInfo.setCurrentPageNo(vo.getPageIndex());
	    paginationInfo.setRecordCountPerPage(vo.getPageUnit());
	    paginationInfo.setPageSize(vo.getPageSize());

	    vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
	    vo.setLastIndex(paginationInfo.getLastRecordIndex());
	    vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	    Map<String, Object> map = bbsMngService.selectGuestList(vo);
	    int totCnt = Integer.parseInt((String)map.get("resultCnt"));

	    paginationInfo.setTotalRecordCount(totCnt);
	    
	    model.addAttribute("resultList", map.get("resultList"));
	    model.addAttribute("resultCnt", map.get("resultCnt"));
	    model.addAttribute("brdMstrVO", mstrVO);
	    model.addAttribute("boardVO", vo);
	    model.addAttribute("paginationInfo", paginationInfo);

	    return "egovframework/com/cop/bbs/EgovGuestList";
	}

	if (isAuthenticated) {
	    bbsMngService.updateBoardArticle(board);
	    boardVO.setNttCn("");
	    boardVO.setPassword("");
	    boardVO.setNtcrId("");
	    boardVO.setNttId(0);
	}

	return "forward:/cop/bbs/selectGuestList.do";
    }

    /**
     * 방명록에 대한 내용을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/insertGuestList.do")
    public String insertGuestList(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") Board board, BindingResult bindingResult,
	    ModelMap model) throws Exception {

	//그러니까 무인증은 아니고  - _- 익명으로 등록이 가능한 부분임
	// 무인증이 되려면 별도의 컨트롤러를 하나 더 등록해야함

	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();

	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {

	    BoardVO vo = new BoardVO();

	    vo.setBbsId(boardVO.getBbsId());
	    vo.setBbsNm(boardVO.getBbsNm());
	    vo.setNtcrNm(user.getName());
	    vo.setNtcrId(user.getUniqId());

	    BoardMasterVO masterVo = new BoardMasterVO();
	    
	    masterVo.setBbsId(vo.getBbsId());
	    masterVo.setUniqId(user.getUniqId());
	    
	    BoardMasterVO mstrVO = bbsAttrbService.selectBBSMasterInf(masterVo);

	    vo.setPageUnit(propertyService.getInt("pageUnit"));
	    vo.setPageSize(propertyService.getInt("pageSize"));

	    PaginationInfo paginationInfo = new PaginationInfo();
	    paginationInfo.setCurrentPageNo(vo.getPageIndex());
	    paginationInfo.setRecordCountPerPage(vo.getPageUnit());
	    paginationInfo.setPageSize(vo.getPageSize());

	    vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
	    vo.setLastIndex(paginationInfo.getLastRecordIndex());
	    vo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	    Map<String, Object> map = bbsMngService.selectGuestList(vo);
	    int totCnt = Integer.parseInt((String)map.get("resultCnt"));
	    
	    paginationInfo.setTotalRecordCount(totCnt);

	    model.addAttribute("resultList", map.get("resultList"));
	    model.addAttribute("resultCnt", map.get("resultCnt"));
	    model.addAttribute("brdMstrVO", mstrVO);
	    model.addAttribute("boardVO", vo);	    
	    model.addAttribute("paginationInfo", paginationInfo);

	    return "egovframework/com/cop/bbs/EgovGuestList";

	}

	if (isAuthenticated) {
	    board.setFrstRegisterId(user.getUniqId());
	    
	    bbsMngService.insertBoardArticle(board);

	    boardVO.setNttCn("");
	    boardVO.setPassword("");
	    boardVO.setNtcrId("");
	    boardVO.setNttId(0);
	}

	return "forward:/cop/bbs/selectGuestList.do";
    }
    
    /**
     * 익명게시물에 대한 목록을 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/selectBoardList.do")
    public String selectAnonymousBoardArticles(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	//log.debug(this.getClass().getName() + " user.getId() "+ user.getId());
	//log.debug(this.getClass().getName() + " user.getName() "+ user.getName());
	//log.debug(this.getClass().getName() + " user.getUniqId() "+ user.getUniqId());
	//log.debug(this.getClass().getName() + " user.getOrgnztId() "+ user.getOrgnztId());
	//log.debug(this.getClass().getName() + " user.getUserSe() "+ user.getUserSe());
	//log.debug(this.getClass().getName() + " user.getEmail() "+ user.getEmail());

	//String attrbFlag = "";

	boardVO.setBbsId(boardVO.getBbsId());
	boardVO.setBbsNm(boardVO.getBbsNm());

	BoardMasterVO vo = new BoardMasterVO();
	
	vo.setBbsId(boardVO.getBbsId());
	vo.setUniqId("ANONYMOUS");	// 익명
	
	BoardMasterVO master = bbsAttrbService.selectBBSMasterInf(vo);
	
	//-------------------------------
	// 익명게시판이 아니면.. 원래 게시판 URL로 forward
	//-------------------------------
	if (!master.getBbsTyCode().equals("BBST02")) {
	    return "forward:/cop/bbs/selectBoardList.do";
	}
	////-----------------------------

	boardVO.setPageUnit(propertyService.getInt("pageUnit"));
	boardVO.setPageSize(propertyService.getInt("pageSize"));

	PaginationInfo paginationInfo = new PaginationInfo();
	
	paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
	paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
	paginationInfo.setPageSize(boardVO.getPageSize());

	boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
	boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

	Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, vo.getBbsAttrbCode());
	int totCnt = Integer.parseInt((String)map.get("resultCnt"));
	
	paginationInfo.setTotalRecordCount(totCnt);

	//-------------------------------
	// 기본 BBS template 지정 
	//-------------------------------
	if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
	    master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}
	////-----------------------------

	model.addAttribute("resultList", map.get("resultList"));
	model.addAttribute("resultCnt", map.get("resultCnt"));
	model.addAttribute("boardVO", boardVO);
	model.addAttribute("brdMstrVO", master);
	model.addAttribute("paginationInfo", paginationInfo);
	
	model.addAttribute("anonymous", "true");

	return "egovframework/com/cop/bbs/EgovNoticeList";
    }
    
    /**
     * 익명게시물 등록을 위한 등록페이지로 이동한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/addBoardArticle.do")
    public String addAnonymousBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;

	BoardMasterVO bdMstr = new BoardMasterVO();

	if (isAuthenticated) {
	    BoardMasterVO vo = new BoardMasterVO();
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId("ANONYMOUS");

	    bdMstr = bbsAttrbService.selectBBSMasterInf(vo);
	    model.addAttribute("bdMstr", bdMstr);
	}
	
	//-------------------------------
	// 익명게시판이 아니면.. 원래 게시판 URL로 forward
	//-------------------------------
	if (!bdMstr.getBbsTyCode().equals("BBST02")) {
	    return "forward:/cop/bbs/addBoardArticle.do";
	}
	////-----------------------------

	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	if (bdMstr.getTmplatCours() == null || bdMstr.getTmplatCours().equals("")) {
	    bdMstr.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", bdMstr);
	////-----------------------------
	
	model.addAttribute("anonymous", "true");

	return "egovframework/com/cop/bbs/EgovNoticeRegist";
    }
    
    /**
     * 익명게시물을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/anonymous/insertBoardArticle.do")
    public String insertAnonymousBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, SessionStatus status,
	    ModelMap model) throws Exception {

	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;

	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {
	    
	    BoardMasterVO master = new BoardMasterVO();
	    BoardMasterVO vo = new BoardMasterVO();
	    
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId("ANONYMOUS");

	    master = bbsAttrbService.selectBBSMasterInf(vo);
	    
	    model.addAttribute("bdMstr", master);
	    
	    //-------------------------------
	    // 익명게시판이 아니면.. 원래 게시판 URL로 forward
	    //-------------------------------
	    if (!bdMstr.getBbsTyCode().equals("BBST02")) {
		return "forward:/cop/bbs/insertBoardArticle.do";
	    }
	    ////-----------------------------

	    //----------------------------
	    // 기본 BBS template 지정 
	    //----------------------------
	    if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
		master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	    }

	    model.addAttribute("brdMstrVO", master);
	    ////-----------------------------
	    
	    model.addAttribute("anonymous", "true");

	    return "egovframework/com/cop/bbs/EgovNoticeRegist";
	}
	
	if (isAuthenticated) {
	    List<FileVO> result = null;
	    String atchFileId = "";
	    
	    final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    if (!files.isEmpty()) {
		result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
		atchFileId = fileMngService.insertFileInfs(result);
	    }
	    board.setAtchFileId(atchFileId);
	    board.setFrstRegisterId("ANONYMOUS");
	    board.setBbsId(board.getBbsId());
	    
	    // 익명게시판 관련
	    board.setNtcrNm(board.getNtcrNm());
	    board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    bbsMngService.insertBoardArticle(board);
	}

	//status.setComplete();
	return "forward:/cop/bbs/anonymous/selectBoardList.do";
    }
    
    /**
     * 익명게시물에 대한 상세 정보를 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/selectBoardArticle.do")
    public String selectAnonymousBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	// 조회수 증가 여부 지정
	boardVO.setPlusCount(true);
	
	//---------------------------------
	// 2009.06.29 : 2단계 기능 추가
	//---------------------------------
	if (!boardVO.getSubPageIndex().equals("")) {
	    boardVO.setPlusCount(false);
	}
	////-------------------------------

	boardVO.setLastUpdusrId("ANONYMOUS");
	BoardVO vo = bbsMngService.selectBoardArticle(boardVO);

	model.addAttribute("result", vo);
	//CommandMap의 형태로 개선????

	model.addAttribute("sessionUniqId", "ANONYMOUS");

	//----------------------------
	// template 처리 (기본 BBS template 지정  포함)
	//----------------------------
	BoardMasterVO master = new BoardMasterVO();
	
	master.setBbsId(boardVO.getBbsId());
	master.setUniqId("ANONYMOUS");
	
	BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);
	
	//-------------------------------
	// 익명게시판이 아니면.. 원래 게시판 URL로 forward
	//-------------------------------
	if (!masterVo.getBbsTyCode().equals("BBST02")) {
	    return "forward:/cop/bbs/selectBoardArticle.do";
	}
	////-----------------------------

	if (masterVo.getTmplatCours() == null || masterVo.getTmplatCours().equals("")) {
	    masterVo.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", masterVo);
	////-----------------------------
	
	model.addAttribute("anonymous", "true");
	
	//----------------------------
	// 2009.06.29 : 2단계 기능 추가
	// 2011.07.01 : 댓글, 스크랩, 만족도 조사 기능의 종속성 제거
	//----------------------------
	if (bbsCommentService != null){
		if (bbsCommentService.canUseComment(boardVO.getBbsId())) {
		    model.addAttribute("useComment", "true");
		}
	}
	if (bbsSatisfactionService != null){		
		if (bbsSatisfactionService.canUseSatisfaction(boardVO.getBbsId())) {
		    model.addAttribute("useSatisfaction", "true");
		}
	}
	if (bbsScrapService != null){
		if (bbsScrapService.canUseScrap()) {
		    model.addAttribute("useScrap", "true");
		}
	}
	////--------------------------

	return "egovframework/com/cop/bbs/EgovNoticeInqire";
    }
    
    /**
     * 익명게시물에 대한 내용을 삭제한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/deleteBoardArticle.do")
    public String deleteAnonymousBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") Board board,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, ModelMap model) throws Exception {
	
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;
	
	//--------------------------------------------------
	// 마스터 정보 얻기
	//--------------------------------------------------
	BoardMasterVO master = new BoardMasterVO();
	
	master.setBbsId(boardVO.getBbsId());
	master.setUniqId("ANONYMOUS");
	
	BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);
	
	//-------------------------------
	// 익명게시판이 아니면.. 원래 게시판 URL로 forward
	//-------------------------------
	if (!masterVo.getBbsTyCode().equals("BBST02")) {
	    return "forward:/cop/bbs/deleteBoardArticle.do";
	}
	////-----------------------------
	
	//-------------------------------
	// 패스워드 비교
	//-------------------------------
	String dbpassword = bbsMngService.getPasswordInf(board);
	String enpassword = EgovFileScrty.encryptPassword(board.getPassword());
	
	if (!dbpassword.equals(enpassword)) {
	    
	    model.addAttribute("msg", egovMessageSource.getMessage("cop.password.not.same.msg"));
	    
	    return "forward:/cop/bbs/anonymous/selectBoardArticle.do";
	}
	////-----------------------------

	if (isAuthenticated) {
	    board.setLastUpdusrId("ANONYMOUS");
	    
	    bbsMngService.deleteBoardArticle(board);
	}

	return "forward:/cop/bbs/anonymous/selectBoardList.do";
    }
    
    /**
     * 익명게시물 수정을 위한 수정페이지로 이동한다.
     * 
     * @param boardVO
     * @param vo
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/forUpdateBoardArticle.do")
    public String selectAnonymousBoardArticleForUpdt(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") BoardVO vo, ModelMap model)
	    throws Exception {

	//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getNttId "+boardVO.getNttId());
	//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getBbsId "+boardVO.getBbsId());

	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;

	boardVO.setFrstRegisterId("ANONYMOUS");
	
	BoardMaster master = new BoardMaster();
	BoardMasterVO bmvo = new BoardMasterVO();
	BoardVO bdvo = new BoardVO();
	
	vo.setBbsId(boardVO.getBbsId());
	
	master.setBbsId(boardVO.getBbsId());
	master.setUniqId("ANONYMOUS");

	if (isAuthenticated) {
	    bmvo = bbsAttrbService.selectBBSMasterInf(master);

	    //-------------------------------
	    // 익명게시판이 아니면.. 원래 게시판 URL로 forward
	    //-------------------------------
	    if (!bmvo.getBbsTyCode().equals("BBST02")) {
		return "forward:/cop/bbs/forUpdateBoardArticle.do";
	    }
	    ////-----------------------------

	    //-------------------------------
	    // 패스워드 비교
	    //-------------------------------
	    String dbpassword = bbsMngService.getPasswordInf(boardVO);
	    String enpassword = EgovFileScrty.encryptPassword(boardVO.getPassword());

	    if (!dbpassword.equals(enpassword)) {

		model.addAttribute("msg", egovMessageSource.getMessage("cop.password.not.same.msg"));

		return "forward:/cop/bbs/anonymous/selectBoardArticle.do";
	    }
	    ////-----------------------------

	    bdvo = bbsMngService.selectBoardArticle(boardVO);
	}

	model.addAttribute("result", bdvo);
	model.addAttribute("bdMstr", bmvo);

	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	if (bmvo.getTmplatCours() == null || bmvo.getTmplatCours().equals("")) {
	    bmvo.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", bmvo);
	////-----------------------------
	
	model.addAttribute("anonymous", "true");
	
	return "egovframework/com/cop/bbs/EgovNoticeUpdt";
    }
    
    /**
     * 익명게시물에 대한 내용을 수정한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/anonymous/updateBoardArticle.do")
    public String updateAnonymousBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, ModelMap model,
	    SessionStatus status) throws Exception {

	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;

	String atchFileId = boardVO.getAtchFileId();

	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {

	    boardVO.setFrstRegisterId("ANONYMOUS");
	    
	    BoardMaster master = new BoardMaster();
	    BoardMasterVO bmvo = new BoardMasterVO();
	    BoardVO bdvo = new BoardVO();
	    
	    master.setBbsId(boardVO.getBbsId());
	    master.setUniqId("ANONYMOUS");

	    bmvo = bbsAttrbService.selectBBSMasterInf(master);
	    
	    //-------------------------------
	    // 익명게시판이 아니면.. 원래 게시판 URL로 forward
	    //-------------------------------
	    if (!bdMstr.getBbsTyCode().equals("BBST02")) {
		return "forward:/cop/bbs/updateBoardArticle.do";
	    }
	    ////-----------------------------
	    
	    bdvo = bbsMngService.selectBoardArticle(boardVO);

	    model.addAttribute("result", bdvo);
	    model.addAttribute("bdMstr", bmvo);
	    
	    model.addAttribute("anonymous", "true");

	    return "egovframework/com/cop/bbs/EgovNoticeUpdt";
	}

	if (isAuthenticated) {
	    final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    if (!files.isEmpty()) {
		if ("".equals(atchFileId)) {
		    List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0, atchFileId, "");
		    atchFileId = fileMngService.insertFileInfs(result);
		    board.setAtchFileId(atchFileId);
		} else {
		    FileVO fvo = new FileVO();
		    fvo.setAtchFileId(atchFileId);
		    int cnt = fileMngService.getMaxFileSN(fvo);
		    List<FileVO> _result = fileUtil.parseFileInf(files, "BBS_", cnt, atchFileId, "");
		    fileMngService.updateFileInfs(_result);
		}
	    }

	    board.setLastUpdusrId("ANONYMOUS");
	    
	    // 익명게시판 관련
	    board.setNtcrNm(board.getNtcrNm());
	    board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    bbsMngService.updateBoardArticle(board);
	}
	
	return "forward:/cop/bbs/anonymous/selectBoardList.do";
    }
    
    /**
     * 익명게시물에 대한 답변 등록을 위한 등록페이지로 이동한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/anonymous/addReplyBoardArticle.do")
    public String addAnonymousReplyBoardArticle(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	BoardMasterVO master = new BoardMasterVO();
	BoardMasterVO vo = new BoardMasterVO();
	
	vo.setBbsId(boardVO.getBbsId());
	vo.setUniqId("ANONYMOUS");

	master = bbsAttrbService.selectBBSMasterInf(vo);
	
	//-------------------------------
	// 익명게시판이 아니면.. 원래 게시판 URL로 forward
	//-------------------------------
	if (!master.getBbsTyCode().equals("BBST02")) {
	    return "forward:/cop/bbs/addReplyBoardArticle.do";
	}
	////-----------------------------
	
	model.addAttribute("bdMstr", master);
	model.addAttribute("result", boardVO);

	//----------------------------
	// 기본 BBS template 지정 
	//----------------------------
	if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
	    master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	}

	model.addAttribute("brdMstrVO", master);
	////-----------------------------
	
	model.addAttribute("anonymous", "true");

	return "egovframework/com/cop/bbs/EgovNoticeReply";
    }
    
    /**
     * 익명게시물에 대한 답변을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/cop/bbs/anonymous/replyBoardArticle.do")
    public String replyAnonymousBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, ModelMap model,
	    SessionStatus status) throws Exception {

	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	//Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	Boolean isAuthenticated = true;
	
	beanValidator.validate(board, bindingResult);
	if (bindingResult.hasErrors()) {
	    BoardMasterVO master = new BoardMasterVO();
	    BoardMasterVO vo = new BoardMasterVO();
	    
	    vo.setBbsId(boardVO.getBbsId());
	    vo.setUniqId("ANONYMOUS");

	    master = bbsAttrbService.selectBBSMasterInf(vo);
	    
		//-------------------------------
		// 익명게시판이 아니면.. 원래 게시판 URL로 forward
		//-------------------------------
		if (!master.getBbsTyCode().equals("BBST02")) {
		    return "forward:/cop/bbs/replyBoardArticle.do";
		}
		////-----------------------------
	    
	    model.addAttribute("bdMstr", master);
	    model.addAttribute("result", boardVO);

	    //----------------------------
	    // 기본 BBS template 지정 
	    //----------------------------
	    if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
		master.setTmplatCours("/css/egovframework/com/cop/tpl/egovBaseTemplate.css");
	    }

	    model.addAttribute("brdMstrVO", master);
	    ////-----------------------------
	    
	    model.addAttribute("anonymous", "true");

	    return "egovframework/com/cop/bbs/EgovNoticeReply";
	}

	if (isAuthenticated) {
	    final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    String atchFileId = "";

	    if (!files.isEmpty()) {
		List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
		atchFileId = fileMngService.insertFileInfs(result);
	    }

	    board.setAtchFileId(atchFileId);
	    board.setReplyAt("Y");
	    board.setFrstRegisterId("ANONYMOUS");
	    board.setBbsId(board.getBbsId());
	    board.setParnts(Long.toString(boardVO.getNttId()));
	    board.setSortOrdr(boardVO.getSortOrdr());
	    board.setReplyLc(Integer.toString(Integer.parseInt(boardVO.getReplyLc()) + 1));
	    
	    // 익명게시판 관련
	    board.setNtcrNm(board.getNtcrNm());
	    board.setPassword(EgovFileScrty.encryptPassword(board.getPassword()));
	    
	    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
	    
	    bbsMngService.insertBoardArticle(board);
	}
	
	return "forward:/cop/bbs/anonymous/selectBoardList.do";
    }
    
    /**
     * 템플릿에 대한 미리보기용 게시물 목록을 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cop/bbs/previewBoardList.do")
    public String previewBoardArticles(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();

	String template = boardVO.getSearchWrd();	// 템플릿 URL
	
	BoardMasterVO master = new BoardMasterVO();
	
	master.setBbsNm("미리보기 게시판");

	boardVO.setPageUnit(propertyService.getInt("pageUnit"));
	boardVO.setPageSize(propertyService.getInt("pageSize"));

	PaginationInfo paginationInfo = new PaginationInfo();
	
	paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
	paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
	paginationInfo.setPageSize(boardVO.getPageSize());

	boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
	boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
	BoardVO target = null;
	List<BoardVO> list = new ArrayList<BoardVO>();
	
	target = new BoardVO();
	target.setNttSj("게시판 기능 설명");
	target.setFrstRegisterId("ID");
	target.setFrstRegisterNm("관리자");
	target.setFrstRegisterPnttm("2009-01-01");
	target.setInqireCo(7);
	target.setParnts("0");
	target.setReplyAt("N");
	target.setReplyLc("0");
	target.setUseAt("Y");
	
	list.add(target);
	
	target = new BoardVO();
	target.setNttSj("게시판 부가 기능 설명");
	target.setFrstRegisterId("ID");
	target.setFrstRegisterNm("관리자");
	target.setFrstRegisterPnttm("2009-01-01");
	target.setInqireCo(7);
	target.setParnts("0");
	target.setReplyAt("N");
	target.setReplyLc("0");
	target.setUseAt("Y");
	
	list.add(target);
	
	boardVO.setSearchWrd("");

	int totCnt = list.size();
	
	paginationInfo.setTotalRecordCount(totCnt);

	master.setTmplatCours(template);
	
	model.addAttribute("resultList", list);
	model.addAttribute("resultCnt", Integer.toString(totCnt));
	model.addAttribute("boardVO", boardVO);
	model.addAttribute("brdMstrVO", master);
	model.addAttribute("paginationInfo", paginationInfo);
	
	model.addAttribute("preview", "true");

	return "egovframework/com/cop/bbs/EgovNoticeList";
    }
}
