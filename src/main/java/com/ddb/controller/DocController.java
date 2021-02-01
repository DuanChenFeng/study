package com.ddb.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ddb.entity.Doc;
import com.ddb.entity.ImgInfo;
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
	
	@RequestMapping("/doc/doc-info")
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
			String realPath = session.getServletContext().getRealPath("upload/doc/");
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
	
	@RequestMapping(value = "/doc/download", method = RequestMethod.GET)
	@ResponseBody
	public String download(HttpServletResponse response, Integer doc_id) throws UnsupportedEncodingException{
		
		Doc doc = docService.getDoc(doc_id);
		
		String file = doc.getDir_path() + "\\" + doc.getDoc_name();
		
		System.out.println(file);
		
		File f = new File(file);
		System.out.println(f.getName());
		
		if (f.exists()) {
			// 配置文件下载
            response.setHeader("content-type", "application/octet-stream");
            response.setContentType("application/octet-stream");
            // 下载文件能正常显示中文
            response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(f.getName(), "UTF-8"));
            // 实现文件下载
            byte[] buffer = new byte[1024];
            FileInputStream fis = null;
            BufferedInputStream bis = null;
            try {
                fis = new FileInputStream(f);
                System.out.println(fis);
                bis = new BufferedInputStream(fis);
                OutputStream os = response.getOutputStream();
                int i = bis.read(buffer);
                System.out.println(i);
                while (i != -1) {
                    os.write(buffer, 0, i);
                    os.flush();
                    i = bis.read(buffer);
                }
                return "OK";
            } catch (Exception e) {
                System.out.println("Download the song failed!");
                return "ERROR";
            } finally {
                if (bis != null) {
                    try {
                        bis.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
		}
		return "";
		
	}
	
	@RequestMapping("doc/deleteById")
	@ResponseBody
	public String deleteDoc(Integer id) {
		Doc doc = docService.getDoc(id);
		doc.setStatus(0);
		int res = docService.updateDoc(doc);
		
		if (res == 1) {
			return "OK";
		}else {
			return "ERROR";
		}
		
	}
	
	@RequestMapping("doc/doc-edit")
	public String docEdit(){
		
		return "doc-edit";
	}
	
	@RequestMapping("doc/doc-save")
	@ResponseBody
	public ImgInfo setImgUrl(MultipartFile file, HttpServletResponse response, HttpServletRequest request)
			throws Exception {
		byte[] bytes = file.getBytes();
		String path = request.getServletContext().getRealPath("/upload/doc/image/");
		File imgFile = new File(path);
		if (!imgFile.exists()) {
			imgFile.mkdirs();
		}
		String fileName = file.getOriginalFilename();// 文件名称
		try (FileOutputStream fos = new FileOutputStream(new File(path + fileName))) {
			fos.write(bytes);
		} catch (Exception e) {
			e.printStackTrace();
		}
 
		String value = "http://localhost:10080/upload/doc/image/" + fileName;
		String[] values = { value };
 
		ImgInfo imgInfo = new ImgInfo();
		imgInfo.setError(0);
		imgInfo.setUrl(values);
 
		return imgInfo;
	}
	
}
