<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="<%=basePath%>/static/css/layui.css"
	media="all">
<link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap.min.css"
	media="all">
<link rel="stylesheet" href="<%=basePath%>/static/css/nalika-icon.css"
	media="all">
<style type="text/css">
	.con{overflow: hidden;cursor: pointer;}
	.con span.span1{ display: block; width: 286px; height: 161px; margin:11.5px 0 0 11.5px;background: rgba(33,33,33,0.8); position: absolute; left: -100%; top: 0; color: #ccc;box-sizing: border-box; font-size: 14px; transition: all 0.5s ease;}
	.con span.span2{ display: block; width: 225px; height: 125px; margin:11.5px 0 0 11.5px;background: rgba(33,33,33,0.8); position: absolute; left: -100%; top: 0; color: #ccc;box-sizing: border-box; font-size: 14px; transition: all 0.5s ease;}
	.con p{padding-left: 10px;}
	.con h4{text-align: center;margin-bottom: 10px;}
	.con:hover span{ left: 0; top: 0; }
	.con:hover h4{ left: 0; top: 0; }
	.con:hover p{ left: 0; top: 0; }
	/*删格化5等份*/
	.layui-col-lg2-4,.layui-col-md2-4,.layui-col-sm2-4,.layui-col-xs2-4{position:relative;display:block;box-sizing:border-box}
	.layui-col-xs2-4{float:left}
	.layui-col-xs2-4{width:19.9999992%}
	.layui-col-xs-offset2-4{margin-left:19.9999992%}
	@media screen and (min-width:768px){
		.layui-col-sm2-4{float:left}
		.layui-col-sm2-4{width:19.9999992%}
		.layui-col-sm-offset2-4{margin-left:19.9999992%}
	}
	@media screen and (min-width:992px){
		.layui-col-md2-4{float:left}
		.layui-col-md2-4{width:19.9999992%}
		.layui-col-md-offset2-4{margin-left:19.9999992%}
	}
	@media screen and (min-width:1200px){
		.layui-col-lg2-4{float:left}
		.layui-col-lg2-4{width:19.9999992%}
		.layui-col-lg-offset2-4{margin-left:19.9999992%}
	}		
</style>
</head>
<body class="layui-layout-body" style="height:auto; overflow:auto;">

	<div class="layui-layout layui-layout-admin">
		<!-- 头部区域 -->
		<div class="layui-header">
			<div class="layui-logo">
				<img src="<%=basePath%>/static/images/logo_hj.png">
			</div>
			<!-- 头部左侧区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="<%=basePath%>/study/index">首页</a></li>
				<li class="layui-nav-item"><a
					href="<%=basePath %>/study/user?name=${USER_SESSION.name}">用户</a></li>
				<li class="layui-nav-item">
					<a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="<%=basePath%>/study/manager">权限管理</a>
						</dd>
					</dl>
				</li>
			</ul>

			<!-- 头部右侧区域 -->
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
					<a href="javascript:;" value="${login_user.name }"> 
						管理员
					</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="<%=basePath %>/study/user?name=${USER_SESSION.name}">
								基本资料
							</a>
						</dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="<%=basePath%>/logout">注销</a></li>
			</ul>
		</div>
		
		<!-- 视频轮播 -->
		<div style="display: flex; justify-content: center; align-items: center; margin-top: 10px; height: 360px;">
			<!-- 内容主体区域 -->
			<div class="layui-carousel" id="lunbo" style="height: 100%">
				<div carousel-item>
					<div>
						<a href="<%=basePath%>/upload/video/1596124509046.mp4"
							target="_blank"> <img alt="课程一"
							src="<%=basePath%>/static/images/lunbo/1.png"
							style="width: 100%; height: 100%">
						</a>
					</div>
					<div>
						<a href="<%=basePath%>/upload/video/1596124509046.mp4"
							target="_blank"> <img alt="课程二"
							src="<%=basePath%>/static/images/lunbo/2.png"
							style="width: 100%; height: 100%">
						</a>
					</div>
					<div>
						<a href="<%=basePath%>/upload/video/1596124509046.mp4"
							target="_blank"> <img alt="课程三"
							src="<%=basePath%>/static/images/lunbo/3.png"
							style="width: 100%; height: 100%">
						</a>
					</div>
					<div>
						<a href="<%=basePath%>/upload/video/1596124509046.mp4"
							target="_blank"> <img alt="课程四"
							src="<%=basePath%>/static/images/lunbo/4.jpg"
							style="width: 100%; height: 100%">
						</a>
					</div>
					<div>
						<a href="<%=basePath%>/upload/video/1596124509046.mp4"
							target="_blank"> <img alt="课程五"
							src="<%=basePath%>/static/images/lunbo/5.jpg"
							style="width: 100%; height: 100%">
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 视频教程 -->
		<div>
			<div style="font-family: PingFang SC; color: #333; font-weight:bold; font-size: 24px; line-height: 50px; margin-left: 20px; position: relative;">
				视频教程</div>
			<div style="margin:20px 20px 20px 40px;">
				<div class="layui-row layui-col-space25">
					<div class="layui-col-xs3 con">
						<img alt="视频一" src="<%=basePath%>/static/images/video/video1.jpg">
						<span class="span1" onclick="playVideo(video_info(0).video_id)">
							<h4 id="video_h1"></h4>
							<p id="video_p_desc_1"></p>
							<p id="video_p_hits_1"></p>
						</span>
					</div>
					<div class="layui-col-xs3 con">
						<img alt="视频二" src="<%=basePath%>/static/images/video/video2.jpg">	
						<span class="span1" onclick="playVideo(video_info(1).video_id)">
							<h4 id="video_h2">视频名称</h4>
							<p id="video_p_desc_2"></p>
							<p id="video_p_hits_2"></p>
						</span>
					</div>
					<div class="layui-col-xs3 con">
						<img alt="视频三" src="<%=basePath%>/static/images/video/video3.jpg">	
						<span class="span1" onclick="playVideo(video_info(2).video_id)">
							<h4 id="video_h3">视频名称</h4>
							<p id="video_p_desc_3"></p>
							<p id="video_p_hits_3"></p>
						</span>
					</div>
					<div class="layui-col-xs3 con">
						<img alt="视频四" src="<%=basePath%>/static/images/video/video4.jpg">	
						<span class="span1" onclick="playVideo(video_info(3).video_id)">
							<h4 id="video_h4">视频名称</h4>
							<p id="video_p_desc_4"></p>
							<p id="video_p_hits_4"></p>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!-- 文档教程 -->
		<div>
			<div style="font-family: PingFang SC; color: #333; font-weight:bold; font-size: 24px; line-height: 50px; margin-left: 20px; position: relative;">
				学习文档
			</div>
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
				<!-- tab标签 -->
				<div style="display: flex;justify-content: center; align-items: center">
					<div style="width: 90%;">
						<ul class="layui-tab-title">
							<li class="layui-this">编程语言文档</li>
							<li>前端文档</li>
							<li>后端文档</li>
							<li>大数据文档</li>
							<li>人工智能文档</li>
						</ul>
					</div>
				</div>
				<div class="layui-tab-content" style="margin:20px 20px 20px 40px;">
					<!-- 编程语言 -->
					<div class="layui-tab-item layui-show">
						<div class="layui-row layui-col-space25">
							<div class="layui-col-xs2-4 con">
								<img alt="文档一" src="<%=basePath%>/static/images/doc/p_l/1.png">
								<span class="span2" onclick="previewDoc(doc_info(0).doc_id)">
									<h4 id="doc_h1"></h4>
									<p id="doc_p_desc_1"></p>
									<p id="doc_p_hits_1"></p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档二" src="<%=basePath%>/static/images/doc/p_l/2.jpg">	
								<span class="span2" onclick="previewDoc(doc_info(1).doc_id)">
									<h4 id="doc_h2"></h4>
									<p id="doc_p_desc_2"></p>
									<p id="doc_p_hits_2"></p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="视频三" src="<%=basePath%>/static/images/doc/p_l/3.webp">	
								<span class="span2" onclick="previewDoc(doc_info(2).doc_id)">
									<h4 id="doc_h3"></h4>
									<p id="doc_p_desc_3"></p>
									<p id="doc_p_hits_3"></p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档四" src="<%=basePath%>/static/images/doc/p_l/4.webp">	
								<span class="span2" onclick="previewDoc(doc_info(3).doc_id)">
									<h4 id="doc_h4"></h4>
									<p id="doc_p_desc_4"></p>
									<p id="doc_p_hits_4"></p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档五" src="<%=basePath%>/static/images/doc/p_l/5.jpg">	
								<span class="span2" onclick="previewDoc(doc_info(4).doc_id)">
									<h4 id="doc_h5"></h4>
									<p id="doc_p_desc_5"></p>
									<p id="doc_p_hits_5"></p>
								</span>
							</div>
						</div>
					</div>
					<!-- 前端 -->
					<div class="layui-tab-item">
						<div class="layui-row layui-col-space25">
							<div class="layui-col-xs2-4 con">
								<img alt="文档一" src="<%=basePath%>/static/images/doc/front_end/1.webp">
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档二" src="<%=basePath%>/static/images/doc/front_end/2.webp">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档三" src="<%=basePath%>/static/images/doc/front_end/3.webp">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档四" src="<%=basePath%>/static/images/doc/front_end/4.webp">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档五" src="<%=basePath%>/static/images/doc/front_end/5.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
						</div>
					</div>
					<!-- 后端 -->
					<div class="layui-tab-item">
						<div class="layui-row layui-col-space25">
							<div class="layui-col-xs2-4 con">
								<img alt="文档一" src="<%=basePath%>/static/images/doc/after_end/1.jpg">
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档二" src="<%=basePath%>/static/images/doc/after_end/2.png">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档三" src="<%=basePath%>/static/images/doc/after_end/3.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档四" src="<%=basePath%>/static/images/doc/after_end/4.png">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档五" src="<%=basePath%>/static/images/doc/after_end/5.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
						</div>
					</div>
					<!-- 大数据 -->
					<div class="layui-tab-item">
						<div class="layui-row layui-col-space25">
							<div class="layui-col-xs2-4 con">
								<img alt="文档一" src="<%=basePath%>/static/images/doc/big_data/1.webp">
								<span class="span2">
									<h4>视频名称</h4>
									<p><b>视频描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档二" src="<%=basePath%>/static/images/doc/big_data/2.webp">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档三" src="<%=basePath%>/static/images/doc/big_data/3.webp">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档四" src="<%=basePath%>/static/images/doc/big_data/4.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档五" src="<%=basePath%>/static/images/doc/big_data/5.png">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
						</div>
					</div>
					<!-- 人工智能 -->
					<div class="layui-tab-item">
						<div class="layui-row layui-col-space25">
							<div class="layui-col-xs2-4 con">
								<img alt="文档一" src="<%=basePath%>/static/images/doc/ai/1.jpg">
								<span class="span2">
									<h4>视频名称</h4>
									<p><b>视频描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档二" src="<%=basePath%>/static/images/doc/ai/2.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档三" src="<%=basePath%>/static/images/doc/ai/3.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档四" src="<%=basePath%>/static/images/doc/ai/4.jpg">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
							<div class="layui-col-xs2-4 con">
								<img alt="文档五" src="<%=basePath%>/static/images/doc/ai/5.png">	
								<span class="span2">
									<h4>文档名称</h4>
									<p><b>文档描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
									<p><b>点击量:</b>xx</p>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 常见软件下载 -->
		<div>
			<div style="font-family: PingFang SC; color: #333; font-weight:bold; font-size: 24px; line-height: 50px; margin-left: 20px; position: relative;">
				常见软件下载
			</div>
			<div style="display: flex;justify-content: center; align-items: center">
				<div style="width: 90%;">
					<ul class="layui-tab-title">
						<li class="layui-this">编程语言</li>
						<li>IDE工具</li>
						<li>大数据组件</li>
						<li>数据库</li>
						<li>AI</li>
					</ul>
				</div>
			</div>
			<div class="layui-tab-content" style="margin:20px 20px 20px 40px;">
				<!-- 编程语言 -->
				<div class="layui-tab-item layui-show">
					<div class="layui-row layui-col-space25">
						<div class="layui-col-xs2-4 con">
							<img alt="软件一" src="<%=basePath%>/static/images/software/p_l/5.jpg">
							<span class="span2">
								<h4>软件名称</h4>
								<p><b>软件描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
								<p><b>下载量:</b>xx</p>
							</span>
						</div>
						<div class="layui-col-xs2-4 con">
							<img alt="文档二" src="<%=basePath%>/static/images/software/p_l/1.jpg">	
							<span class="span2">
								<h4>软件名称</h4>
								<p><b>软件描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
								<p><b>下载量:</b>xx</p>
							</span>
						</div>
						<div class="layui-col-xs2-4 con">
							<img alt="视频三" src="<%=basePath%>/static/images/software/p_l/2.jpg">	
							<span class="span2">
								<h4>软件名称</h4>
								<p><b>软件描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
								<p><b>下载量:</b>xx</p>
							</span>
						</div>
						<div class="layui-col-xs2-4 con">
							<img alt="文档四" src="<%=basePath%>/static/images/software/p_l/3.png">	
							<span class="span2">
								<h4>软件名称</h4>
								<p><b>软件描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
								<p><b>下载量:</b>xx</p>
							</span>
						</div>
						<div class="layui-col-xs2-4 con">
							<img alt="文档五" src="<%=basePath%>/static/images/software/p_l/4.jpg">	
							<span class="span2">
								<h4>软件名称</h4>
								<p><b>软件描述:</b>蠢萌蠢萌可爱的网红表情包熊本熊在线官方高清壁纸</p>
								<p><b>下载量:</b>xx</p>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="<%=basePath%>/static/jquery-1.11.3.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>/static/bootstrap.min.js"></script>
	<!-- layui Core JavaScript -->
	<script src="<%=basePath%>/static/layui.all.js"></script>
	<!-- 首页展示排名前四视频的js code -->
	<script src="<%=basePath%>/static/ddb/index/video.js"></script>
	<!-- 首页展示排名前五文档的js code -->
	<script src="<%=basePath%>/static/ddb/index/doc.js"></script>

	<script type="text/javascript">
		/* 下拉框的js */
		layui.use('element', function() {
			var element = layui.element;
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#lunbo',
				width : '80%', //设置容器宽度
				height : '100%',
				arrow : 'hover' //始终显示箭头
			//,anim: 'updown' //切换动画方式
			});
		});
	</script>

</body>
</html>