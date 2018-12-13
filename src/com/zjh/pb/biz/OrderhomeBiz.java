package com.zjh.pb.biz;

import java.util.List;

import com.zjh.picturebook.entity.Orderhome;

public interface OrderhomeBiz {
	int delete(String userid,String bookid);
	int insert(Orderhome record);

    int insertSelective(Orderhome record);
    List<Orderhome> selectbyuserid(String userid);
}
