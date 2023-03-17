/**
 * 개요
 * - 통계에 대한 DAO 클래스를 정의한다.
 * 
 * 상세내용
 * - 통계를 조회한다.
 * @author psh
 * @version 1.0
 * @created 03-8-2009 오후 2:07:11
 */

package egovframework.pdqm.admin.stats.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.pdqm.admin.stats.service.StatisticsVO;

@Repository("statisticsDAO")
public class StatisticsDAO extends EgovComAbstractDAO {
	
	/**
	 * 가입통계를 조회한다.
	 * @param StatisticsVO - StatisticsVO
	 * @return List - 가입내역
	 * @exception Exception
	 */
	@SuppressWarnings("unchecked")
	public List<StatisticsVO> selectJoinCount(StatisticsVO statisticsVO) throws Exception {
		return list("StatisticsDAO.selectJoinCount", statisticsVO);
	}
	/**
	 * 접속통계를 조회한다.
	 * @param StatisticsVO - StatisticsVO
	 * @return List - 접속 내역
	 * @exception Exception
	 */
	@SuppressWarnings("unchecked")
	public List<StatisticsVO> selectAccessCount(StatisticsVO statisticsVO) throws Exception {
		return list("StatisticsDAO.selectAccessCount", statisticsVO);
	}
	/**
	 * 이용통계를 조회한다.
	 * @param StatisticsVO - StatisticsVO
	 * @return List - 이용 내역
	 * @exception Exception
	 */
	@SuppressWarnings("unchecked")
	public List<StatisticsVO> selectUseCount(StatisticsVO statisticsVO) throws Exception {
		return list("StatisticsDAO.selectUseCount", statisticsVO);
	}

}
