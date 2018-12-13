package com.zjh.picturebook.mapper;

import java.util.List;

import com.zjh.picturebook.entity.Orderhome;

public interface OrderhomeMapper {
	int delete(String userid,String bookid);
	
	List<Orderhome> selectbyuserid(String userid);
	
    int insert(Orderhome record);

    int insertSelective(Orderhome record);
}