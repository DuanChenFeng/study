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
	    	<div style="background-size:cover;">
				<div class="layui-row">
					<form class="form-horizontal" id="new_employee_form">
						<div class="input-group mb-3" style="padding:15px">
							<div class="input-group-prepend">
								<span class="input-group-text">标题名称</span>
							</div>
							<input type="text" class="form-control" id="articleTitle"
								name="articleTitle" placeholder="标题" />
						</div>
						<div id="editor" style="padding-left:15px;padding-right:50px;">
						</div>
						<br>
						<p style="padding-left:15px">
							<button class="btn btn-primary btn-sm" id="btnGenCode"
								role="button">保存 »</button>
						</p>
					</form>
				</div>
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
	<!-- wangEditor Core JavaScript -->
	<script src="<%=basePath %>/static/wangEditor.min.js"></script>
	<script type="text/javascript">
		/* 下拉框的js */
		layui.use('element', function(){
		  var element = layui.element;
		  
		});
		
		var E = window.wangEditor;
        var editor = new E('#editor');
        // 或者 var editor = new E( document.getElementById('editor') )
        // 配置服务器端地址
        editor.customConfig.uploadImgServer = 'http://localhost:10080/study/doc/doc-save';
        //配置指定文件名
        editor.customConfig.uploadFileName = 'file';
        editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
        //如果图片不大，可以用base64存储
        //editor.customConfig.uploadImgShowBase64 = true
        editor.customConfig.uploadImgHooks = {
	        // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
	        // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
	        customInsert : function(insertImg, result, editor) {
	            // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
	            // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
	            // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
	            var url = result.url;
	            insertImg(url);
	        }
	    }
        editor.customConfig.colors = [
            '#000000',
            '#eeece0',
            '#1c487f',
            '#4d80bf',
            '#c24f4a',
            '#8baa4a',
            '#7b5ba1',
            '#46acc8',
            '#f9963b',
            '#ffffff'
        ];
        editor.create();
        editor.$textContainerElem.css('height', '350px !important');
        
        
        
        //获取标题
        var title = document.getElementById("articleTitle").value;
        console.log(title);
        
        function saveContent() {
        	
        	
        }
        
	</script>

</body>
</html>