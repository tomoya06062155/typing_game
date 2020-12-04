<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タイピングゲーム</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>
<link rel="stylesheet" href="<c:url value='/css/style2.css' />">
<body id="typing_game">
<div id="wrapper">
            <div id="header">
                <h1>タイピングゲーム</h1>
            </div>
  <p id="target" onclick="game_start();">Click to start!</p>



  <form  name="typing_time">
  <input type="hidden" id="Input" name="_token"  value="${_token}"  />
  <input  type="hidden" id="result" name="data1" value="${typing.time}"  />
  <button type="submit" id="score"  class="point" onclick="score_result()" >結果へ！！</button>
  </form>

  <%-- <p><c:out value="${word}" /></p> --%>
  <input type="hidden" id="typing_word" name="typing_word" value="${word}" />

<script type="text/javascript" src="/typing_game/js/main.js"></script>
<script type="text/javascript">

<%-- window.word1 = <%=request.getAttribute("word")%> --%>

function score_result()
{
	document.typing_time.data1.value = elapsedTime;
    document.typing_time.action="/typing_game/controllers/create";
    document.typing_time.method="post";
    document.typing_time.submit();
};
</script>

<div id="footer">
                by Taro Kirameki.
            </div>
        </div>

</body>
</html>


