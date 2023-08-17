<%@page import="Bean.LichSuBean"%>
<%@page import="Bean.KhachHangBean"%>
<%@page import="Bo.GioHangBo"%>
<%@page import="Bean.GioHangBean"%>
<%@page import="Bo.DichVuBo"%>
<%@page import="Bean.DichVuBean"%>
<%@page import="Bo.LoaiBo"%>
<%@page import="Bean.LoaiBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ẩm thực Huế</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<!--NAVIGATION -->
	<div class="container-fluid p-0 fixed-top shadow-lg">
        <nav class="navbar bg-main-color navbar-expand-lg navbar-light ">
            <div class="container">
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	          		<span class="navbar-toggler-icon"></span>
	        	</button>
                <div class="d-flex align-items-center">
                    <img src="logo.svg" alt="">
                    <h1 class="m-0 p-0 ms-3 text-black navbar-brand">Ẩm thực Huế</h1>    
                </div>
                <div class="collapse navbar-collapse" id="navbarNav">
                	<ul class="navbar-nav ms-auto">
						<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0">
							<a href="DichVuController" class="w-100 h-100 text-decoration-none link-dark">Trang chủ</a>
						</li>
						<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0">
							<a href="javascript:void(0);" onclick="scrollToElement('menu')" class="w-100 h-100 text-decoration-none link-dark">Menu</a>
						</li>
						<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0" data-bs-toggle="modal" data-bs-target="#showgiohang">
							<a href="#" class="w-100 h-100 text-decoration-none link-dark">Giỏ hàng</a>
						</li>
						<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0" data-bs-toggle="modal" data-bs-target="#lichsumodal">
							<a href="#" class="w-100 h-100 text-decoration-none link-dark">Lịch sử mua hàng</a>
						</li>
						<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0">
							<a href="#" class="w-100 h-100 text-decoration-none link-dark">Liên hệ</a>
						</li>
						<%  
						KhachHangBean kh = (KhachHangBean)session.getAttribute("dn");
						if(kh == null){
						%>
							<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0">
								<a href="DangNhapController" class="w-100 h-100 text-decoration-none link-dark">Đăng nhập</a>
							</li>
						<%}else if(kh != null) { %>
							<li role='button' class="bg-main-color h6 list-group-item mb-0 border border-0">
								<a href="DangXuatController" class="w-100 h-100 text-decoration-none link-dark">Đăng xuất <i class="bi bi-box-arrow-right"></i></a>
							</li>
						<%} %>
					</ul>
                </div>
            </div>
        </nav>
    </div>
    
<!--SLIDER -->
    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item c-item active">
            <img src="slider/slider.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Ẩm thực phố Huế</h5>
                <p>Nguồn gốc, đặc trưng, các món ăn xưa - nay.</p>
              </div>
          </div>
          <div class="carousel-item c-item">
            <img src="slider/slider1.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Trà Cung Đình Huế</h5>
                <p>Đặc sản đất cố đô - văn hóa trà đạo.</p>
              </div>
          </div>
          <div class="carousel-item c-item">
            <img src="slider/slider2.jpg" class="d-block w-100 c-img" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>Đại Nội Huế</h5>
                <p>Nét đẹp cổ kính bên dòng sông Hương thơ mộng.</p>
              </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#hero-carousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#hero-carousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
    </div>
    
<!--MENU -->
    <div id="menu" class="mt-5  m-0 container-fluid d-flex row justify-content-around">
    	<div class="col-md-2 mb-3 p-0 me-3">
    		<select name="ml" class="w-100 p-2 bg-main-color rounded" id="optionSelect">
    		<c:set var="selected" value="${requestScope.selected}" />
   			<c:if test="${selected == null}">
				<option value="" selected>--Mời chọn loại dịch vụ--</option>
			</c:if>
			<c:forEach var="loai" items="${dsloai}">
				<c:if test = "${loai.getMaloai() == selected}"> 
					<option value="${loai.getMaloai()}" selected>${loai.getTenloai()}</option>
				</c:if>
				<c:if test = "${loai.getMaloai() != selected}"> 
					<option value="${loai.getMaloai()}">${loai.getTenloai()}</option>
				</c:if>
			</c:forEach>
    		</select>
		</div>
		<div class="col-12 col-md-10 p-0 row justify-content-around" >
		<c:forEach var="dv" items="${dsdv}">
			<div class="shadow bg-main-color p-0 col-md-5 col-lg-3 me-3 mb-5 position-relative rounded">
				<img class="bg-main-color border border border-0 img-thumbnail menu-img" alt="" src="${dv.getAnh() }">
				<h4 class="text-center">${dv.getTendv() }</h4>
				<a class="text-decoration-none text-center text-white d-block mb-5" href="#">Giá: ${dv.getGia() } VNĐ</a> <br>
				<button type="button" class="d-inline btn btn-secondary position-absolute bottom-0 start-50 translate-middle" data-bs-toggle="modal" data-bs-target="#<c:out value="${dv.getMadv()}" />">
					<a class="text-decoration-none text-white" href="#">Chi tiết</a>
				</button>
				
