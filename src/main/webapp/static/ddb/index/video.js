/*网页根路径*/
var basePath = window.document.location.origin;

/* 排名第一的视频名称 */
var video_h1 = document.getElementById('video_h1');
video_h1.innerHTML = video_info(0).video_name; 

/* 排名第一的视频信息描述 */
var video_p_desc_1 = document.getElementById('video_p_desc_1');
video_p_desc_1.innerHTML = "<b>视频描述：</b>" + video_info(0).video_remark; 

/* 排名第一的视频点击量 */
var video_p_hits_1 = document.getElementById('video_p_hits_1');
video_p_hits_1.innerHTML = "<b>点击量：</b>" + video_info(0).hits + "次";

/* 排名第二的视频名称 */
var video_h2 = document.getElementById('video_h2');
video_h2.innerHTML = video_info(1).video_name; 

/* 排名第二的视频信息描述 */
var video_p_desc_2 = document.getElementById('video_p_desc_2');
video_p_desc_2.innerHTML = "<b>视频描述：</b>" + video_info(1).video_remark; 

/* 排名第二的视频点击量 */
var video_p_hits_2 = document.getElementById('video_p_hits_2');
video_p_hits_2.innerHTML = "<b>点击量：</b>" + video_info(1).hits + "次";

/* 排名第三的视频名称 */
var video_h3 = document.getElementById('video_h3');
video_h3.innerHTML = video_info(2).video_name; 

/* 排名第三的视频信息描述 */
var video_p_desc_3 = document.getElementById('video_p_desc_3');
video_p_desc_3.innerHTML = "<b>视频描述：</b>" + video_info(2).video_remark; 

/* 排名第三的视频点击量 */
var video_p_hits_3 = document.getElementById('video_p_hits_3');
video_p_hits_3.innerHTML = "<b>点击量：</b>" + video_info(2).hits + "次";

/* 排名第四的视频名称 */
var video_h4 = document.getElementById('video_h4');
video_h4.innerHTML = video_info(3).video_name; 

/* 排名第四的视频信息描述 */
var video_p_desc_4 = document.getElementById('video_p_desc_4');
video_p_desc_4.innerHTML = "<b>视频描述：</b>" + video_info(3).video_remark; 

/* 排名第四的视频点击量 */
var video_p_hits_4 = document.getElementById('video_p_hits_4');
video_p_hits_4.innerHTML = "<b>点击量：</b>" + video_info(3).hits + "次";


/* 排名前四视频信息 */
function video_info (num) {
	var res = '';
	$.ajax({
        type:"get",
        url: basePath + "/study/video/video-fourth-info",
        async: false,
        success:function(data) {
        	var v_n = data[num];
        	res = v_n;
        }
    });
	return res;
}

/* 播放视频 */
function playVideo(id) {
	$.ajax({
        type:"post",
        url:basePath + "/study/video/play",
        data:{"id":id},
        success:function(data) {
        	window.open("/upload/video/" + data.video_name);
        }
    });
}
