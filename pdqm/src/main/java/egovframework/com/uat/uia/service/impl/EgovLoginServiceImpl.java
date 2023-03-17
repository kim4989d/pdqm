package egovframework.com.uat.uia.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cop.ems.service.EgovSndngMailRegistService;
import egovframework.com.cop.ems.service.SndngMailVO;
import egovframework.com.uat.uia.service.EgovLoginService;
import egovframework.com.uss.umt.service.MberManageVO;
import egovframework.com.utl.fcc.service.EgovNumberUtil;
import egovframework.com.utl.fcc.service.EgovStringUtil;
import egovframework.com.utl.sim.service.EgovFileScrty;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 일반 로그인, 인증서 로그인을 처리하는 비즈니스 구현 클래스
 * @author 공통서비스 개발팀 박지욱
 * @since 2009.03.06
 * @version 1.0
 * @see
 *  
 * <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.06  박지욱          최초 생성 
 *  2011.08.26  서준식          EsntlId를 이용한 로그인 추가
 *  </pre>
 */
@Service("loginService")
public class EgovLoginServiceImpl extends AbstractServiceImpl implements
        EgovLoginService {

    @Resource(name="loginDAO")
    private LoginDAO loginDAO;
    
    /** EgovSndngMailRegistService */
	@Resource(name = "sndngMailRegistService")
    private EgovSndngMailRegistService sndngMailRegistService;
	
	
	
	/**
     * 2011.08.26
	 * EsntlId를 이용한 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    public LoginVO actionLoginByEsntlId(LoginVO vo) throws Exception {
    	
    	
    	LoginVO loginVO = loginDAO.actionLoginByEsntlId(vo);
    	
    	// 3. 결과를 리턴한다.
    	if (loginVO != null && !loginVO.getId().equals("") && !loginVO.getPassword().equals("")) {
    		return loginVO;
    	} else {
    		loginVO = new LoginVO();
    	}
    	
    	return loginVO;
    }
	
    
    /**
	 * 일반 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    public LoginVO actionLogin(LoginVO vo) throws Exception {
    	
    	// 1. 입력한 비밀번호를 암호화한다.
    	String enpassword = EgovFileScrty.encryptPassword(vo.getPassword());
    	vo.setPassword(enpassword);
    	
    	// 2. 아이디와 암호화된 비밀번호가 DB와 일치하는지 확인한다.
    	LoginVO loginVO = loginDAO.actionLogin(vo);
    	
    	// 3. 결과를 리턴한다.
    	if (loginVO != null && !loginVO.getId().equals("") && !loginVO.getPassword().equals("")) {
    		// 최근접속일 업데이트
    		loginDAO.updateAccessDe(vo);
    		return loginVO;
    	} else {
    		loginVO = new LoginVO();
    	}
    	
    	return loginVO;
    }
    
    /**
	 * 인증서 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    public LoginVO actionCrtfctLogin(LoginVO vo) throws Exception {
    	
    	// 1. DN값으로 ID, PW를 조회한다.
    	LoginVO loginVO = loginDAO.actionCrtfctLogin(vo);
    	
    	// 3. 결과를 리턴한다.
    	if (loginVO != null && !loginVO.getId().equals("") && !loginVO.getPassword().equals("")) {
    		return loginVO;
    	} else {
    		loginVO = new LoginVO();
    	}
    	
    	return loginVO;
    }
    
    /**
	 * 아이디를 찾는다.
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    public LoginVO searchId(LoginVO vo) throws Exception {

    	// 1. 이름, 이메일주소가 DB와 일치하는 사용자 ID를 조회한다.
    	LoginVO loginVO = loginDAO.searchId(vo);
    	
    	// 2. 결과를 리턴한다.
    	if (loginVO != null && !loginVO.getId().equals("")) {
    		return loginVO;
    	} else {
    		loginVO = new LoginVO();
    	}
    	
    	return loginVO;
    }
    
    /**
	 * 비밀번호를 찾는다.
	 * @param vo LoginVO
	 * @return boolean
	 * @exception Exception
	 */
    public boolean searchPassword(LoginVO vo) throws Exception {
    	
    	boolean result = true;
    	
    	// 1. 아이디, 이름, 이메일주소, 비밀번호 힌트, 비밀번호 정답이 DB와 일치하는 사용자 Password를 조회한다.
    	LoginVO loginVO = loginDAO.searchPassword(vo);
    	if (loginVO == null || loginVO.getPassword() == null || loginVO.getPassword().equals("")) {
    		return false;
    	}
    	
    	// 2. 임시 비밀번호를 생성한다.(영+영+숫+영+영+숫=6자리)
    	String newpassword = "";
    	for (int i = 1; i <= 6; i++) {
    		// 영자
    		if (i % 3 != 0) {
    			newpassword += EgovStringUtil.getRandomStr('a', 'z');
    		// 숫자
    		} else {
    			newpassword += EgovNumberUtil.getRandomNum(0, 9);
    		}
    	}
    	
    	// 3. 임시 비밀번호를 암호화하여 DB에 저장한다.
    	LoginVO pwVO = new LoginVO();
    	String enpassword = EgovFileScrty.encryptPassword(newpassword);
    	pwVO.setId(vo.getId());
    	pwVO.setPassword(enpassword);
    	pwVO.setUserSe(vo.getUserSe());
    	loginDAO.updatePassword(pwVO);
    	
    	// 4. 임시 비밀번호를 이메일 발송한다.(메일연동솔루션 활용)
    	SndngMailVO sndngMailVO = new SndngMailVO();
    	sndngMailVO.setDsptchPerson("webmaster");
    	sndngMailVO.setRecptnPerson(vo.getEmail());
    	sndngMailVO.setSj("[공공정보 품질관리 지원센터] 임시 비밀번호를 발송했습니다.");
    	sndngMailVO.setEmailCn("고객님의 임시 비밀번호는 " + newpassword + " 입니다.");
    	sndngMailVO.setAtchFileId("");
    	
    	result = sndngMailRegistService.insertSndngMailPassword(sndngMailVO);
    	
    	return result;
    }
    
    /**
	 * 인증번호 발송
	 * @param vo LoginVO
	 * @return boolean
	 * @exception Exception
	 */
    public boolean certiNumber(MberManageVO mberManageVO) throws Exception {
    	
    	boolean result = true;
    	
    	// 인증번호를 생성한다.(영+영+숫+영+영+숫=6자리)
    	String certiNumber = "";
    	for (int i = 1; i <= 6; i++) {
    		// 영자
    		if (i % 3 != 0) {
    			certiNumber += EgovStringUtil.getRandomStr('a', 'z');
    		// 숫자
    		} else {
    			certiNumber += EgovNumberUtil.getRandomNum(0, 9);
    		}
    	}
    	
    	mberManageVO.setCertiNumber(certiNumber);
    	
    	// 4. 임시 비밀번호를 이메일 발송한다.(메일연동솔루션 활용)
    	SndngMailVO sndngMailVO = new SndngMailVO();
    	sndngMailVO.setDsptchPerson("webmaster");
    	sndngMailVO.setRecptnPerson(mberManageVO.getMberEmailAdres());
    	sndngMailVO.setSj("[공공정보 품질관리 지원센터] 본인인증 메일입니다.");
    	sndngMailVO.setEmailCn("아래의 인증번호를 입력하시면 본인인증이 완료됩니다.<br> " + certiNumber + "<br>감사합니다.");
    	sndngMailVO.setAtchFileId("");
    	
    	result = sndngMailRegistService.insertSndngMailPassword(sndngMailVO);
    	
    	return result;
    }    
}