<!-- 			MODAL CHI TIET DICH VU -->
				<div class="modal fade" id="<c:out value="${dv.getMadv()}" />" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<img class="img-thumbnail" src="${dv.getAnh() }" alt="">
								<h5 class="text-center">${dv.getTendv()}</h5>
								<a class="text-center d-block text-decoration-none" href="">Giá: ${dv.getGia()}VNĐ</a>
								<p>${dv.getGioithieu()}</p>
							</div>
							<div class="modal-footer">
								<a class="btn btn-secondary" href="GioHangController?madv=${dv.getMadv()}&tendv=${dv.getTendv()}&gia=${dv.getGia()}">
									<i class="bi bi-cart4"></i>
								</a>
								<button type="button" class="btn btn-danger"
									data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
    </div>
    
<!--MODAL GIỎ HÀNG -->
	<div class="modal fade" id="showgiohang"
		tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog mw-100 mx-1 my-3">
			<div class="modal-content">
				<div class="modal-body p-0">
					<table class="table table-hover">
						<thead>
							<th>Tên món</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Thành tiền</th>
							<th>Sửa</th>
							<th>Xóa Hàng</th>
						</thead>
						<%if(session.getAttribute("gh")!=null){ %>
						<%
						GioHangBo gh = (GioHangBo)session.getAttribute("gh");
						for(GioHangBean ghItem: gh.ds) {%>
						<tr>
							<td><%=ghItem.getTendv() %></td>
							<td><%=ghItem.getGia() %></td>
							<td><%=ghItem.getSoluongmua() %></td>
							<td><%=ghItem.getThanhtien() %></td>
							<td>
								<form action="SuaHangController" method="post">
									<input type="hidden" name="madv" value="<%=ghItem.getMadv()%>">
									<input type="number" name="txtsl" class="quantity-input"
										onkeyup="handleQuantityInput(event, this)"> 
									<input type="submit" style="display: none;">
								</form>
							</td>
							<td><a href="XoaHangController?madv=<%=ghItem.getMadv()%>">Xóa</a></td>
						</tr>
						<% 	}%>
						<tr><th colspan="6">Tổng: <%=gh.Tong() %> VNĐ</th></tr>
					<%} %>
					</table>
				</div>
				<div class="modal-footer">
					<a href="XacNhanController" type="button" class="btn bg-main-color text-white">
						Xác nhận thanh toán
					</a>
					<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
				</div>
				
			</div>
		</div>
	</div>
<!-- MODAL LỊCH SỬ MUA HÀNG -->
	<div class="modal fade" id="lichsumodal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog mw-100">
			<div class="modal-content w-100">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Lịch sử mua hàng</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body p-0">
					<table class="table table-hover border border-bottom-0 mb-0">
						<thead class="table-secondary">
							<th>Tên dịch vụ</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Ngày mua</th>
							<th>Thành tiền</th>
						</thead>
						<c:set var="lsList" value="${sessionScope.lsList}" />
						<c:if test="${not empty lsList}"> 
							<c:forEach var="lsItem" items="${lsList}"> 
								<tr>
									<td>${lsItem.getTendv()}</td>
									<td>${lsItem.getGia()}</td>
									<td>${lsItem.getSoluongmua()}</td>
									<td>${lsItem.getNgaymua()}</td>
									<td>${lsItem.getThanhtien()}</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<footer class="bg-main-color py-5">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<h3 class="mb-4">Liên hệ</h3>
					<p><i class="bi bi-person-fill me-2"></i>Phan Văn Duyên</p>
					<p><i class="bi bi-phone me-2"></i> 0387628258</p>
					<p><i class="bi bi-envelope me-2"></i>phanvanduyen01022002@gmail.com</p>
					<p>
						<i class="bi bi-facebook me-2"></i>
						<a href="https://www.facebook.com/MeoQT0/" target="_blank">facebook.com/MeoQT0</a>
					</p>
					<p><i class="bi bi-geo-alt me-2"></i>5/9 Đặng Văn Ngữ, An Đông, TPHuế, Thừa Thiên Huế</p>
				</div>
				<div class="col-lg-6">
	                <p><i class="bi bi-clock me-2"></i>Giờ làm việc: Thứ Hai - Chủ Nhật: 9:00 AM - 9:00 PM</p>
	                <p><i class="bi bi-info-circle me-2"></i>Mang đến cho bạn những trải nghiệm ẩm thực tuyệt vời.</p>
	            </div>
			</div>
			<div class="row mt-4">
				<div class="col-md-12 text-center">
					<p class="mb-0">© 2023 by Ẩm thực Huế. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	<!--JAVASCRIPT -->
	<script>
		// 		Xử lý khi thay đổi option thì chuyển dữ liệu sang cho sevlet xử lý
		document.getElementById("optionSelect").addEventListener(
				"change",
				function() {
					var selectedOption = this.value;
					window.location.href = "DichVuController?ml="
							+ selectedOption;
				});
		// 		Xử lý khi nhấn vào thì sẽ scroll đến nơi yêu cầu
		function scrollToElement(id) {
			var element = document.getElementById(id);
			if (element) {
				var offset = element.offsetTop - 90; // Thêm khoảng cách 80px
				window.scrollTo({
					top : offset,
					behavior : "smooth"
				});
			}
		}
		// 		Xử lý lấy dữ liệu từ input, khi nhấn "Enter" thì truyền dữ liệu sang servlet
		function handleQuantityInput(event, input) {
			if (event.key === 'Enter') {
				input.form.submit();
			}
		}
	</script>
</body>
</html>