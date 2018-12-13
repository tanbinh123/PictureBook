package com.zjh.pb.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjh.pb.biz.OrderhomeBiz;
import com.zjh.picturebook.entity.Orderhome;
import com.zjh.picturebook.mapper.OrderhomeMapper;
@Service(value="OrderhomeBiz")
public class OrderhomeBizImpl implements OrderhomeBiz{
	@Autowired
	OrderhomeMapper orderhomeMapper;

	@Override
	public int insert(Orderhome record) {
		// TODO Auto-generated method stub
		return orderhomeMapper.insert(record);
	}

	@Override
	public int insertSelective(Orderhome record) {
		// TODO Auto-generated method stub
		return orderhomeMapper.insertSelective(record);
	}

	@Override
	public List<Orderhome> selectbyuserid(String userid) {
		// TODO Auto-generated method stub
		return orderhomeMapper.selectbyuserid(userid);
	}

	@Override
	public int delete(String userid, String bookid) {
		// TODO Auto-generated method stub
		return orderhomeMapper.delete(userid, bookid);
	}

}
