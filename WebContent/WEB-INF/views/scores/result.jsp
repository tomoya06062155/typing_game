<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
		<div id=result>
			<h2>結果！！</h2>
				<p class="result2">今回のタイムは<c:out value="${typing.time}"/>秒でした!!</p>
				<p class="result3"><a href="<c:url value='/scores/game_start' />">タイピングゲームへ</a></p>
				<p class="result4"><a href="<c:url value='/index.html' />">ランキング一覧へ</a></p>
		</div>
	</c:param>
</c:import>