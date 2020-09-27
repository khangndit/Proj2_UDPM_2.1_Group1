<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="app-sidebar sidebar-shadow bg-asteroid sidebar-text-light">
	<div class="app-header__logo">
		<div class="logo-src"></div>
		<div class="header__pane ml-auto">
			<div>
				<button type="button"
					class="hamburger close-sidebar-btn hamburger--elastic"
					data-class="closed-sidebar">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<div class="app-header__mobile-menu">
		<div>
			<button type="button"
				class="hamburger hamburger--elastic mobile-toggle-nav">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</button>
		</div>
	</div>
	<div class="app-header__menu">
		<span>
			<button type="button"
				class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
				<span class="btn-icon-wrapper"> <i
					class="fa fa-ellipsis-v fa-w-6"></i>
				</span>
			</button>
		</span>
	</div>
	<div class="scrollbar-sidebar ">
		<div class="app-sidebar__inner ">
			<ul class="vertical-nav-menu">
				<!-- logo -->
				<li style="font-size: 20px" class="app-sidebar__heading">QUẢN
					LÝ WEBSITE</li>
				<li><a href="#"> <i
						class="metismenu-icon fa fa-address-card-o"></i> TIN TỨC <i
						class="metismenu-state-icon fa fa-caret-down" aria-hidden="true"></i>
				</a>
					<ul>
						<li><a href="index"> <i class="metismenu-icon"></i> QUẢN
								LÝ BÀI VIẾT
						</a></li>
						<li class="mm-active"><a href="danhmuc"> <i class="metismenu-icon"> </i>QUẢN
								LÝ DANH MỤC
						</a></li>
						<li><a href="quangcao"><i class="metismenu-icon"> </i>QUẢN
								LÝ QUẢNG CÁO </a></li>
					</ul></li>
				<!-- thống kê -->
				<li><a href="#"> <i class="metismenu-icon fa fa-pie-chart"></i>
						THỐNG KÊ <i class="metismenu-state-icon fa fa-caret-down"
						aria-hidden="true"></i>
				</a>
					<ul>
						<li><a href="#"> <i class="metismenu-icon pe-7s-diamond"></i>
								DOANH THU <i class="metismenu-state-icon fa fa-caret-down"
								aria-hidden="true"></i>
						</a>
							<ul>
								<li><a style="font-size: 12px" href="tkphongvien"> <i
										class="metismenu-icon"></i> PHÓNG VIÊN
								</a></li>
								<li><a style="font-size: 12px" href="tkquangcao"> <i
										class="metismenu-icon"> </i>QUẢNG CÁO
								</a></li>
							</ul></li>
						<li><a href="tkluotxem"> <i class="metismenu-icon"></i>LƯỢT
								XEM
						</a></li>
						<li><a href="tkbaiviet"><i class="metismenu-icon"> </i>BÀI
								VIẾT </a></li></li>
			</ul>

			<!-- quản lý người dùng -->
			<li><a href="#"> <i class="metismenu-icon fa fa-user"></i>
					NGƯỜI DÙNG <i class="metismenu-state-icon fa fa-caret-down"
					aria-hidden="true"></i>
			</a>
				<ul>
					<li><a href="nguoidung"> <i class="metismenu-icon"></i>
							QUẢN LÝ NGƯỜI DÙNG
					</a></li>
					<li><a href="phongvien"> <i class="metismenu-icon"></i>
							QUẢN LÝ PHÓNG VIÊN
					</a></li>
					<li><a href="nhaquangcao"> <i class="metismenu-icon"></i>
							QUẢN LÝ NHÀ QUẢNG CÁO
					</a></li>
				</ul></li>
		</div>
	</div>
</div>
<div class="app-main__outer">
	<div class="app-main__inner">
		<!-- tiêu đề nội dung admin -->
		<div class="app-page-title" style="height: 80px;">
			<div class="page-title-wrapper">
				<div class="page-title-heading">
					<h3>QUẢN LÝ DANH MỤC</h3>
				</div>
			</div>
		</div>
		<!-- Nội dung -->
		
		<div class="mb-3">
			<form class="form-inline" method="post">
				<div class="form-group">
					<label style="font-weight: bold; font-size: 15px" for="inputPassword6">Tên danh mục</label> <input type="text"
						name="categoriesName" id="categoriesName"
						class="form-control mx-sm-3" aria-describedby="passwordHelpInline"
						required="required">
				</div>
				<button formaction="/admin/createCategories" type="submit"
					class="btn btn-outline-primary">THÊM</button>
			</form>
			<div style="color: darkgreen; font-weight: bold; font-size: 20px; float: right;" ">${messageDM}</div>
		</div>
		
		<div>
			<table class="table table-striped table-dark table-hover">
				<thead>
					<tr style="color: coral">
						<th colspan="">#</th>
						<th colspan="">Tên danh mục</th>
						<th colspan="">Hành động</th>
					</tr>
				</thead>
				<c:forEach var="c" items="${listCat}">
					<tbody>
						<tr>
							<td>${c.id}</td>
							<td style="width: 80%">${c.categoriesName}</td>
							<td>
								<!-- xem -->
									<a class="btn btn-outline-primary" href="/admin/categoriesEdit/${c.id}"
										aria-hidden="true" href="/admin/newsEdit/${c.id}"><i class="fa fa-eye" aria-hidden="true"></i></a>
									
										<a class="btn btn-outline-danger" data-toggle="collapse" href="#collapseExample${c.id}x" role="button" aria-expanded="false" aria-controls="collapseExample">
													   <i class="fa fa-trash-o"
														aria-hidden="true"></i>
												</a>
												<div class="collapse" id="collapseExample${c.id}x">
												  <div class="card card-body">
												   <p style="color: black;">Bạn có chắc chắn muốn xóa danh mục ?</p> 
												   <a class="btn btn-outline-danger"
														href="/admin/categoriesDelete/${c.id}" class="fa fa-trash-o"
														aria-hidden="true"> Xóa
													</a>
												  </div>
												</div>
							</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>

		</div>
	</div>

</div>