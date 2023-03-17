package egovframework.pdqm.admin.support.diagnosis.level.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelf;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelSelfVO;
import egovframework.pdqm.admin.support.diagnosis.level.service.DiagnosisLevelSelfService;

import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 자가진단 관리  ServiceImpl 클래스를 정의한다.
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

@Service("diagnosisLevelSelfService")
public class DiagnosisLevelSelfServiceImpl extends AbstractServiceImpl implements DiagnosisLevelSelfService {
    
	@Resource(name="diagnosisLevelSelfDAO")
    private DiagnosisLevelSelfDAO diagnosisLevelSelfDAO;

    /**
	 * 자가진단 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectSelfDiagnosisList(DiagnosisLevelSelfVO searchVO) throws Exception {
        return diagnosisLevelSelfDAO.selectSelfDiagnosisList(searchVO);
    }

    /**
	 * 자가진단 관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectSelfDiagnosisListTotCnt(DiagnosisLevelSelfVO searchVO) {
		return diagnosisLevelSelfDAO.selectSelfDiagnosisListTotCnt(searchVO);
	}
    
	/**
	 * 자가진단 관리  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception {

		diagnosisLevelSelfDAO.insertSelfDiagnosis(vo);

	}

	/**
	 * 자가진단 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisLevelSelf updateSelfDiagnosisView(DiagnosisLevelSelf vo) throws Exception {
    	DiagnosisLevelSelf resultVO = diagnosisLevelSelfDAO.updateSelfDiagnosisView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
    /**
	 * 자가진단 관리  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception {
		diagnosisLevelSelfDAO.updateSelfDiagnosis(vo);
	}
    
	/**
	 * 자가진단 관리  삭제 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void deleteSelfDiagnosis(DiagnosisLevelSelf vo) throws Exception {
		diagnosisLevelSelfDAO.deleteSelfDiagnosis(vo);
	}

	/**
	 * 자가진단 복사  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertCompositionCopy(DiagnosisLevelSelf vo) throws Exception {
		//자기진단 등록
		vo.setNtceTyCode("N10");
		diagnosisLevelSelfDAO.insertSelfDiagnosis(vo);
		//자기진단 구성 복사 등록
		diagnosisLevelSelfDAO.insertCompositionCopy(vo);
		//수준진단관리 항목수 수정
		diagnosisLevelSelfDAO.updateQesitmCo(vo);
	}
	
	/**
	 * 자가진단   등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertComposition(DiagnosisLevelSelf vo) throws Exception {
		String [] qesitmNos = vo.getCheckValue().split(",");
		
		// 문항 삭제후 등록		
		//수준진단문항 삭제 
		diagnosisLevelSelfDAO.deleteComposition(vo);
		
		for (int i=0; i<qesitmNos.length ; i++){
			vo.setQesitmId(qesitmNos[i]);
			vo.setQesitmNo(i);
			//수준진단문항 등록
			diagnosisLevelSelfDAO.insertComposition(vo);			
		}
		//수준진단관리 항목수 수정 
		diagnosisLevelSelfDAO.updateQesitmCo(vo);
		

	}
	
    /**
	 * 자가진단 구성 타이틀 조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectCompositionTitleList() throws Exception {
        return diagnosisLevelSelfDAO.selectCompositionTitleList();
    }
    
    /**
	 * 자가진단 구성  조회
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectCompositionList(DiagnosisLevelSelf vo) throws Exception {
        return diagnosisLevelSelfDAO.selectCompositionList(vo);
    }
}
