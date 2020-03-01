package com.easycredit.entity;

import org.springframework.web.multipart.MultipartFile;

import com.easycredit.common.ConstVo;
import com.easycredit.exception.BusinessException;

public class UploadFileVo {
	
	/**
	 * 文件
	 */
	private MultipartFile imgFile;
	
	private String fileType;
	
	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	
	

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	@Override
	public String toString() {
		return "imgFile=" + imgFile + "";
	}
	
	public boolean validateFile() throws BusinessException{
		if(!ConstVo.fileTypeImg.contains(this.getImgFile().getContentType())){
			throw new BusinessException("文件类型只能是jpeg、png！");
		}
		if(this.getImgFile().getSize() > 1024* 1024*10){
			throw new BusinessException("文件最大不能超过10M！");
		}
		return true;
	}

}
