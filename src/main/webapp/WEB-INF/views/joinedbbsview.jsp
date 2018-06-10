<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>掲示板アプリケーション</title>
		<link href="/css/bbsstyle.css" rel="stylesheet">
	</head>
	<body>
		<h3>掲示板アプリケーション</h3>
		記事件数　　　：<c:out value="${listSize}"/>件<br>
		データ取得時間：<c:out value="${lapTime}"/>ミリ秒<br>
		<form:form modelAttribute="joinedArticleForm" action="${pageContext.request.contextPath}/joinedbbs/postarticle">
			<form:errors path="name" cssClass="error" element="div"/>
			投稿者名：<form:input path="name"/><br>
			<form:errors path="content" cssClass="error" element="div"/>
			投稿内容：<form:textarea path="content" rows="5" cols="25"/><br>
			<input type="submit" value="記事投稿">
		</form:form>
		<hr>
		<c:forEach var="article" items="${articleList}">
			投稿者名：<c:out value="${article.name}"/><br>
			投稿内容：<pre><c:out value="${article.content}"/></pre>
			<form:form modelAttribute="joinedArticleForm" action="${pageContext.request.contextPath}/joinedbbs/deletearticle">
				<input type="hidden" name="id" value="<c:out value="${article.id}"/>">
				<input type="submit" value="記事削除">
			</form:form>
			<br>
			<c:forEach var="comment" items="${article.commentList}">
				コメント者名：<c:out value="${comment.name}"/><br>
				コメント内容：<pre><c:out value="${comment.content}"/></pre>
			</c:forEach>
			<form:form modelAttribute="joinedCommentForm" action="${pageContext.request.contextPath}/joinedbbs/postcomment">
				<input type="hidden" name="articleId" value="<c:out value="${article.id}"/>">
				<c:if test="${article.id == commentForm.articleId}">
					<form:errors path="name" cssClass="error" element="div"/>
				</c:if>
				名前:<br>
				<form:input path="name"/><br>
				<c:if test="${article.id == commentForm.articleId}">
					<form:errors path="content" cssClass="error" element="div"/>
				</c:if>
				コメント:<br>
				<form:textarea path="content"/><br>
				<input type="submit" value="コメント投稿" >
			</form:form>
			<hr>
		</c:forEach>
	</body>
</html>