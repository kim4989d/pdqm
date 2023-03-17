package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;
import egovframework.com.utl.fcc.service.EgovStringUtil;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelQuiz;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelQuizService;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 자가진단 문항 관리  ServiceImpl 클래스를 정의한다.
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

@Service("diagnosisLevelQuizService")
public class DiagnosisLevelQuizServiceImpl extends AbstractServiceImpl implements DiagnosisLevelQuizService {
    
	@Resource(name="diagnosisLevelQuizDAO")
    private DiagnosisLevelQuizDAO diagnosisLevelQuizDAO;

    /**
	 * 자가진단 문항 구성 타이틀 조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectQuizTitleList() throws Exception {
        return diagnosisLevelQuizDAO.selectQuizTitleList();
    }

    /** 
	 * 자가진단 문항구성  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectQuizList() throws Exception {
    	
        return diagnosisLevelQuizDAO.selectQuizList();
    }
    
	/**
	 * 자가진단  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertQuiz(DiagnosisLevelQuiz vo) throws Exception {
		String [] answers = vo.getAnswers().split(",");
		String [] answerStdrs = vo.getAnswerStdrs().split(",");
		String [] allots = vo.getAllots().split(",");

		//문항등록 
		diagnosisLevelQuizDAO.insertQuiz(vo);
		//문항 답변 등록
		for (int i=0; i<answers.length ; i++){ 
			vo.setAnswer(answers[i]);
			vo.setAnswerStdr((answerStdrs[i]));
			vo.setAllot(allots[i]);
			vo.setSortOrdr(i);
			diagnosisLevelQuizDAO.insertQuizAnswer(vo);
		}
		
		
	}
	
    /**
	 * 자가진단 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisLevelQuiz updateQuizView(DiagnosisLevelQuiz vo) throws Exception {
    	DiagnosisLevelQuiz resultVO = diagnosisLevelQuizDAO.updateQuizView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
	/**
	 * 자가진단  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateQuiz(DiagnosisLevelQuiz vo) throws Exception {
		String [] answers = vo.getAnswers().split(",");
		String [] answerStdrs = vo.getAnswerStdrs().split(",");
		String [] allots = vo.getAllots().split(",");
		
		//문항수정
		diagnosisLevelQuizDAO.updateQuiz(vo);
		
		//답변 삭제
		diagnosisLevelQuizDAO.deleteQuizAnswer(vo);
		
		//문항 답변 등록
		for (int i=0; i<answers.length ; i++){ 
			vo.setAnswer(answers[i]);
			vo.setAnswerStdr((answerStdrs[i]));
			vo.setAllot(allots[i]);
			vo.setSortOrdr(i);
			diagnosisLevelQuizDAO.insertQuizAnswer(vo);
		}
		
	}
	
	/**
	 * 자가진단  삭제 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void deleteQuiz(DiagnosisLevelQuiz vo) throws Exception {

		diagnosisLevelQuizDAO.deleteQuiz(vo);
		//답변 삭제
		diagnosisLevelQuizDAO.deleteQuizAnswer(vo);		
	}
	
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectQuizAnswer(DiagnosisLevelQuiz vo) throws Exception {
        return diagnosisLevelQuizDAO.selectQuizAnswer(vo);
    }
    /**
	 * 자가진단 문항 답변항목  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectQuizAnswer2(DiagnosisLevelQuiz vo) throws Exception {
        return diagnosisLevelQuizDAO.selectQuizAnswer2(vo);
    }
}
