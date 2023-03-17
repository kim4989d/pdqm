/**
 * 개요
 * - 통계에 대한 ServiceImpl 클래스를 정의한다.
 * 
 * 상세내용
 * - 통계를 조회한다.
 * @author psh
 * @version 1.0
 * @created 03-8-2009 오후 2:07:12
 */

package egovframework.pdqm.admin.stats.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.pdqm.admin.stats.service.StatisticsService;
import egovframework.pdqm.admin.stats.service.StatisticsVO;

@Service("statisticsService")
public class StatisticsServiceImpl implements StatisticsService {

	@Resource(name="statisticsDAO")
    private StatisticsDAO statisticsDAO;

	/**
	 * 가입통계를 조회한다.
	 * @param statisticsVO - 가입통계 VO
	 * @return List - 가입통계내역
	 */
	public List<StatisticsVO> selectJoinCount(StatisticsVO statisticsVO) throws Exception{
		return statisticsDAO.selectJoinCount(statisticsVO);
	}
	
	/**
	 * 접속통계를 조회한다.
	 * @param statisticsVO - 접속통계 VO
	 * @return List - 접속통계내역
	 */
	public List<StatisticsVO> selectAccessCount(StatisticsVO statisticsVO) throws Exception{
		return statisticsDAO.selectAccessCount(statisticsVO);
	}

	/**
	 * 이용통계를 조회한다.
	 * @param statisticsVO - 이용통계 VO
	 * @return List - 이용통계내역
	 */
	public List<StatisticsVO> selectUseCount(StatisticsVO statisticsVO) throws Exception{
		return statisticsDAO.selectUseCount(statisticsVO);
	}
	
}