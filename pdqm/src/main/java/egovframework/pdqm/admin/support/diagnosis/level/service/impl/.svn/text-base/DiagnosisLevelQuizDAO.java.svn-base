package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.sec.ram.service.AuthorManage;
import egovframework.com.sec.ram.service.AuthorManageVO;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.cmm.ComDefaultVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelQuiz;

/**
 * 자가진단 문항 관리  클래스를 정의한다.
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

@Repository("diagnosisLevelQuizDAO")
public class DiagnosisLevelQuizDAO extends EgovComAbstractDAO {

    /**
	 * 자가진단 문항 구성 타이틀 조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectQuizTitleList() throws Exception {
    	return list("diagnosisLevelQuizDAO.selectQuizTitleList","");

    }

    /**
	 * 자가진단  문항 구성  조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectQuizList() throws Exception {
    	return list("diagnosisLevelQuizDAO.selectQuizList","");

    }

	/**
	 * 자가진단  문항 등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertQuiz(DiagnosisLevelQuiz  vo){
		insert("diagnosisLevelQuizDAO.insertQuiz", vo);
	}
	
	/**
	 * 자가진단  문항 답변 등록 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void insertQuizAnswer(DiagnosisLevelQuiz  vo){
		insert("diagnosisLevelQuizDAO.insertQuizAnswer", vo);
	}
	
	/**
	 * 자가진단 문항  상세 조회한다.
	 * @param vo
	 *            - 조회할 정보가 담긴 SupportUserVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	public DiagnosisLevelQuiz updateQuizView(DiagnosisLevelQuiz vo) throws Exception {
		return (DiagnosisLevelQuiz) selectByPk("diagnosisLevelQuizDAO.updateQuizView", vo);
	}
	
	/**
	 * 자가진단  문항 수정 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void updateQuiz(DiagnosisLevelQuiz  vo){
		update("diagnosisLevelQuizDAO.updateQuiz", vo);
	}
	
	/**
	 * 자가진단  문항 답변 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteQuizAnswer(DiagnosisLevelQuiz  vo){
		update("diagnosisLevelQuizDAO.deleteQuizAnswer", vo);
	}
	
	/**
	 * 자가진단  문항 삭제 한다.
	 * @param vo DiagnosisMng 
	 * @exception Exception
	 */
	public void deleteQuiz(DiagnosisLevelQuiz  vo){
		update("diagnosisLevelQuizDAO.deleteQuiz", vo);
	}
	
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectQuizAnswer(DiagnosisLevelQuiz vo) throws Exception {
    	return list("diagnosisLevelQuizDAO.selectQuizAnswer",vo);

    }
    
	
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param diagnosisMngVO DiagnosisMngVO
	 * @return List
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List selectQuizAnswer2(DiagnosisLevelQuiz vo) throws Exception {
    	return list("diagnosisLevelQuizDAO.selectQuizAnswer2",vo);

    }
}
