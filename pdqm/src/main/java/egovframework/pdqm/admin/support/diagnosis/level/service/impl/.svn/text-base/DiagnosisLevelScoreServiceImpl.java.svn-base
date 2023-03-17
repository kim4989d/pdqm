package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScore;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelScoreVO;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelScoreService;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 자가진단  점수관리 ServiceImpl 클래스를 정의한다.
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

@Service("diagnosisLevelScoreService")
public class DiagnosisLevelScoreServiceImpl extends AbstractServiceImpl implements DiagnosisLevelScoreService {
    
	@Resource(name="diagnosisLevelScoreDAO")
    private DiagnosisLevelScoreDAO diagnosisLevelScoreDAO;

    /**
	 * 자가진단 (진단대상) 점수관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectLevelScoreDgnssTrgetList(DiagnosisLevelScoreVO searchVO) throws Exception {
        return diagnosisLevelScoreDAO.selectLevelScoreDgnssTrgetList(searchVO);
    }

    /**
	 * 자가진단 (진단대상) 점수관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectLevelScoreDgnssTrgetListTotCnt(DiagnosisLevelScoreVO searchVO) {
		return diagnosisLevelScoreDAO.selectLevelScoreDgnssTrgetListTotCnt(searchVO);
	}
    
    /**
	 * 진단대상  조회한다.
	 * @param 
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssMasterList() throws Exception {
        return diagnosisLevelScoreDAO.selectDgnssMasterList();
    }
	
	/**
	 * 자가진단  관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public List updateLevelScoreDgnssTrgetView(DiagnosisLevelScore vo) throws Exception {
    	return diagnosisLevelScoreDAO.updateLevelScoreDgnssTrgetView(vo);
    	
    }
    
	/**
	 * 자가진단  관리  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateLevelScoreDgnssTrget(DiagnosisLevelScore vo) throws Exception {
		String [] mumms = vo.getMumms().split(",");
		String [] mxmms = vo.getMxmms().split(",");
		String [] codes = vo.getCodes().split(",");
		
		for (int i=0; i<mumms.length ; i++){
			vo.setMumm(mumms[i]);
			vo.setMxmm(mxmms[i]);
			vo.setCode(codes[i]);
			diagnosisLevelScoreDAO.updateLevelScoreDgnssTrget(vo);
		}
		
	}
    
    /**
	 * 자가진단 (진단관점) 점수관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectScoreViewPointList(DiagnosisLevelScoreVO searchVO) throws Exception {
        return diagnosisLevelScoreDAO.selectScoreViewPointList(searchVO);
    }

    /**
	 * 자가진단 (진단관점) 점수관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectScoreViewPointListTotCnt(DiagnosisLevelScoreVO searchVO) {
		return diagnosisLevelScoreDAO.selectScoreViewPointListTotCnt(searchVO);
	}

    /**
	 * 자가진단 결과설명 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisLevelScore updateResultExplainView(DiagnosisLevelScore vo) throws Exception {
    	DiagnosisLevelScore resultVO = diagnosisLevelScoreDAO.updateResultExplainView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
	/**
	 * 자가진단 결과설명  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateResultExplain(DiagnosisLevelScore vo) throws Exception {
		diagnosisLevelScoreDAO.updateResultExplain(vo);
		
	}
	
	/**
	 * 진단관점 코드 목록을 조회한다. 
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public List<DiagnosisLevelScore> selectViewPointCode(DiagnosisLevelScoreVO searchVO) throws Exception {
		return diagnosisLevelScoreDAO.selectViewPointCode(searchVO);
	}
	
    /**
	 * 관리수준 자가진단 결과 설명  엑셀을 조회한다.
	 * @param DiagnosisLevelScoreVO searchVO
	 * @return List<DiagnosisLevelScore>
	 * @exception Exception
	 */
    public List selectScoreViewPointExcel(DiagnosisLevelScoreVO searchVO) throws Exception {
        return diagnosisLevelScoreDAO.selectScoreViewPointExcel(searchVO);
    }
}
