<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タイム ランキング</h2>
        <p><a href="<c:url value='/scores/game_start' />">タイピングゲームへ</a></p>
        <table id="employee_list">
        <tbody>
            <tr>
                <th>タイム</th>
                <th>日付</th>
            </tr>
            <c:forEach var="score" items="${scores}" varStatus="status">
                <tr class="row${status.count % 2}">
                    <td><c:out value="${score.time}" />秒</td>
                    <td><fmt:formatDate value='${score.time_date}' pattern='yyyy-MM-dd' /></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div id="pagination">
            (全 ${score_count} 件) <br />
            <c:forEach var="i" begin="1" end="${((score_count - 1) /15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/index.html?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>


    </c:param>
</c:import>