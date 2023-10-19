package com.photoviewermanager.controller;

import com.photoviewermanager.dao.PhotoDao;
import com.photoviewermanager.entity.Photo;
import jakarta.annotation.Resource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.util.List;

@Controller
public class PhotoController {

    @Resource
    private PhotoDao photoDao;

    @GetMapping("/allPhoto")
    @ResponseBody
    public List<Photo> findAll() {
        return photoDao.findAllPhoto();
    }



    @GetMapping("/all")
    public String allPhotos() {
        return "All";
    }

    @GetMapping("/name")
    public String name() {
        return "name";
    }

    @GetMapping("searchByName")
    @ResponseBody
    public Photo searchByName(@RequestParam("name") String name) {
        // Assuming that your 'findPhotoByName' method returns a single Photo object
        return photoDao.findPhotoByName(name);
    }

    @GetMapping("/searchByDate")
    @ResponseBody
    public List<Photo> searchByDate(@RequestParam("date") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {
        return photoDao.findPhotoByDate(date);
    }

    @GetMapping("/date")
    public String searchByDatePage() {
        return "searchByDate"; // 返回HTML页面的名称，假设HTML文件名为searchByDate.html
    }

    @GetMapping("/searchByAddress")
    @ResponseBody
    public List<Photo> searchByAddress(@RequestParam("address") String address) {
        return photoDao.findPhotoByAddress(address);
    }

    @GetMapping("/address")
    public String searchByAddressPage() {
        return "searchByAddress"; // 返回HTML页面的名称，假设HTML文件名为searchByAddress.html
    }

    @GetMapping("/searchByTag")
    @ResponseBody
    public List<Photo> searchByTag(@RequestParam("tag") String tag) {
        return photoDao.findPhotoByTag(tag);
    }

    @GetMapping("/tag")
    public String searchByTagPage() {
        return "/SearchByTag";
    }

    @GetMapping("/upload")
    public String uploadForm() {
        return "upload";
    }



    @GetMapping("/")
    public String mainPage(){
        return "mainPage";
    }
}


