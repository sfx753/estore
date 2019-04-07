<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<br>
<div class="container">
	<div class="row">
		<div class="item left col-sm-4">
			<h3>Product Detail</h3>
			<p>Here is the detail of the product</p>
			<c:set var="imageFilename"
				value="/resources/images/${product.id}.jpg" />

			<div class="well">
				<img src="<c:url value="${imageFilename}" />" alt="image"
					style="width: 100%" />
			</div>
		</div>
		<div class="item  col-sm-8">
			<div class="row">
				<div class="col-sm-6">
					<div class="well">
						<h2>제품명: ${product.name}</h3>
						    
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="well">
					<p>분류: ${product.category}</p>
							
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="well">
							<p>설명: ${product.description}</p>
							
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="well">
							<p>가격: ${product.price}원</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="well">
							<p>제조사: ${product.manufacturer}원</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
