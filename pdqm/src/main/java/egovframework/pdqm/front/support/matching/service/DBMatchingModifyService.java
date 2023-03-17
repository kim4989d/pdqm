package egovframework.pdqm.front.support.matching.service;

import egovframework.pdqm.front.support.matching.model.DBInfoVO;

public interface DBMatchingModifyService {

	void updateDBInfo(DBInfoVO dBInfoVO) throws Exception;

	void deleteDBInfo(DBInfoVO dBInfoVO) throws Exception;

}
