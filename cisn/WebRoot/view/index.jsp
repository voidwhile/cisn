<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<!DOCTYPE html>

<html >
	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>
			产品售后管理系统
		</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!--begin::Web font -->
		
		<!--end::Web font -->
        <!--begin::Base Styles -->  
        <!--begin::Page Vendors -->
		<link href="${path}/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Page Vendors -->
		<link href="${path}/assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${path}/assets/vendors/base/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${path}/assets/css/style.css" rel="stylesheet" type="text/css" />
		<!--end::Base Styles -->
		<link rel="shortcut icon" href="${path}/assets/vendors/default/media/img/logo/favicon.ico" />
	</head>
	<!-- end::Head -->
    <!-- end::Body -->
	<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
		<!-- begin:: Page -->
		<div class="m-grid m-grid--hor m-grid--root m-page">
			<!-- BEGIN: Header -->
			<header class="m-grid__item    m-header "  data-minimize-offset="200" data-minimize-mobile-offset="200" >
				<div class="m-container m-container--fluid m-container--full-height">
					<div class="m-stack m-stack--ver m-stack--desktop">
						<!-- BEGIN: Brand -->
						<div class="m-stack__item m-brand  m-brand--skin-dark ">
							<div class="m-stack m-stack--ver m-stack--general">
								<div class="m-stack__item m-stack__item--middle m-brand__logo">
									<a href="http://www.windawn.com" class="m-brand__logo-wrapper">
										<img alt="" src="${path}/assets/vendors/default/media/img/logo/logo_default_dark.png"/>
									</a>
								</div>
								<div class="m-stack__item m-stack__item--middle m-brand__tools">
									<!-- BEGIN: Left Aside Minimize Toggle -->
									<a href="javascript:;" id="m_aside_left_minimize_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-desktop-inline-block 
					 ">
										<span></span>
									</a>
									<!-- END -->
							<!-- BEGIN: Responsive Aside Left Menu Toggler -->
									<a href="javascript:;" id="m_aside_left_offcanvas_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-tablet-and-mobile-inline-block">
										<span></span>
									</a>
									<!-- END -->
							<!-- BEGIN: Responsive Header Menu Toggler -->
									<a id="m_aside_header_menu_mobile_toggle" href="javascript:;" class="m-brand__icon m-brand__toggler m--visible-tablet-and-mobile-inline-block">
										<span></span>
									</a>
									<!-- END -->
			<!-- BEGIN: Topbar Toggler -->
									<a id="m_aside_header_topbar_mobile_toggle" href="javascript:;" class="m-brand__icon m--visible-tablet-and-mobile-inline-block">
										<i class="flaticon-more"></i>
									</a>
									<!-- BEGIN: Topbar Toggler -->
								</div>
							</div>
						</div>
						<!-- END: Brand -->
						<div class="m-stack__item m-stack__item--fluid m-header-head" id="m_header_nav">
							<div id="m_header_menu" class="m-header-menu m-aside-header-menu-mobile m-aside-header-menu-mobile--offcanvas  m-header-menu--skin-light m-header-menu--submenu-skin-light m-aside-header-menu-mobile--skin-dark m-aside-header-menu-mobile--submenu-skin-dark "  >
								<ul class="m-menu__nav  m-menu__nav--submenu-arrow ">
									<li class="m-nav__item m-nav__item--home" style="padding-top: 1.5rem;padding-left: 1.5rem;">
										<a href="#" class="m-nav__link m-nav__link--icon">
											<i id="i-icon" class="m-menu__link-icon flaticon-line-graph"></i>
										</a>
									</li>
									<li class="m-menu__item  m-menu__item--submenu m-menu__item--rel"  data-menu-submenu-toggle="click" data-redirect="true" aria-haspopup="true">
										<h3 id="h-title" class="m-subheader__title m-subheader__title--separator">
											
										</h3>		
									</li>
								</ul>
								
							</div>
							<!-- BEGIN: Topbar -->
							<div id="m_header_topbar" class="m-topbar  m-stack m-stack--ver m-stack--general">
								<div class="m-stack__item m-topbar__nav-wrapper">
									<ul class="m-topbar__nav m-nav m-nav--inline">
										<li class="m-nav__item m-topbar__user-profile m-topbar__user-profile--img  m-dropdown m-dropdown--medium m-dropdown--arrow m-dropdown--header-bg-fill m-dropdown--align-right m-dropdown--mobile-full-width m-dropdown--skin-light" data-dropdown-toggle="click">
											<a href="#" class="m-nav__link m-dropdown__toggle">
												<span class="m-topbar__userpic">
													<img src="${path}/assets/app/media/img/users/user4.png" class="m--img-rounded m--marginless m--img-centered" alt=""/>
												</span>
												<span class="m-topbar__username m--hide">
													Nick
												</span>
											</a>
											<div class="m-dropdown__wrapper">
												<span class="m-dropdown__arrow m-dropdown__arrow--right m-dropdown__arrow--adjust"></span>
												<div class="m-dropdown__inner">
													<div class="m-dropdown__header m--align-center" style="background: url(assets/app/media/img/misc/user_profile_bg.jpg); background-size: cover;">
														<div class="m-card-user m-card-user--skin-dark">
															<div class="m-card-user__pic">
																<img src="${path}/assets/app/media/img/users/user4.png" class="m--img-rounded m--marginless" alt=""/>
															</div>
															<div class="m-card-user__details">
																<span class="m-card-user__name m--font-weight-500">
																	${sessionAdmin.user.username }
																</span>
																<a href="javascript:;" class="m-card-user__email m--font-weight-300 m-link">
																	${sessionAdmin.user.organName }
																</a>
															</div>
														</div>
													</div>
													<div class="m-dropdown__body">
														<div class="m-dropdown__content">
															<ul class="m-nav m-nav--skin-light">
																<li class="m-nav__item">
																	<div class="m-nav__link" data-toggle="modal" data-target="#m-user-repwd">
																		<i class="m-nav__link-icon flaticon-lifebuoy"></i>
																		<span class="m-nav__link-text">
																			修改密码
																		</span>
																	</div>
																</li>
																<li class="m-nav__separator m-nav__separator--fit"></li>
																<li class="m-nav__item">
																	<a href="${path}/logout.do" class="btn m-btn--pill    btn-secondary m-btn m-btn--custom m-btn--label-brand m-btn--bolder">
																		退出
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li id="m_quick_sidebar_toggle" class="m-nav__item">
											<a href="#" class="m-nav__link m-dropdown__toggle">
												<span class="m-nav__link-icon">
													<i class="flaticon-grid-menu"></i>
												</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<!-- END: Topbar -->
						</div>
					</div>
				</div>
			</header>
			<!-- END: Header -->		
			<!-- begin::Body -->
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
				<!-- BEGIN: Left Aside -->
				<button class="m-aside-left-close  m-aside-left-close--skin-dark " id="m_aside_left_close_btn">
					<i class="la la-close"></i>
				</button>
				<div id="m_aside_left" class="m-grid__item	m-aside-left  m-aside-left--skin-dark ">
					<!-- BEGIN: Aside Menu -->
					<div 
						id="m_ver_menu" 
						class="m-aside-menu  m-aside-menu--skin-dark m-aside-menu--submenu-skin-dark " 
						data-menu-vertical="true"
						 data-menu-scrollable="false" data-menu-dropdown-timeout="500"  
						>
						<ul class="m-menu__nav  m-menu__nav--dropdown-submenu-arrow ">
							<li class="m-menu__section">
								<h4 class="m-menu__section-text">
									iProdService
								</h4>
								<i class="m-menu__section-icon flaticon-more-v3"></i>
							</li>
							
							<c:forEach items="${menus }" var="m" varStatus="s">
							<li class="m-menu__item  m-menu__item--submenu <c:if test="${s.index==0 }">m-menu__item--active</c:if>" aria-haspopup="true"  data-menu-submenu-toggle="hover">
								<a  href="${path }${m.url}" target="iframe" class="m-menu__link m-menu__toggle" onclick="showTitle('${m.icon }','${m.name}')">
									<i class="m-menu__link-icon ${m.icon }"></i>
									<span class="m-menu__link-text">
										${m.name }
									</span>
									<i class="m-menu__ver-arrow la la-angle-right"></i>
								</a>
								<c:if test="${!empty m.children }">
								<div class="m-menu__submenu ">
									<span class="m-menu__arrow"></span>
									<ul class="m-menu__subnav">
										<c:forEach items="${m.children }" var="sub">
										<li class="m-menu__item " aria-haspopup="true" >
											<a  href="${path }${sub.url}" target="iframe" class="m-menu__link m-menu__toggle" onclick="showTitle('${sub.icon }','${sub.name}')">
												<i class="m-menu__link-icon ${sub.icon }">
													<span></span>
												</i>
												<span class="m-menu__link-text">
													${sub.name }
												</span>
											</a>
										</li>
										</c:forEach>
										
									</ul>
								</div>
								</c:if>
							</li>
							</c:forEach>
						</ul>
					</div>
					<!-- END: Aside Menu -->
				</div>
				<!-- END: Left Aside -->
				<iframe src="" id="iframe" name="iframe" style="border: 0px;width:100%" ></iframe>
			</div>
			<!-- 修改登录密码窗口 -->
			<div id="m-user-repwd" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header" style="background: #0288D1;">
							<h5 class="modal-title" id="exampleModalLabel" style="color: #ffffff;">
								修改密码
							</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: #ffffff;">
								<span aria-hidden="true">
									&times;
								</span>
							</button>
						</div>
						<div class="modal-body">
							<form id="form-user-repwd">
								<input type="hidden"  id="hid-userid" name="id" value="${sessionAdmin.user.id }">
								<div class="form-group">
									<label for="ip-pwd" class="form-control-label">
										新密码
									</label>
									<input type="password" class="form-control" id="ip-pwd" name="password">
								</div>
								<div class="form-group">
									<label for="ip-repwd" class="form-control-label">
										确认密码
									</label>
									<input type="password" class="form-control" id="ip-repwd">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button id="btn-repwd-save" type="button" class="btn btn-info" onclick="repwd()">
								保存
							</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">
								取消
							</button>
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
		
		<script src="${path}/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
		<script src="${path}/assets/vendors/base/scripts.bundle.js" type="text/javascript"></script>
		<script type="text/javascript">
		
			function showTitle(cls,title){
				$("#h-title").html(title);
				$("#i-icon").removeClass();
				$("#i-icon").addClass("m-menu__link-icon "+cls);
			}
			function repwd(){
				var pwd = $("#ip-pwd").val();
				var repwd = $("#ip-repwd").val();
				if(pwd!=repwd){
					swal("密码不一致，请确认", "", "error");
					return;
				}
				$.ajax({
					url:path+"/user/repwd.do",
					type:"post",
					dataType:"json",
					data:$("#form-user-repwd").serialize(),
					success:function(data){
						if(data.rltCode=='0000'){
							swal("密码修改成功", '', "success");
							$("#m-user-repwd").modal("hide");
						}else{
							swal("密码修改失败", data.rltMsg, "error");
						}
					}
				});
			}
		</script>
	</body>
	<!-- end::Body -->
</html>
