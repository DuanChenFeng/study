package com.ddb.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ddb.entity.Doc;
import com.ddb.service.DocService;

/**
 * @author 段道博
 * @date 2021年1月19日下午3:34:17
 *
 */

@Controller
@RequestMapping("/study")
public class DocController {
	
	@Autowired
	private DocService docService;

//	private NonStaticResourceHttpRequestHandler nonStaticResourceHttpRequestHandler;

	/*@GetMapping("/video")
	public void videoPreview(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String realPath = "E:\\eclipse workspace\\study\\target\\classes\\META-INF\\resources\\static\\video\\1.mp4";
		
		Path filePath = Paths.get(realPath );
	    if (Files.exists(filePath)) {
	    	String mimeType = Files.probeContentType(filePath);
	    	System.out.println(mimeType);
	    	if (!StringUtils.isEmpty(mimeType)) {
	    		response.setContentType(mimeType);
	    	}
	    	request.setAttribute(NonStaticResourceHttpRequestHandler.ATTR_FILE, filePath);
	    	nonStaticResourceHttpRequestHandler.handleRequest(request, response);
	    } else {
	    	response.setStatus(HttpServletResponse.SC_NOT_FOUND);
	    	response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
	    }
	}*/
	
	@RequestMapping("/doc")
	public String video(String name, Model model) {
		if (name == null) {
			name = "%%";
		}else {
			name = "%" + name + "%";
		}
		
		List<Doc> allDoc = docService.getAllDoc(name);
		
		model.addAttribute("all_doc", allDoc);
		return "doc";
	}
	
	@RequestMapping("/doc/upload")
	@ResponseBody
	public int upload(MultipartFile files, HttpSession session){
		Doc doc = new Doc();
		
		if (files.isEmpty() != true) {
			// 获取文件名
			String file_name = files.getOriginalFilename();
			String realPath = session.getServletContext().getRealPath("upload");
			doc.setDoc_name(file_name);
			doc.setDir_path(realPath);
			File f = new File(realPath, file_name);
			try {
				//保存文件
				files.transferTo(f);
				docService.insertDoc(doc);
				System.out.println("上传成功！");
				return 1;
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("上传失败！");
				return 0;
			}
		}else {
			System.out.println("上传文件为空！");
			return -1;
		}
	}
	
	/*@RequestMapping("/download")
	@ResponseBody
	public int download(HttpServletRequest request, HttpServletResponse response) {
		
	}*/
	

}
