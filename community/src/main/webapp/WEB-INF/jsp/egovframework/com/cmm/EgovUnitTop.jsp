<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/cmm/main.css' />">
<title>eGovFrame 공통 컴포넌트</title>
</head>
<body>
<div id="header">
	<div class="header_box"> 
	<h1>
		<a href="<c:url value='/EgovContent.do' />" target="_content"><img src="<c:url value='/images/egovframework/com/cmm/main/top_logo.png' />" alt="eGovframe"></a>
	</h1>
	<div style="margin-top:4px;float:left;"><strong class="top_title_strong"><spring:message code="comCmm.top.title"/></strong></div>
	<div style="float:right;padding-right:40px;vertical-align:middle;height:100%;">
		<c:if test="${loginVO != null}">
			${loginVO.name }<spring:message code="comCmm.unitContent.2"/> <a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do" target="_top"><spring:message code="comCmm.unitContent.3"/></a>
		</c:if>
		<c:if test="${loginVO == null}">
		</c:if>
	</div>
	</div>
</div>
</body>
</html>