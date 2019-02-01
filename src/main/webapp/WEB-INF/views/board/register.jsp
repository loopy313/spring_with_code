<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<form role="form" method="post" action="success.jsp">
<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail1">Title</label>
		<input type="text" name="title" class="form-control" placeholder="Enter Title">
	</div>
	<div class="form-group">
		<label for="exampleInputPassword1">Title</label>
		<textarea class="form-control" name="content" rows="3" placeholder="Enter ..."></textarea>
	</div>
	<div class="form-group">
		<label for="exampleInputEmail1">Title</label>
		<input type="text" name="writer" class="form-control" placeholder="Enter Writer">
	</div>
	<div class="box-footer">
		<button type="submit" class="btn btn-primary">Submit</button> 
	</div>
</div>
</form>
<%@ include file="../include/footer.jsp" %>