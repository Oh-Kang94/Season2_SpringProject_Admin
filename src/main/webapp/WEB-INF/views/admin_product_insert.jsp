<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>상품 등록 - 관리자 페이지 Nutri delights</title>
<!-- Custom fonts for this template -->
<link href="admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="admin/css/sb-admin-2.min.css" rel="stylesheet">
<!-- Custom styles for this page -->
<link
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css"
	rel="stylesheet">
<!-- sweetalret2 https://wooncloud.com/12 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- Bootstrap core JavaScript-->
<script src="admin/vendor/jquery/jquery.min.js"></script>
<script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- DataTables library -->
<script
	src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<!-- img_preview  openFileUploader, handleFileSelect-->
<script src="admin/js/img_preview.js"></script>
</head>

<body id="page-top">
	<%@ include file="admin_toolbar.jsp"%>

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">상품 등록</h1>
		<p class="mb-4">상품 등록을 확인해주세요.</p>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">상품 등록</h6>
			</div>
			<div class="card-body">
				<form action="adminInsertProduct" class="product" method="post"
					enctype="multipart/form-data" id="product">
					<div class="table-responsive">
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">상품
									코드</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="pcode"
									class="form-control form-control-user" id="pcode"
									readonly="readonly"
									value="${dataSetProduct[0].pcode != null ? dataSetProduct[0].pcode : '입력을 누르시면 자동 완성됩니다.'}">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">상품
									이름</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="name"
									class="form-control form-control-user" id="name"
									placeholder="이름을 입력해주세요."
									value="${dataSetProduct[0].name != null ? dataSetProduct[0].name : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">카테고리</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="category"
									class="form-control form-control-user" id="category"
									placeholder="카테고리를 입력해주세요"
									value="${dataSetProduct[0].category != null ? dataSetProduct[0].category : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">밥</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="rice"
									class="form-control form-control-user" id="rice"
									placeholder="밥을 정해주세요."
									value="${dataSetProduct[0].rice != null ? dataSetProduct[0].rice : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">반찬
									1</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="cook1"
									class="form-control form-control-user" id="cook1"
									placeholder="반찬을 정해주세요."
									value="${dataSetProduct[0].cook1 != null ? dataSetProduct[0].cook1 : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">반찬
									2</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="cook2"
									class="form-control form-control-user" id="cook2"
									placeholder="반찬을 정해주세요."
									value="${dataSetProduct[0].cook2 != null ? dataSetProduct[0].cook2 : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">반찬
									3</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="cook3"
									class="form-control form-control-user" id="cook3"
									placeholder="반찬을 정해주세요."
									value="${dataSetProduct[0].cook3 != null ? dataSetProduct[0].cook3 : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">국</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="soup"
									class="form-control form-control-user" id="soup"
									placeholder="국을 정해주세요."
									value="${dataSetProduct[0].soup != null ? dataSetProduct[0].soup : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">사진</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="photoname"
									class="form-control form-control-user" id="photo"
									placeholder="${ dataSetProduct[0].photo != null ? dataSetProduct[0].photo : '사진경로를 입력해주세요.'}"
									readonly="readonly" onclick="openFileUploader()"> 
									<input	type="file" id="fileUploader" style="display: none;"
									name="photo" onchange="handleFileSelect(event)">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-3"></div>
							<div class="col-lg-8">
								<img id="imagePreview" style="align-content: center"
									alt="사진이 없습니다." src="${dataSetProduct[0].photo }"
									height="400px">
							</div>
							<div class="col-lg-3"></div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">재고</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="stock"
									class="form-control form-control-user" id="stock"
									placeholder="재고를 입력해주세요."
									value="${dataSetProduct[0].stock != null ? dataSetProduct[0].stock : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">가격</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="price"
									class="form-control form-control-user" id="price"
									placeholder="가격을 정해주세요."
									value="${dataSetProduct[0].price != null ? dataSetProduct[0].price : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">칼로리</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="calories"
									class="form-control form-control-user" id="calories"
									placeholder="칼로리를 정해주세요."
									value="${dataSetProduct[0].calories != null ? dataSetProduct[0].calories : '' }">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">등록일자</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="insertdate"
									class="form-control form-control-user" id="insertdate"
									value="${ dataSetProduct[0].conditionInsert != null ? dataSetProduct[0].conditionInsert : '입력을 누르시면 자동 완성됩니다.'}"
									readonly="readonly">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">업데이트
									일자</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="updatedate"
									class="form-control form-control-user" id="updatedate"
									value="${ dataSetProduct[0].conditionUpdate != null  ? dataSetProduct[0].conditionUpdate : '입력을 누르시면 자동 완성됩니다.'}"
									readonly="readonly">
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-2">
								<h6 style="text-align: right"
									class="m-3 font-weight-bold text-secondary order-code-label">상품상태</h6>
							</div>
							<div class="col-lg-8">
								<input style="text-align: left" type="text" name="invalidate"
									class="form-control form-control-user" id="invalidate"
									value="${dataSetProduct[0].invalidate != null ? (dataSetProduct[0].invalidate == 1 ? '현재 판매중인 상품입니다.' : '현재 판매 중단 상품입니다.') : '입력을 누르시면 자동 완성됩니다.'}"
									readonly="readonly">
							</div>
						</div>
						<hr>
						<div class="form-group row">
							<div class="col-sm-1"></div>
							<div class="col-sm-4">
								<a id="confirmDelete" class="btn btn-google btn-user btn-block"
									data-invalidate="${dataSetProduct[0].invalidate}"
									data-pcode="${dataSetProduct[0].pcode}">삭제 및 복구</a>
							</div>
							<div class="col-sm-2"></div>
							<div class="col-sm-4">
								<input type="submit" id="confirmInsert"
									class="btn btn-facebook btn-user btn-block" value="수정 및 입력">
							</div>
							<div class="col-sm-1"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /.container-fluid -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i></a>

	<!-- REGEX&modal -->
	<script src="admin/js/product_regex.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="admin/js/sb-admin-2.js"></script>

</body>
</html>