package com.zjh.pb.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjh.pb.biz.ReviewBiz;
import com.zjh.picturebook.entity.Review;
import com.zjh.picturebook.mapper.ReviewMapper;
@Service(value="ReciewBiz")
public class ReviewBizImpl implements ReviewBiz{
	@Autowired
	ReviewMapper reviewMapper;

	@Override
	public int insert(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.insert(record);
	}

	@Override
	public int insertSelective(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.insertSelective(record);
	}

	@Override
	public List<Review> selectre(String bookid) {
		// TODO Auto-generated method stub
		return reviewMapper.selectre(bookid);
	}

}
