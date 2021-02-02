<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+
    	request.getServerPort()+path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>系统信息</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>首页</title>
	<link rel="stylesheet" href="<%=basePath %>/static/css/layui.css"  media="all">
	<link rel="stylesheet" href="<%=basePath %>/static/css/bootstrap.min.css"  media="all">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
	    	<div class="layui-logo">
	    		<img src="<%=basePath %>/static/images/logo_hj.png">
	    	</div>
		    <!-- 头部左侧区域（可配合layui已有的水平导航） -->
		    <ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="<%=basePath %>/study/index">首页</a></li>
				<li class="layui-nav-item"><a href="<%=basePath %>/study/user?name=${USER_SESSION.name}">用户</a></li>
				<li class="layui-nav-item">
					<a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
				    	<dd><a href="<%=basePath %>/study/manager">权限管理</a></dd>
					</dl>
				</li>
		    </ul>
		    <!-- 头部右侧区域 -->
		    <ul class="layui-nav layui-layout-right">
		      	<li class="layui-nav-item">
		        	<a href="javascript:;">
		          		<i class="glyphicon glyphicon-user" style="font-size:150%" aria-hidden="true"></i>
		          		<span class="admin-name" style="font-size:150%">${USER_SESSION.name}</span>
		        	</a>
		        	<dl class="layui-nav-child">
		          		<dd><a href="<%=basePath %>/study/user?name=${USER_SESSION.name}">基本资料</a></dd>
		        	</dl>
		     	</li>
		      	<li class="layui-nav-item"><a href="<%=basePath %>/logout">注销</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">代码库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>/study/code/code-info">代码库信息概览</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/code/code-manager">代码库管理</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">镜像库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>/study/mirror/mirrot-info">镜像库信息概览</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/mirror/mirror-manager">软件库管理</a>
							</dd>
						</dl>
					</li>
					
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">软件库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>/study/software/software-info">软件库信息概览</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/software/software-manager">软件库管理</a>
							</dd>
						</dl>
					</li>

					<li class="layui-nav-item"><a href="javascript:;">视频库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>/study/video/video-info">视频库信息概览</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/video/video-manager">视频库管理</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/video/video-online">在线视频</a>
							</dd>
						</dl>
					</li>

					<li class="layui-nav-item"><a href="javascript:;">文档库</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>/study/doc/doc-info">文档库信息概览</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/doc/doc-manager">文档库管理</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/study/doc/doc-edit">在线文档</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<div class="layui-body" style="background:#D1EEEE;">
	    	<!-- 内容主体区域 -->
 			<div style="background-size:cover;padding: 15px;" ALIGN="center">
    			<!-- 查询部分 -->
				<div class="layui-row">
					<div class="layui-col-md5">
						<form class="layui-form" method="get" action="<%=basePath %>/study/video/video-info">
							<div class="layui-col-md10">
								<input type="text" id="name" value="${name}" name="name" 
								placeholder="请输入查询的文档名" class="layui-input"/>
							</div>
							<button type="submit" class="layui-btn layui-btn-normal">查询</button>
						</form>
					</div>
			 	</div>
			 	<br>
			 	<div class="layui-row">
			 		<div class="layui-col-md5">
			 			<div class="layui-col-md10">
							<form class="form-horizontal" enctype="multipart/form-data" id="upload-video">
								<div class="input-group">
									<input type="text" class="layui-input" placeholder="请选择视频文件" disabled/> 
									<span class="input-group-btn"> 
										<label for="forexIO_file" class="layui-btn layui-btn-normal"> 选择文件</label> 
										<input id="forexIO_file" type="file" name="files"
											accept=".mp4" onchange="set_placeholder(this)" style="display: none"/>
									</span>
									<button type="button" class="layui-btn layui-btn-normal" onclick="upload_video()">上传</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 查询结果表格显示 -->
				<table class="layui-table" halign:"center">
					<thead>
						<tr>
							<th>视频库ID</th>
							<th>视频名</th>
							<th>视频路径</th>
							<th>更新时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${all_video}" var="video">
						  <tr>
							<td>${video.video_id}</td>
							<td>${video.video_name}</td>
							<td>${video.dir_path}</td>
							<td>${video.update_time}</td>
							<td>
								<a href="<%=basePath %>/upload/video/${video.video_name}" class="layui-btn" target="_blank">播放</a>
								<a href="video-info#" class="layui-btn" onclick="selectByPath(${video.video_id})">下载</a>
								<a href="video-info#" class="layui-btn" onclick="delVideo(${video.video_id})">删除</a>
							</td>
						  </tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	  	<!-- 底部固定区域 -->
	  	<div class="layui-footer">
	    	© Welcome to my world！
	  	</div>
	</div>

	<!-- jQuery -->
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath %>/static/bootstrap.min.js"></script>
	<!-- layui Core JavaScript -->
	<script src="<%=basePath %>/static/layui.all.js"></script>
	
	<script type="text/javascript">
		/* 下拉框的js */
		layui.use('element', function(){
		  var element = layui.element;
		  
		});
		function set_placeholder(e) {
			var filename = $(e).val();
	        var fileAccept = $("#forexIO_file").val().split(".");
			var fileType = fileAccept[fileAccept.length-1]
			if( fileType != "mp4"){
				alert("只能上传mp4类型的视频！");
				window.location.reload();
			}else{
		        if (filename) {
		            var idx = filename.lastIndexOf("\\");
		            filename = filename.substring(idx + 1);
		            $(e).parent().prev().prop("placeholder", filename);
		        }
			}
	    }
		/* 上传视频  */
		function upload_video() {
			$.ajax({
				type: "POST",
				url: "upload",
				data: new FormData($('#upload-video')[0]),
				async: false,
				processData: false,
			    contentType: false,
			    cache: false,
				success: function(res) {
					console.log(res);
					if(res == 1){
						alert("上传成功！");
						window.location.reload();
					}else if(res == 0){
						alert("上传失败！");
						window.location.reload();
					}else {
						alert("上传文件为空！");
						window.location.reload();
					}
				},
				error: function() {
					alert("异常");
				}
			});
		}
		
		/* 下载视频   */
		function selectByPath(path) {
    		layer.confirm('确定要下载选中的视频？', {
        		btn : [ '确定', '取消' ]
    		}, function(index) {
        		window.open("/study/video/download?video_id="+path)
        		layer.close(layer.index);
    		})
		}
		
		/* 删除视频信息 */
		function delVideo(id) {
			if(confirm('确实要删除该视频吗?')) {
				$.post("deleteById",{"id":id},
				function(data){
					if(data == "OK"){
						alert("视频删除成功！");
						window.location.reload();
					}else{
						alert("视频删除失败！");
						window.location.reload();
					}
				});
			}
		}
		
	</script>

</body>
</html>