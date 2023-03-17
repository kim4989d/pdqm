package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 진단대상관리 ServiceImpl 클래스를 정의한다.
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

@Service("diagnosisMngService")
public class DiagnosisLevelMngServiceImpl extends AbstractServiceImpl implements DiagnosisLevelMngService {
    
	@Resource(name="diagnosisMngDAO")
    private DiagnosisLevelMngDAO diagnosisMngDAO;

    /**
	 * 진단 대상 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectDiagnosisMngList(DiagnosisLevelMngVO searchVO) throws Exception {
        return diagnosisMngDAO.selectDiagnosisMngList(searchVO);
    }

    /**
	 * 진단 대상  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectDiagnosisMngListTotCnt(DiagnosisLevelMngVO searchVO) {
		return diagnosisMngDAO.selectDiagnosisMngListTotCnt(searchVO);
	}
    
	/**
	 * 진단대상 관리  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertDiagnosisMng(DiagnosisLevelMng vo) throws Exception {
		
		vo.setState("insert");
		//순번 업데이트
		diagnosisMngDAO.updateSortOrder(vo);
		
		diagnosisMngDAO.insertDiagnosisMng(vo);
		
		//진단결과점수 입력
		diagnosisMngDAO.insertLevelScore(vo);

	}

    /**
	 * 진단대상 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisLevelMng updateDiagnosisMngView(DiagnosisLevelMng vo) throws Exception {
    	DiagnosisLevelMng resultVO = diagnosisMngDAO.updateDiagnosisMngView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
	/**
	 * 진단대상 관리  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateDiagnosisMng(DiagnosisLevelMng vo) throws Exception {
		
		//순번 업데이트
		if(vo.getOrderUpChk().equals("Y") ){

			if(Integer.parseInt(vo.getOldSortOrdr()) <  Integer.parseInt(vo.getSortOrdr())){
				vo.setState("updateUp");
				diagnosisMngDAO.updateSortOrder(vo);
				
			}else{
				vo.setState("updateDown");
				diagnosisMngDAO.updateSortOrder(vo);
			}
			
		}
		
		diagnosisMngDAO.updateDiagnosisMng(vo);
	}
    
	/**
	 * 진단대상 관리  삭제 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void deleteDiagnosisMng(DiagnosisLevelMng vo) throws Exception {
		vo.setState("delete");
		//순번 업데이트
		diagnosisMngDAO.updateSortOrder(vo);
		
		diagnosisMngDAO.deleteDiagnosisMng(vo);
	}

	
    /**
	 * 진단대상  조회한다.
	 * @param 
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssMasterList() throws Exception {
        return diagnosisMngDAO.selectDgnssMasterList();
    }
    
	/**
	 * 진단대상 관점  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertDiagnosisViewPoint(DiagnosisLevelMng vo) throws Exception {

		vo.setState("insert");
		//순번 업데이트
		diagnosisMngDAO.updateSortOrder(vo);
		
		diagnosisMngDAO.insertDiagnosisViewPoint(vo);
		//진단결과점수 입력
		diagnosisMngDAO.insertLevelScore(vo);
	}
	
    /**
	 * 진단대상 관점 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisLevelMng updateDiagnosisViewPointView(DiagnosisLevelMng vo) throws Exception {
    	DiagnosisLevelMng resultVO = diagnosisMngDAO.updateDiagnosisViewPointView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
    /**
	 * 진단 대상에 대한 관점을 조회한다.
	 * @param 
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssDetailList(DiagnosisLevelMng vo) throws Exception {
        return diagnosisMngDAO.selectDgnssDetailList(vo);
    }

}
