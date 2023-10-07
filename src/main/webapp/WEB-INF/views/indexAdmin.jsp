<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="head.jsp"></jsp:include>
<!-- vector map CSS -->
<link href="vendors/vectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" type="text/css" />
<!-- Morris Charts CSS -->
<link href="vendors/morris.js/morris.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
		
	<!-- Main Content -->
    <div class="hk-pg-wrapper">
		<!-- Container -->
		<div class="container mt-xl-50 mt-sm-30 mt-15">
			<!-- Row -->
               <div class="row">
                   <div class="col-xl-12">
					<div class="hk-row">
						<div class="col-sm-12">
							<div class="card-group hk-dash-type-2">
								<div class="card card-sm">
									<div class="card-body">
										<div class="d-flex justify-content-between mb-5">
											<div>
												<span class="d-block font-15 text-dark font-weight-500">일반회원</span>
											</div>
											<div>
												<span class="text-danger font-14 font-weight-500">-15%</span>
											</div>
										</div>
										<div>
											<span class="d-block display-4 text-dark mb-5">18M</span>
											<small class="d-block">당일 신규 가입 회원(명)</small>
										</div>
									</div>
								</div>
							
								<div class="card card-sm">
									<div class="card-body">
										<div class="d-flex justify-content-between mb-5">
											<div>
												<span class="d-block font-15 text-dark font-weight-500">부동산회원</span>
											</div>
											<div>
												<span class="text-danger font-14 font-weight-500">-15.5%</span>
											</div>
										</div>
										<div>
											<span class="d-block display-4 text-dark mb-5"><span class="counter-anim">468,856</span></span>
											<small class="d-block">당일 신규 가입 회원(개)</small>
										</div>
									</div>
								</div>
							
								<div class="card card-sm">
									<div class="card-body">
										<div class="d-flex justify-content-between mb-5">
											<div>
												<span class="d-block font-15 text-dark font-weight-500">매물</span>
											</div>
											<div>
												<span class="text-warning font-14 font-weight-500">-2.8%</span>
											</div>
										</div>
										<div>
											<span class="d-block display-4 text-dark mb-5">73</span>
											<small class="d-block">당일 등록된 매물(건)</small>
										</div>
									</div>
								</div>
							
								<div class="card card-sm">
									<div class="card-body">
										<div class="d-flex justify-content-between mb-5">
											<div>
												<span class="d-block font-15 text-dark font-weight-500">신고</span>
											</div>
											<div>
												<span class="text-danger font-14 font-weight-500">-75%</span>
											</div>
										</div>
										<div>
											<span class="d-block display-4 text-dark mb-5">48:65</span>
											<small class="d-block">당일 신고(건)</small>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				
					<div class="hk-row">
						<div class="col-lg-8">
							<div class="card card-refresh">
								<div class="refresh-container">
									<div class="loader-pendulums"></div>
								</div>
								<div class="card-header card-header-action">
									<h6>sales analytics</h6>
									<div class="d-flex align-items-center card-action-wrap">
										<a href="#" class="inline-block refresh mr-15">
											<i class="ion ion-md-radio-button-off"></i>
										</a>
										<div class="inline-block dropdown">
											<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-md-more"></i></a>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#">Action</a>
												<a class="dropdown-item" href="#">Another action</a>
												<a class="dropdown-item" href="#">Something else here</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Separated link</a>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<div class="mb-20">
										<div class="d-inline-block mb-15 mr-60">
											<span class="d-block text-capitalize">Traffic</span>
											<span class="d-block font-weight-600 font-18">124,222</span>
											<span class="d-block text-success mt-5">
												<i class="zmdi zmdi-caret-up pr-5 font-20"></i><span class="weight-500">+15%</span>
											</span>
										</div>
										<div class="d-inline-block mb-15 mr-60">
											<span class="d-block text-capitalize">Order</span>
											<span class="d-block font-weight-600 font-18">24,222</span>
											<span class="d-block text-danger mt-5">
												<i class="zmdi zmdi-caret-down pr-5 font-20"></i><span class="weight-500">-11%</span>
											</span>
										</div>
										<div class="d-inline-block">
											<span class="d-block text-capitalize">Revenue</span>
											<span class="d-block font-weight-600 font-18">$124,222</span>
											<span class="d-block text-danger mt-5">
												<i class="zmdi zmdi-caret-up pr-5 font-20"></i><span class="weight-500">-13%</span>
											</span>
										</div>
									</div>
									<div id="chart_1" class="morris-chart" style="height:345px;"></div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-header card-header-action">
									<h6>최근 신고</h6>
									<div class="d-flex align-items-center card-action-wrap">
										<a href="#" class="inline-block refresh mr-15">
											<i class="ion ion-md-arrow-down"></i>
										</a>
										<a href="#" class="inline-block full-screen">
											<i class="ion ion-md-expand"></i>
										</a>
									</div>
								</div>
								<div class="card-body pa-0">
									<div class="table-wrap">
										<div class="table-responsive">
											<table class="table table-striped table-sm table-hover mb-0">
												<thead class="">
													<tr>
														<th class="w-25">순번</th>
														<th>매물번호</th>
														<th>내용</th>
														<th>부동산명</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="item" items="${fakeList}">
														<tr>
															<td>${item.fakeNo}</td>
															<td>${item.itemNo}</td>
															<td>${item.fakeContent}</td>
															<td>${item.compName}</td>
															<td>${item.useAt}</td>
														</tr>
													</c:forEach>													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-header card-header-action">
									<h6>신규 가입자</h6>
									<div class="d-flex align-items-center card-action-wrap">
										<a href="#" class="inline-block refresh mr-15">
											<i class="ion ion-md-arrow-down"></i>
										</a>
										<a href="#" class="inline-block full-screen">
											<i class="ion ion-md-expand"></i>
										</a>
									</div>
								</div>
								<div class="card-body pa-0">
									<div class="table-wrap">
										<div class="table-responsive">
											<table class="table table-striped table-sm table-hover mb-0">
												<thead class="">
													<tr>
														<th class="w-25">사용자번호</th>
														<th>아이디</th>
														<th>이름</th>
														<th>가입날짜</th>
														<th>상태</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="item" items="${userList}">
														<tr>
															<td>${item.userNo}</td>
															<td>${item.userId}</td>
															<td>${item.userName}</td>
															<td>${item.registDate}</td>
															<td>${item.useAt}</td>
														</tr>
													</c:forEach>													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- /Row -->
        </div>
        <!-- /Container -->
    </div>
    <!-- /HK Wrapper -->
    
    <!-- jQuery -->
    <script src="../../resources/vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="../../resources/dist/js/jquery.slimscroll.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="../../resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="../../resources/dist/js/feather.min.js"></script>

    <!-- Toggles JavaScript -->
    <script src="../../resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="../../resources/dist/js/toggle-data.js"></script>
	
	<!-- Counter Animation JavaScript -->
	<script src="../../resources/vendors/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="../../resources/vendors/jquery.counterup/jquery.counterup.min.js"></script>
	
	<!-- Morris Charts JavaScript -->
    <script src="../../resources/vendors/raphael/raphael.min.js"></script>
    <script src="../../resources/vendors/morris.js/morris.min.js"></script>
	
	<!-- EChartJS JavaScript -->
    <script src="../../resources/vendors/echarts/dist/echarts-en.min.js"></script>
    
	<!-- Sparkline JavaScript -->
    <script src="../../resources/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>
	
	<!-- Owl JavaScript -->
    <script src="../../resources/vendors/owl.carousel/dist/owl.carousel.min.js"></script>
	
	<!-- Init JavaScript -->
    <script src="../../resources/dist/js/init.js"></script>
	<script src="../../resources/dist/js/ecStat.min.js"></script>
	<script src="../../resources/dist/js/dashboard5-data.js"></script>

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>