<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
{
	"data" : [
	<c:if test="${null ne menuList}">
		<c:forEach var="item" items="${menuList}" varStatus="status">
			<c:if test="${status.index>0}">,</c:if>
			{
				"mnNo" : "${item.mnNo}",
				"mnName":"${item.mnName}",
				"mnIdx":"${item.mnIdx}",
				"mnPrntNo":"${item.mnPrntNo}"
			}	
		</c:forEach>	
	</c:if>	
	]
}