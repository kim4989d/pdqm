package egovframework.pdqm.front.support.apply.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.front.support.apply.model.ApplyVO;
import egovframework.pdqm.front.support.apply.service.ApplyService;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 자원사업 수요조사   ServiceImpl 클래스를 정의한다.
 * @author 공통서비스 개발팀 이문준
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이문준          최초 생성
 *
 * </pre>
 */

@Service("applyService")
public class ApplyServiceImpl extends AbstractServiceImpl implements ApplyService {
    
	@Resource(name="applyDAO")
    private ApplyDAO applyDAO;


    /**
	 * 사업신청 기간조회
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public ApplyVO selectApplyDate(ApplyVO vo) throws Exception {
    	return applyDAO.selectApplyDate(vo);
      
    }
   
	/**
	 * 사업신청  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertPdqmApply(ApplyVO vo) throws Exception {
		applyDAO.insertPdqmApply(vo);
	}
	
}
