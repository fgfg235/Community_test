<%
 /**
  * @Class Name : EgovAuthorGroupManage.java
  * @Description : EgovAuthorGroupManage List 화면
  * @Modification Information
  * @
  * @  수정일                     수정자                    수정내용
  * @ -------       --------    ---------------------------
  * @ 2009.03.23    Lee.m.j       최초 생성
  *   2016.06.13    장동한          표준프레임워크 v3.6 개선
  *
  *  @author Lee.m.j
  *  @since 2009.03.23
  *  @version 1.0
  *  @see
  *
  */
%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="pageTitle"><spring:message code="comCopSecRgm.title"/></c:set>
<!DOCTYPE html>
<html>
<head>
<title>TEST<spring:message code="title.list" /></title><!-- 권한그룹관리 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">
<script src="<c:url value='/js/egovframework/com/cmm/jquery.js' />"></script>
<script type="text/javaScript" language="javascript" defer="defer">

function fncAddAuthorInsert() {
    location.replace("<c:url value='/sec/ram/EgovAuthorInsertView.do'/>");
}

</script>
<style type="text/css">
ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}
ul.tabs li{
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
	height:9%
}

ul.tabs li.current{
	background: #ededed;
	color: #222;
}

.tab-content{
	display: none;
	background: #ededed;
	padding: 15px;
	height:90%;
}

.tab-content.current{
	display: inherit;
}

table{
	border:1px solid black;
	text-align:center;
	height:100%;
}

th, td{
	border:1px solid black;
	height:20%;
}
</style>
</head>
<body>
	<div class="board">
	
		<h1>${pageTitle} <spring:message code="title.list" /></h1><!-- 권한관리 목록 -->
		<div id="authList" style="float:left;width:50%;height:700px;">
			<div style="width:100%;height:70%;border:1px solid black;">
				<div style="padding: 5px 8px;float:right;">
					<a href="<c:url value='/sec/ram/EgovAuthorInsertView.do'/>" onClick="javascript:fncAddAuthorInsert();"  title="등록">등록</a>
					<a>삭제</a>
				</div>
				<div style="padding:15px 8px;">
					<ul>
						<li>권한그룹1</li>
						<li>권한그룹2</li>
						<li>권한그룹3</li>
						<li>권한그룹4</li>
						<li>권한그룹5</li>
					</ul>
				</div>
			</div>
			<div style="width:100%;height:30%;border:1px solid black;">
				<table>
					<tr>
						<th>구분</th>
						<th>내용</th>
					</tr>
					<tr>
						<td>권한ID</td>
						<td>ROLE_ADMIN</td>
					</tr>
					<tr>
						<td>권한명</td>
						<td>관리자</td>
					</tr>
					<tr>
						<td>권한설명</td>
						<td>관리자</td>
					</tr>
					<tr>
						<td>등록일</td>
						<td>2020-02-27</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="authInfo" style="float:right;width:49%;height:700px;border:1px solid black;">
			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">권한</li>
				<li class="tab-link" data-tab="tab-2">사용자</li>
			</ul>
		
			<div id="tab-1" class="tab-content current">
				권한 List
			</div>
			<div id="tab-2" class="tab-content">
				<form>
					<input type="text" placeholder="사원 명"/>
					<input type="submit" value="검색"/>
				</form>
				사용자 List
			</div>
		</div>
	
	</div>
	
<script>
$(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>
</body>
</html>