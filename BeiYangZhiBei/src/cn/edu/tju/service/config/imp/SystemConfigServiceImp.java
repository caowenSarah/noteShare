package cn.edu.tju.service.config.imp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import cn.edu.tju.service.config.SystemConfigService;

@Service
public class SystemConfigServiceImp implements SystemConfigService {
	
	@Value("#{static_res_prop['file_storage_root']}")
	private String fileStorageRoot;//文件存储的根路径

	public String getFileStorageRoot() {
		return fileStorageRoot;
	}

	public void setFileStorageRoot(String fileStorageRoot) {
		this.fileStorageRoot = fileStorageRoot;
	}
	
	
	
}
