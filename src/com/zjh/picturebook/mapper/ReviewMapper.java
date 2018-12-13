package com.zjh.picturebook.mapper;

import java.util.List;

import com.zjh.picturebook.entity.Review;

public interface ReviewMapper {
	List<Review> selectre(String bookid);
	
    int insert(Review record);

    int insertSelective(Review record);
}