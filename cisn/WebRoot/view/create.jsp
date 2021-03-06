<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<!DOCTYPE html>

<html >
	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>
			CISN
		</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!--begin::Base Styles -->
		<link href="${path}/assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${path}/assets/vendors/base/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Base Styles -->
		<link rel="shortcut icon" href="${path}/assets/vendors/default/media/img/logo/favicon.ico" />
	</head>
	<!-- end::Head -->

    <!-- end::Body -->
	<body class="m--skin- m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
		<!-- begin:: Page -->
		<div class="m-grid m-grid--hor m-grid--root m-page">
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--hor m-login m-login--signin m-login--2 m-login-2--skin-2" id="m_login" style="background-image: url(${path}/assets/app/media/img//bg/bg-3.jpg);">
				<div class="m-grid__item m-grid__item--fluid	m-login__wrapper">
					<div class="m-login__container">
						<div class="m-login__logo">
							<a href="#">
								<img src="${path}/assets/app/media/img//logos/logo-1.png">
							</a>
						</div>
						<div class="m-login__signin">
							<div class="m-login__head">
								<h3 class="m-login__title">
									CISN模拟考试
								</h3>
							</div>
							<form class="m-login__form m-form" method="post" action="${path }/test/test.do">
								<div class="form-group m-form__group">
									<select id="sl-paper" name="paperId" class="form-control m-bootstrap-select m_selectpicker">
										<option value="0">--选择试卷--</option>
										<c:forEach items="${papers}" var="o">
										<option value="${o.id }">${o.title }</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group m-form__group">
									<input class="form-control m-input m-login__form-input--last" type="text" placeholder="姓名"  name="tester" value="">
								</div>
								<div class="row m-login__form-sub">
									<!-- 
									<div class="col m--align-right m-login__form-right">
										<a href="javascript:;" id="m_login_forget_password" class="m-link">
											忘记密码 ?
										</a>
									</div>
									 -->
								</div>
								<div class="m-login__form-action">
									<button type="submit" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air m-login__btn m-login__btn--primary">
										开 始
									</button>
								</div>
							</form>
						</div>
						
						<div class="m-login__signup">
							<div class="m-login__head">
								<h3 class="m-login__title">
									注册
								</h3>
							</div>
							<form id="form-signup" class="m-login__form m-form" action="">
								<div class="form-group m-form__group">
									<input class="form-control m-input" type="text" placeholder="机构代码" name="organCode" >
								</div>
								<div class="form-group m-form__group">
									<input class="form-control m-input" type="text" placeholder="姓名" name="realName" >
								</div>
								<div class="form-group m-form__group">
									<input class="form-control m-input" type="text" placeholder="帐号" name="username" autocomplete="off">
								</div>
								<div class="form-group m-form__group">
									<input class="form-control m-input" type="password" placeholder="密码" name="password" id="password">
								</div>
								<div class="form-group m-form__group">
									<input class="form-control m-input m-login__form-input--last" type="password" placeholder="确认密码" name="rpassword">
								</div>
								<div class="row form-group m-form__group m-login__form-sub">
									<div class="col m--align-left">
										<label class="m-checkbox m-checkbox--focus">
											<input type="checkbox" name="agree">
											同意
											<a href="#" class="m-link m-link--focus">
												服务条款
											</a>
											.
											<span></span>
										</label>
										<span class="m-form__help"></span>
									</div>
								</div>
								<div class="m-login__form-action">
									<button id="m_login_signup_submit" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air  m-login__btn">
										注册
									</button>
									&nbsp;&nbsp;
									<button id="m_login_signup_cancel" class="btn btn-outline-focus m-btn m-btn--pill m-btn--custom  m-login__btn">
										取消
									</button>
								</div>
							</form>
						</div>
						<div class="m-login__forget-password">
							<div class="m-login__head">
								<h3 class="m-login__title">
									忘记密码 ?
								</h3>
								<div class="m-login__desc">
									输入你的帐号找回密码:
								</div>
							</div>
							<form class="m-login__form m-form" action="">
								<div class="form-group m-form__group">
									<input class="form-control m-input" type="text" placeholder="帐号" name="username" id="m_email" autocomplete="off">
								</div>
								<div class="m-login__form-action">
									<button id="m_login_forget_password_submit" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air  m-login__btn m-login__btn--primaryr">
										申请
									</button>
									&nbsp;&nbsp;
									<button id="m_login_forget_password_cancel" class="btn btn-outline-focus m-btn m-btn--pill m-btn--custom m-login__btn">
										取消
									</button>
								</div>
							</form>
						</div>
						<!-- <div class="m-login__account">
							<span class="m-login__account-msg">
								还没有帐号 ?
							</span>
							&nbsp;&nbsp;
							<a href="javascript:;" id="m_login_signup" class="m-link m-link--light m-login__account-link">
								注册
							</a>
						</div> -->
						
						
					</div>
				</div>
			</div>
		</div>
		<!-- end:: Page -->

		<script src="${path}/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
		<script src="${path}/assets/vendors/base/scripts.bundle.js" type="text/javascript"></script>
		<script src="${path}/view/js/login.js" type="text/javascript"></script>
	</body>
	<!-- end::Body -->
</html>

