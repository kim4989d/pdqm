package egovframework.pdqm.admin.support.diagnosis.idx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sec.ram.service.EgovAuthorManageService;
import egovframework.com.sym.mnu.mpm.service.MenuManageVO;

import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbType;
import egovframework.pdqm.admin.support.diagnosis.idx.model.DiagnosisIdxDbTypeVO;
import egovframework.pdqm.admin.support.diagnosis.idx.service.DiagnosisIdxDbTypeService;
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

@Service("diagnosisIdxDbTypeService")
public class DiagnosisIdxDbTypeServiceImpl extends AbstractServiceImpl implements DiagnosisIdxDbTypeService {
    
	@Resource(name="diagnosisIdxDbTypeDAO")
    private DiagnosisIdxDbTypeDAO diagnosisIdxDbTypeDAO;

    /**
	 * 데이터베이스유형 관리 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectIdxDbTypeList(DiagnosisIdxDbTypeVO searchVO) throws Exception {
        return diagnosisIdxDbTypeDAO.selectIdxDbTypeList(searchVO);
    }

    /**
	 * 데이터베이스유형  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectIdxDbTypeListTotCnt(DiagnosisIdxDbTypeVO searchVO) {
		return diagnosisIdxDbTypeDAO.selectIdxDbTypeListTotCnt(searchVO);
	}
    
	/**
	 * 데이터베이스유형 관리  등록 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void insertIdxDbType(DiagnosisIdxDbType vo) throws Exception {
		diagnosisIdxDbTypeDAO.insertIdxDbType(vo);
	}

    /**
	 * 데이터베이스유형 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public DiagnosisIdxDbType updateIdxDbTypeView(DiagnosisIdxDbType vo) throws Exception {
    	DiagnosisIdxDbType resultVO = diagnosisIdxDbTypeDAO.updateIdxDbTypeView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
	/**
	 * 데이터베이스유형 관리  수정 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void updateIdxDbType(DiagnosisIdxDbType vo) throws Exception {
		diagnosisIdxDbTypeDAO.updateIdxDbType(vo);
	}
    
	/**
	 * 데이터베이스유형 관리  삭제 한다.
	 * @param vo MenuManageVO
	 * @exception Exception
	 */
	public void deleteIdxDbType(DiagnosisIdxDbType vo) throws Exception {
		diagnosisIdxDbTypeDAO.deleteIdxDbType(vo);
	}

	   
}
