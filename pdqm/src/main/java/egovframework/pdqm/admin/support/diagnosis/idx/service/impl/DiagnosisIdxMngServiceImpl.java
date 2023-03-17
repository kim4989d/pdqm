package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMng;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxMngVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnosisIdxMngService;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;

/**
 * 지표 및 특성 관리 ServiceImpl 클래스를 정의한다.
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

@Service("diagnosisIdxMngService")
public class DiagnosisIdxMngServiceImpl extends AbstractServiceImpl implements DiagnosisIdxMngService {
    
	@Resource(name="diagnosisIdxMngDAO")
    private DiagnosisIdxMngDAO diagnosisIdxMngDAO;

    /**
	 * 지표 및 특성 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectDiagnosisIdxMngList(DiagnosisIdxMngVO searchVO) throws Exception {
        return diagnosisIdxMngDAO.selectDiagnosisIdxMngList(searchVO);
    }

    /**
	 * 지표 및 특성 관리  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectDiagnosisIdxMngListTotCnt(DiagnosisIdxMngVO searchVO) {
		return diagnosisIdxMngDAO.selectDiagnosisIdxMngListTotCnt(searchVO);
	}
    
	/**
	 * 지표 관리  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception {

		vo.setState("insert");
		//순번 업데이트
		diagnosisIdxMngDAO.updateSortOrder(vo);
		
		diagnosisIdxMngDAO.insertDiagnosisIdxMng(vo);
	}

    /**
	 * 지표 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisIdxMng updateDiagnosisIdxMngView(DiagnosisIdxMng vo) throws Exception {
    	DiagnosisIdxMng resultVO = diagnosisIdxMngDAO.updateDiagnosisIdxMngView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
	/**
	 * 지표 관리  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception {

		//순번 업데이트
		if(vo.getOrderUpChk().equals("Y") ){
			if(Integer.parseInt(vo.getOldSortOrdr()) <  Integer.parseInt(vo.getSortOrdr())){
				vo.setState("updateUp");
				diagnosisIdxMngDAO.updateSortOrder(vo);
				
			}else{
				vo.setState("updateDown");
				diagnosisIdxMngDAO.updateSortOrder(vo);
			}
			
		}
		
		diagnosisIdxMngDAO.updateDiagnosisIdxMng(vo);
	}
    
	/**
	 * 지표 관리  삭제 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void deleteDiagnosisIdxMng(DiagnosisIdxMng vo) throws Exception {
		
		vo.setState("delete");
		//순번 업데이트
		diagnosisIdxMngDAO.updateSortOrder(vo);
		
		diagnosisIdxMngDAO.deleteDiagnosisIdxMng(vo);
	}

	
    
	/**
	 * 진단대상  조회한다.
	 * @param 
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssIdxMasterList() throws Exception {
        return diagnosisIdxMngDAO.selectDgnssIdxMasterList();
    }
    
	/**
	 * 지표 특성  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertDiagnosisProperty(DiagnosisIdxMng vo) throws Exception {
		
		vo.setState("insert");
		//순번 업데이트
		System.out.println("11111111111111111");
		diagnosisIdxMngDAO.updateSortOrder(vo);
		
		diagnosisIdxMngDAO.insertDiagnosisProperty(vo);
	}
	
    /**
	 * 지표 특성 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisIdxMng updateDiagnosisIdxPropertyView(DiagnosisIdxMng vo) throws Exception {
    	DiagnosisIdxMng resultVO = diagnosisIdxMngDAO.updateDiagnosisIdxPropertyView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
    /**
	 * 지표  대상에 대한 특성을 조회한다.
	 * @param 
	 * @return 글 목록
	 * @exception Exception
	 */
	public List selectDgnssDetailList(DiagnosisIdxMng vo) throws Exception {
        return diagnosisIdxMngDAO.selectDgnssDetailList(vo);
    }

}
