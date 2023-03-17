package egovframework.pdqm.front.support.apply.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.front.support.apply.model.ApplyVO;

/**
 * 자원사업 수요조사  DAO 클래스를 정의한다.
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

@Repository("applyDAO")
public class ApplyDAO extends EgovComAbstractDAO {

	/**
	 * 사업신청 기간조회
	 * @param vo
	 * @return 조회한 글
	 * @exception Exception
	 */
	public ApplyVO selectApplyDate(ApplyVO vo) throws Exception {
		return (ApplyVO) selectByPk("applyDAO.selectApplyDate",vo);
	}
	
	/**
	 * 사업신청 관리  등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertPdqmApply(ApplyVO  vo){
		insert("applyDAO.insertPdqmApply", vo);
	}
	
}
