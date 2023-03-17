package egovframework.pdqm.front.support.diagnosis.idx.service;

import java.util.List;

import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiag;
import egovframework.pdqm.front.support.diagnosis.idx.model.IdxSelfDiagVO;
import egovframework.pdqm.front.support.diagnosis.level.model.SelfDiagVO;


public interface IdxSelfDiagService {

	public List getNewIdxResultId( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public List selectIngIdxDgnssId( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public List selectCntIdxDec( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public List selectIdxDgnssList( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public void insertIdxDgnss1Result( IdxSelfDiag vo ) throws Exception ;
	
	public void insertIdxDgnss2Result( IdxSelfDiag vo ) throws Exception ;
	
	public void insertIdxDgnss3Result( IdxSelfDiag vo ) throws Exception ;
	
	public void insertIdxDgnss4Result( IdxSelfDiag vo ) throws Exception ;
	
	public void insertIdxDgnss5Result( IdxSelfDiag vo ) throws Exception ;
	
	public void updateIdxDgnss6Result( IdxSelfDiag vo ) throws Exception ;
	
	public List selectIdxDgnss1Result( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public List selectIdxDgnss2Result( IdxSelfDiagVO searchVO ) throws Exception ;
	
	public List selectIdxDgnss3Result( IdxSelfDiagVO searchVO ) throws Exception ;
}
