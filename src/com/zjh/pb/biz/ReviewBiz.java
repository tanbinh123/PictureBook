package com.zjh.pb.biz;

import java.util.List;

import com.zjh.picturebook.entity.Review;

public interface ReviewBiz {
	List<Review> selectre(String bookid);
	 int insert(Review record);

	    int insertSelective(Review record);
}
