package egovframework.pdqm.admin.support.apply.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.pdqm.admin.support.apply.model.ApplyMngVO;
import egovframework.pdqm.admin.support.apply.service.SupportApplyMngService;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMng;
import egovframework.pdqm.admin.support.diagnosis.level.model.DiagnosisLevelMngVO;
import egovframework.pdqm.front.support.apply.model.ApplyVO;
import egovframework.rte.fdl.cmmn.AbstractServiceImpl;


@Service("supportApplyMngService")
public class SupportApplyMngServiceImpl extends AbstractServiceImpl implements SupportApplyMngService{
	
	@Resource(name="applyMngDAO")
    private ApplyMngDAO applyMngDAO;

	public void insertSupport(ApplyMngVO applyMngVO) throws Exception {
		
		applyMngDAO.updateSupport(applyMngVO);
		applyMngDAO.insertSupport(applyMngVO);
		
	}

	public ApplyMngVO selectSupport(ApplyMngVO applyMngVO) throws Exception {
	
		ApplyMngVO resultapplyVO = applyMngDAO.selectSupport(applyMngVO);
		
		return resultapplyVO;
		
	}
	
    /**
	 * 사업신청 목록을 조회한다.
	 * @param authorManageVO AuthorManageVO
	 * @return List<AuthorManageVO>
	 * @exception Exception
	 */
    public List selectApplyList(ApplyMngVO searchVO) throws Exception {
        return applyMngDAO.selectApplyList(searchVO);
    }

    /**
	 * 사업신청  총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
    public int selectApplyListTotCnt(ApplyMngVO searchVO) {
		return applyMngDAO.selectApplyListTotCnt(searchVO);
	}
    
    /**
	 * 사업신청 관리 상세 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
    public ApplyVO selectApplyDetailView(ApplyVO vo) throws Exception {
    	ApplyVO resultVO = applyMngDAO.selectApplyDetailView(vo);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }

}

	