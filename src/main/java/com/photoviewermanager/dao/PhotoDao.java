package com.photoviewermanager.dao;

import com.photoviewermanager.entity.Photo;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper

public interface PhotoDao {
    //查询所有的图片信息
    List<Photo> findAllPhoto();

    //根据图片名称查询图片
    Photo findPhotoByName(String name);

    //根据时间查询图片信息
    List<Photo> findPhotoByDate(LocalDate date);

    //根据地址查询图片信息
    List<Photo> findPhotoByAddress(String address);

    //根据时间范围查询图片信息
    List<Photo> findPhotoByTimeRange(LocalDateTime startTime, LocalDateTime endTime);

    //根据图片标签查询图片
    List<Photo> findPhotoByTag(String tag);

    //上传图片
    void uploadPhoto(Photo photo);

    //更新tup
    void updatePhoto(Photo photo);

    //删除图片
    void deletePhoto(Photo photo);

}
