/**
 * 개요
 * - 통계에 대한 Service Interface를 정의한다.
 * 
 * 상세내용
 * - 통계를 조회 한다.
 * @author psh
 * @version 1.0
 * @created 03-8-2009 오후 2:07:12
 */

package egovframework.pdqm.admin.stats.service;

import java.util.List;

public interface StatisticsService {

	/**
	 * 가입통계를 조회한다.
	 * @param statisticsVO - statisticsVO
	 * @return List - 가입통계
	 * 
	 * @param statisticsVO
	 */
	public List<StatisticsVO> selectJoinCount(StatisticsVO statisticsVO) throws Exception;

	/**
	 * 접속통계를 조회한다.
	 * @param statisticsVO - statisticsVO
	 * @return List - 접속통계
	 * 
	 * @param statisticsVO
	 */
	public List<StatisticsVO> selectAccessCount(StatisticsVO statisticsVO) throws Exception;

	/**
	 * 이용통계를 조회한다.
	 * @param statisticsVO - statisticsVO
	 * @return List - 이용통계
	 * 
	 * @param statisticsVO
	 */
	public List<StatisticsVO> selectUseCount(StatisticsVO statisticsVO) throws Exception;
}
