/*网页根路径*/
var basePath = window.document.location.origin;

/* 排名第一的文档名称 */
var doc_h1 = document.getElementById('doc_h1');
doc_h1.innerHTML = doc_info(0).doc_name; 

/* 排名第一的文档信息描述 */
var doc_p_desc_1 = document.getElementById('doc_p_desc_1');
doc_p_desc_1.innerHTML = "<b>文档描述：</b>" + doc_info(0).doc_remark; 

/* 排名第一的文档点击量 */
var doc_p_hits_1 = document.getElementById('doc_p_hits_1');
doc_p_hits_1.innerHTML = "<b>点击量：</b>" + doc_info(0).hits + "次";

/* 排名第二的文档名称 */
var doc_h2 = document.getElementById('doc_h2');
doc_h2.innerHTML = doc_info(1).doc_name; 

/* 排名第二的文档信息描述 */
var doc_p_desc_2 = document.getElementById('doc_p_desc_2');
doc_p_desc_2.innerHTML = "<b>文档描述：</b>" + doc_info(1).doc_remark; 

/* 排名第二的文档点击量 */
var doc_p_hits_2 = document.getElementById('doc_p_hits_2');
doc_p_hits_2.innerHTML = "<b>点击量：</b>" + doc_info(1).hits + "次";

/* 排名第三的文档名称 */
var doc_h3 = document.getElementById('doc_h3');
doc_h3.innerHTML = doc_info(2).doc_name; 

/* 排名第三的文档信息描述 */
var doc_p_desc_3 = document.getElementById('doc_p_desc_3');
doc_p_desc_3.innerHTML = "<b>文档描述：</b>" + doc_info(2).doc_remark; 

/* 排名第三的文档点击量 */
var doc_p_hits_3 = document.getElementById('doc_p_hits_3');
doc_p_hits_3.innerHTML = "<b>点击量：</b>" + doc_info(2).hits + "次";

/* 排名第四的文档名称 */
var doc_h4 = document.getElementById('doc_h4');
doc_h4.innerHTML = doc_info(3).doc_name; 

/* 排名第四的文档信息描述 */
var doc_p_desc_4 = document.getElementById('doc_p_desc_4');
doc_p_desc_4.innerHTML = "<b>文档描述：</b>" + doc_info(3).doc_remark; 

/* 排名第四的文档点击量 */
var doc_p_hits_4 = document.getElementById('doc_p_hits_4');
doc_p_hits_4.innerHTML = "<b>点击量：</b>" + doc_info(3).hits + "次";

/* 排名第五的文档名称 */
var doc_h5 = document.getElementById('doc_h5');
doc_h5.innerHTML = doc_info(0).doc_name; 

/* 排名第五的文档信息描述 */
var doc_p_desc_5 = document.getElementById('doc_p_desc_5');
doc_p_desc_5.innerHTML = "<b>文档描述：</b>" + doc_info(0).doc_remark; 

/* 排名第五的文档点击量 */
var doc_p_hits_5 = document.getElementById('doc_p_hits_5');
doc_p_hits_5.innerHTML = "<b>点击量：</b>" + doc_info(0).hits + "次";

/* 热度排名前五的文档信息 */
function doc_info(num) {
	var res = '';
	$.ajax({
        type:"get",
        url: basePath + "/study/doc/doc-fourth-info",
        async: false,
        success:function(data) {
        	var d_n = data[num];
        	res = d_n;
        }
    });
	return res;
}

/* 预览文件 */
function previewDoc(id) {
	window.open("/study/doc/doc-preview?doc_id=" + id);
}