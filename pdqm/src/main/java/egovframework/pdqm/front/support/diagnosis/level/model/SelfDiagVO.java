package egovframework.pdqm.front.support.diagnosis.level.model;

import java.io.Serializable;

public class  SelfDiagVO implements Serializable {
	
	private String level_5_idx = null ;
	private String levelDgnssId = null ;
	private String levelResultId = null ;
	private int cntTotQuestion ;
	private int cnt1Level ;
	private String answerPaper = null ;
	
	private String dgnssTrgetId = null ;
	
	private String upperInsttSeCode = null ;
	private String insttSeCode = null ;
	private String insttNm = null ;
	private String databaseTyId = null ;
	private String databaseNm = null ;
	private String databaseScaleCode = null ;
	
	
	public String getLevel_5_idx()
	{
		return level_5_idx ;
	}
	public void setLevel_5_idx( String level_5_idx )
	{
		this.level_5_idx = level_5_idx ;
	}
	public String getLevelDgnssId()
	{
		return levelDgnssId ;
	}
	public void setLevelDgnssId( String levelDgnssId )
	{
		this.levelDgnssId = levelDgnssId ;
	}
	public String getLevelResultId()
	{
		return levelResultId ;
	}
	public void setLevelResultId( String levelResultId )
	{
		this.levelResultId = levelResultId ;
	}
	public int getCntTotQuestion()
	{
		return cntTotQuestion ;
	}
	public void setCntTotQuestion( int cntTotQuestion )
	{
		this.cntTotQuestion = cntTotQuestion ;
	}
	public int getCnt1Level()
	{
		return cnt1Level ;
	}
	public void setCnt1Level( int cnt1Level )
	{
		this.cnt1Level = cnt1Level ;
	}
	public String getAnswerPaper()
	{
		return answerPaper ;
	}
	public void setAnswerPaper( String answerPaper )
	{
		this.answerPaper = answerPaper ;
	}
	
	public String getDgnssTrgetId()
	{
		return dgnssTrgetId ;
	}
	public void setDgnssTrgetId( String dgnssTrgetId )
	{
		this.dgnssTrgetId = dgnssTrgetId ;
	}
	
	public String getUpperInsttSeCode()
	{
		return upperInsttSeCode ;
	}
	public void setUpperInsttSeCode( String upperInsttSeCode )
	{
		this.upperInsttSeCode = upperInsttSeCode ;
	}
	public String getInsttSeCode()
	{
		return insttSeCode ;
	}
	public void setInsttSeCode( String insttSeCode )
	{
		this.insttSeCode = insttSeCode ;
	}
	public String getInsttNm()
	{
		return insttNm ;
	}
	public void setInsttNm( String insttNm )
	{
		this.insttNm = insttNm ;
	}
	public String getDatabaseTyId()
	{
		return databaseTyId ;
	}
	public void setDatabaseTyId( String databaseTyId )
	{
		this.databaseTyId = databaseTyId ;
	}
	public String getDatabaseNm()
	{
		return databaseNm ;
	}
	public void setDatabaseNm( String databaseNm )
	{
		this.databaseNm = databaseNm ;
	}
	public String getDatabaseScaleCode()
	{
		return databaseScaleCode ;
	}
	public void setDatabaseScaleCode( String databaseScaleCode )
	{
		this.databaseScaleCode = databaseScaleCode ;
	}
	
	public void print()
	{
		System.out.println( "-----------Start " + this.getClass().getName() + "-----------" );

		System.out.println( "level_5_idx = " + level_5_idx ) ;
		System.out.println( "levelDgnssId = " + levelDgnssId ) ;
		System.out.println( "cntTotQuestion = " + cntTotQuestion ) ;
		System.out.println( "cnt1Level = " + cnt1Level ) ;
		System.out.println( "answerPaper = " + answerPaper ) ;
		
		System.out.println( "dgnssTrgetId = " + dgnssTrgetId ) ;
		
		System.out.println( "upperInsttSeCode = " + upperInsttSeCode ) ;
		System.out.println( "insttNm = " + insttNm ) ;
		System.out.println( "insttSeCode = " + insttSeCode ) ;
		System.out.println( "databaseTyId = " + databaseTyId ) ;
		System.out.println( "databaseNm = " + databaseNm ) ;
		System.out.println( "databaseScaleCode = " + databaseScaleCode ) ;
		
		System.out.println( "-----------End " + this.getClass().getName() + "-----------" );
	}
}
