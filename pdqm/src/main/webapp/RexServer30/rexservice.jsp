<%
	//request.setCharacterEncoding("utf-8");

	//System.setProperty("rexpert.properties.dir", "C:/RexServer30/WEB-INF/classes/Rexpert/conf");
	String sAddr = request.getServerName();
	if (!sAddr.equals("localhost")) {
		// 개발서버 
		System.setProperty("rexpert.properties.dir", "/SW/WebSphere/was/pdqm_war.ear/pdqm.war/WEB-INF/Rexpert/conf");
	}

	String strId = (request.getParameter("ID") == null ? "" : request.getParameter("ID"));

	if (strId.equalsIgnoreCase("SDXML")) {
		response.setContentType("text/xml;charset=UTF-8");
	} else if (strId.equalsIgnoreCase("SDCSV")) {
		response.setContentType("text/html;charset=UTF-8");
	}

	Rexpert.DataServer.Main.fnRun(request, response, application);
%>
