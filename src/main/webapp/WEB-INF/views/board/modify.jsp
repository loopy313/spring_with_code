<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".btn-warning").on("click", function() {
			self.location = "/board/listAll";
		});
		$(".btn-primary").on("click", function() {
			formObj.submit();
		});
	});
</script>
<form role="form" method="post">

	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputBno">BNO</label><input type="text"
				name="bno" class="form-control" value="${boardVO.bno}"
				readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputTitle1">Title</label><input type="text"
				name="title" class="form-control" value="${boardVO.title}">
		</div>
		<div class="form-group">
			<label for="exampleInputContent1">Content</label>
			<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputWriter1">Writer</label><input type="text"
				name="writer" class="form-control" value="${boardVO.title}">
		</div>
	</div>
</form>
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>
<%@ include file="../include/footer.jsp"%>
