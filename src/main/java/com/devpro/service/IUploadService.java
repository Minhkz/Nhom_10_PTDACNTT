package com.devpro.service;

import org.springframework.web.multipart.MultipartFile;

public interface IUploadService {

    public String handleSaveUploadFile(String nameFile, MultipartFile file);
}
