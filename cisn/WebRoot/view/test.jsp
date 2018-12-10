<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/taglib.jsp" %>    
<!DOCTYPE html>

<html >
	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		
		<meta name="description" content="Treeview examples">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
        <!--begin::Base Styles -->
		<link href="${path }/assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${path }/assets/vendors/base/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${path }/assets/css/style.css" rel="stylesheet" type="text/css" />
		<!--end::Base Styles -->
		<link rel="shortcut icon" href="${path }/assets/vendors/default/media/img/logo/favicon.ico" />
	</head>
	<!-- end::Head -->
    <!-- end::Body -->
	<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
		<!-- begin:: Page -->
		<div class="m-grid m-grid--hor m-grid--root m-page">
		<!-- begin::Body -->
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
				<div class="m-grid__item m-grid__item--fluid m-wrapper">
					
					<div class="m-content">
						<div class="row">
							
							<div class="col-xl-12" >
								<select id="sl-paper" name="paperId" class="form-control m-bootstrap-select m_selectpicker" onchange="paperChange();">
									<c:forEach items="${papers}" var="o">
									<option value="${o.id }" <c:if test="${o.id==paperId }">selected</c:if> >${o.title }</option>
									</c:forEach>
								</select>
								<br>
								<br>
								<form id="form-test">
									一。单选题
									<c:forEach items="${questions }" var="qt">
										<c:if test="${qt.type==1 }">
										<div class="form-group">
											<label  class="form-control-label">
												${qt.orders }.${qt.title}
											</label>
											<br>
											<c:forEach items="${qt.answers }" var="a">
												<label class="m-radio">
													<input id="rd-${a.id}" name="rd-${qt.id }" type="radio" value="${a.id }" onclick="radioClick('${qt.id}','${a.label }');">
													${a.label }:${a.val }
													<span></span>
												</label>
												&nbsp;&nbsp;&nbsp;
											</c:forEach>
											<c:forEach items="${qt.stdAnswers }" var="s">
												<input type="hidden" id="hid-std-single-${qt.id }" value="${s.label }">
											</c:forEach>
										</div>
										</c:if>
									</c:forEach>
									二。多选题
									<c:forEach items="${questions }" var="qt">
										<c:if test="${qt.type==2 }">
											<div class="form-group">
											<label  class="form-control-label">
												${qt.orders }.${qt.title}
											</label>
											<br>
											<c:forEach items="${qt.answers }" var="a">
												<label class="m-checkbox">
													<input id="chk-${a.id }" name="chk-${qt.id }" type="checkbox" value="${a.id }" onclick="checkClick('${a.id }','${qt.id}','${a.label }');">
													${a.label }:${a.val }
													<span></span>
												</label>
												&nbsp;&nbsp;&nbsp;
											</c:forEach>
											<c:forEach items="${qt.stdAnswers }" var="s" >
												<input type="hidden" name="hid-std-multiple-${qt.id }" value="${s.label }">
											</c:forEach>
										</div>
										</c:if>
									</c:forEach>
									三。简答题
									<c:forEach items="${questions }" var="qt">
										<c:if test="${qt.type==3 }">
											<div class="form-group">
												<div class="m-accordion m-accordion--default m-accordion--solid m-accordion--section  m-accordion--toggle-arrow" id="m_accordion_7" role="tablist">
													<!--begin::Item-->
													<div class="m-accordion__item">
														<div class="m-accordion__item-head collapsed" role="tab" id="m_accordion_7_item_1_head" data-toggle="collapse" href="#m_accordion_${qt.id }_item_1_body" aria-expanded="    false">
															<span class="m-accordion__item-icon">
																<i class="fa  flaticon-alert-2"></i>
															</span>
															<span class="m-accordion__item-title">
																${qt.orders }.${qt.title}
															</span>
															<span class="m-accordion__item-mode"></span>
														</div>
														<div class="m-accordion__item-body collapse" id="m_accordion_${qt.id }_item_1_body" role="tabpanel" aria-labelledby="m_accordion_7_item_1_head" data-parent="#m_accordion_7">
															<div class="m-accordion__item-content">
															答：
																<c:forEach items="${qt.answers }" var="a">
																	<p>${a.label}${a.val }</p>
																</c:forEach>
															</div>
														</div>
													</div>
												</div>
												<br>
											</div>
										</c:if>
									</c:forEach>
									四。论述题
									<c:forEach items="${questions }" var="qt">
										<c:if test="${qt.type==4 }">
											<div class="form-group">
												<div class="m-accordion m-accordion--default m-accordion--solid m-accordion--section  m-accordion--toggle-arrow" id="m_accordion_7" role="tablist">
													<!--begin::Item-->
													<div class="m-accordion__item">
														<div class="m-accordion__item-head collapsed" role="tab" id="m_accordion_7_item_1_head" data-toggle="collapse" href="#m_accordion_${qt.id }_item_1_body" aria-expanded="    false">
															<span class="m-accordion__item-icon">
																<i class="fa  flaticon-alert-2"></i>
															</span>
															<span class="m-accordion__item-title">
																${qt.orders }.${qt.title}
															</span>
															<span class="m-accordion__item-mode"></span>
														</div>
														<div class="m-accordion__item-body collapse" id="m_accordion_${qt.id }_item_1_body" role="tabpanel" aria-labelledby="m_accordion_7_item_1_head" data-parent="#m_accordion_7">
															<div class="m-accordion__item-content">
															答：
																<c:forEach items="${qt.answers }" var="a">
																	<p>${a.label}${a.val }</p>
																</c:forEach>
															</div>
														</div>
													</div>
												</div>
												<br>
											</div>
										</c:if>
									</c:forEach>
								</form>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<!-- end:: Body -->

		</div>
		<!-- end:: Page -->
		<div class="m-scroll-top m-scroll-top--skin-top" data-toggle="m-scroll-top" data-scroll-offset="500" data-scroll-speed="300">
			<i class="la la-arrow-up"></i>
		</div>
    	<!--begin::Base Scripts -->
		<script src="${path }/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
		<script src="${path }/assets/vendors/base/scripts.bundle.js" type="text/javascript"></script>
		<script src="${path }/view/js/test.js" type="text/javascript"></script>
		<!--end::Base Scripts -->   
	</body>
	<!-- end::Body -->
</html>

