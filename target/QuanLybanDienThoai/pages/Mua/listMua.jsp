<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- <c:url value="/QuanLyBanHang/hoa-don/detailed-search" var="url" />
<form:form action="${url}" method="get" commandName="searchhoa-donhoa-donO">
	<fieldset>
		<div class="form-group">
			<div class="col-sm-6">
				Name: 
				<form:input type="text" class="form-control1" required="required"
					path="name" placeholder='name' />
				<form:hidden path="page" />
			</div>
			<div class="col-sm-6">
				<button type="button" onclick="submitForm();"
					class="btn btn-primary">
					Search
				</button>
			</div>
		</div>
	</fieldset>
</form:form> --%>

<h3>Danh sách mua hàng</h3>
<div class="panel panel-success">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>ID hoá đơn</th>
				<th>Điện thoại</th>
				<th>Khách hàng</th>
				<th>Số lượng</th>
				<th>Tuỳ chọn</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listMua}" var="list">
				<tr>
					<td>${list.id }</td>
					<td>${list.hdID }</td>
					<td>${list.dtTen }</td>
					<td>${list.khachTen }</td>
					<td>${list.soLuong }</td>

					<td><a href="<c:url value ='/hoa-don/xem-mua/${list.id }'/>"
						class="btn btn-default">Xem</a><%--  <a
						href="<c:url value ='/hoa-don/sua-mua/${list.id }'/>"
						class="btn btn-primary">Sửa</a>  --%><a
						href="<c:url value ='/hoa-don/xoa-mua/${list.id }'/>"
						class="btn btn-danger">Xoá</a> <%-- <button class="btn btn-danger" data-toggle="modal"
							data-target="#myModal" onclick="setId(${list.id})">
							Delete</button> --%></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>