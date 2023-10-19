package com.photoviewermanager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PhotoViewerManagerApplication {

	public static void main(String[] args) {
		System.out.println("欢迎使用Photo Viewer Manager应用程序！");
		SpringApplication.run(PhotoViewerManagerApplication.class, args);
	}

}
