<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DUO</title>
</head>
<body>
	<span id="attributeValue">${d}</span>
	
	<form action="DuoSearchC">
		<table id="duotblSelect">
			<tr id="selectTr">
				<td><select name="position" class="select-td">
						<option value="positionAll">ポジション全体</option>
						<option value="top">トップ</option>
						<option value="jg">ジャングル</option>
						<option value="mid">ミッド</option>
						<option value="adc">ADC</option>
						<option value="supp">サポーター</option>
				</select> <select name="queue" class="select-td">
						<option value="solo">ソロランク</option>
						<option value="free">Ranked Flex</option>
						<option value="normal">ノーマル(ブラインドピック)</option>
						<option value="etc">アラーム</option>
				</select> <select name="tier" class="select-td">
						<option value="ALL">ティア全体</option>
						<option value="IRON">Iron</option>
						<option value="BRONZE">Bronze</option>
						<option value="SILVER">Silver</option>
						<option value="GOLD">Gold</option>
						<option value="PLATINUM">Platinum</option>
						<option value="DIAMOND">Diamond</option>
						<option value="MASTER">Master</option>
						<option value="GRANDMASTER">Grandmaster</option>
						<option value="CHALLENGER">Challenger</option>
				</select>
					<button class="btn_select" >検索</button>
					<button class="btn_select" onclick="history.go(-1)" type="button">戻る</button></td>
 			<c:choose>
		 		<c:when test="${sessionScope.accountInfo == null}">
				<% 	PrintWriter script = response.getWriter(); 
					script.println("<script>");
					script.println("alert('로그인을 하세요')");
					script.println("location.href='login.jsp'");
					script.println("</script>");
				%>
				</c:when>
				<c:otherwise>
				
				
				<td colspan="7" align="right"><button class="btn_duoreg"
						onclick="location.href='DuoRegC?name=${sessionScope.accountInfo.nickname }'" type="button" value="${sessionScope.accountInfo.nickname }">サモナーを登録する</button></td>
				</c:otherwise>
			</c:choose>
			</tr>
		</table>
	</form>
	<div id="board-list-wrap">
		<div id="board-list">
			<div id="board-list-head">
				<div id="n">サモナー名前</div>
				<div id="p">ポジション</div>
				<div id="t">ティア</div>
				<div id="w">勝率</div>
				
				<div id="m">ノート</div>
				<div id="d">登録日時</div>
			</div>
			<c:forEach var="d" items="${duos }" varStatus="status">
				<div id="board-list-body">
					<div id="item">
						<div id="n2">${d.name}
				<c:choose>
					<c:when test="${sessionScope.accountInfo.nickname eq d.name }">
					</c:when>
					<c:otherwise>
							<br>
							<button class="btn_n2" onclick="window.open('SearchC?name=${d.name}','정보조회',
								'width=900,height=730,left=1100,top=0,scrollbar=yes');" type="button">情報照会</button>
							<button class="btn_n2"
								onclick="window.open('MessageC?no=${d.no}&&name=${d.name}','쪽지보내기',
								'width=530,height=730,left=1100,top=0,scrollbar=yes');">メッセージ送信</button>
					</c:otherwise>
				</c:choose>
						</div>
						<div id="p" onclick="location.href='DuoDetailC?no=${d.no}'">${d.position}</div>
						<div id="t" onclick="location.href='DuoDetailC?no=${d.no}'"> 
					    <c:if test="${d.tier eq 'IRONI' || d.tier eq 'IRONII' || d.tier eq 'IRONIII' || d.tier eq 'IRONIV'}"><img src="./file/tier_iron.jpg" style="width: 30px;"> ${d.tier}</c:if>
						<c:if test="${d.tier eq 'BRONZEI' || d.tier eq 'BRONZEII' || d.tier eq 'BRONZEIII' || d.tier eq 'BRONZEIV'}"><img src="./file/tier_bronze.jpg" style="width: 30px;"> ${d.tier}</c:if>
						<c:if test="${d.tier eq 'SILVERI' || d.tier eq 'SILVERII' || d.tier eq 'SILVERIII' || d.tier eq 'SILVERIV'}"><img src="./file/tier_silver.jpg" style="width: 30px;"> ${d.tier}</c:if>
						<c:if test="${d.tier eq 'GOLDI' || d.tier eq 'GOLDII' || d.tier eq 'GOLDIII' || d.tier eq 'GOLDIV'}"><img src="./file/tier_gold.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						<c:if test="${d.tier eq 'PLATINUMI' || d.tier eq 'PLATINUMII' || d.tier eq 'PLATINUMIII' || d.tier eq 'PLATINUMIV'}"><img src="./file/tier_platinum.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						<c:if test="${d.tier eq 'DIAMONDI' || d.tier eq 'DIAMONDII' || d.tier eq 'DIAMONDIII' || d.tier eq 'DIAMONDIV'}"><img src="./file/tier_diamond.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						<c:if test="${d.tier eq 'MASTERI'}"><img src="./file/tier_master.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						<c:if test="${d.tier eq 'GRANDMASTERI'}"><img src="./file/tier_grandmaster.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						<c:if test="${d.tier eq 'CHALLENGERI'}"><img src="./file/tier_challenger.jpg" style="width: 30px;"> ${d.tier}</c:if> 
						
						</div>
						<div id="w" onclick="location.href='DuoDetailC?no=${d.no}'">
						 <c:set var="w" value="${d.win}"></c:set>
						 <c:set var="l" value="${d.lose}"></c:set>
						 <span style="color: #00BBA3">${w}勝</span>&nbsp; &nbsp;<span style="color: #E84057">${l}敗</span>
						 <br>
						 <c:choose>
						 <c:when test="${w >= l}">
						 <span style="color: #00BBA3"><fmt:formatNumber value="${(w/(w+l)) * 100.00}" pattern=".00"/>%</span>
						 </c:when>
						 <c:otherwise>
						 <span style="color: #E84057"><fmt:formatNumber value="${(w/(w+l)) * 100.00}" pattern=".00"/>%</span>
						 </c:otherwise>
						 </c:choose>
						</div>
						<div id="m2" onclick="location.href='DuoDetailC?no=${d.no}'">${d.memo}</div>
						<div id="d">${d.date}
							<button style="float: right;" class="material-icons i_btn"
								onclick="location.href='DuoUpdateC?no=${d.no}'" type="button">edit</button>
							<button style="float: right;" class="material-icons i_btn"
								onclick="location.href='DuoDelController?no=${d.no}&&name=${d.name}'"
								type="button">delete</button>
						</div>

					</div>
				</div>
			</c:forEach>
			<div id = "duoPaging">
					<c:choose>
						<c:when test="${curPageNo ne 1}">
						<a href="DuoPageController?p=1" class="duopaging-num">&lt&lt</a>&nbsp;&nbsp;
						<a href="DuoPageController?p=${curPageNo - 1}" class="duopaging-num">&lt</a>
						</c:when>
						<c:otherwise>
						<span class="duopaging-num">&lt&lt</span>&nbsp;&nbsp;
						<span class="duopaging-num">&lt</span>
						</c:otherwise>
					</c:choose>
					<c:forEach var="d" begin="1" end="${pageCount}">
					<a href="DuoPageController?p=${d}" class="duopaging-num">[${d}]</a>
					</c:forEach>
					<c:choose>
						<c:when test="${curPageNo eq pageCount}">
					<span class="duopaging-num">&gt</span>&nbsp;&nbsp;
					<span class="duopaging-num" >&gt&gt</span>
						</c:when>
						<c:otherwise>
					<a href="DuoPageController?p=${curPageNo + 1}" class="duopaging-num">&gt</a>&nbsp;&nbsp;
					<a href="DuoPageController?p=${pageCount}" class="duopaging-num" >&gt&gt</a>
						</c:otherwise>
					</c:choose>
				</div>
		</div>
	</div>
			<form action="DuoSearchC" method="post" name="duoSearchForm" onsubmit="return duoSearchCheck();">
				<p id ="searchNick">
					<input id="searchNickInput" placeholder="ニックネームを入力" name="searchNick">
					<button id="btn_searchNick">検索</button>
				</p>
			</form>
</body>
</html>