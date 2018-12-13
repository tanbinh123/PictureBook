package com.zjh.pb.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjh.pb.biz.ChatBiz;
import com.zjh.picturebook.entity.Chat;
import com.zjh.picturebook.mapper.ChatMapper;
@Service(value="ChatBiz")
public class ChatBizImpl implements ChatBiz{
	@Autowired
	ChatMapper chatmapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return chatmapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Chat record) {
		// TODO Auto-generated method stub
		return chatmapper.insert(record);
	}

	@Override
	public int insertSelective(Chat record) {
		// TODO Auto-generated method stub
		return chatmapper.insertSelective(record);
	}

	@Override
	public Chat selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return chatmapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Chat record) {
		// TODO Auto-generated method stub
		return chatmapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Chat record) {
		// TODO Auto-generated method stub
		return chatmapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Chat> selectall() {
		// TODO Auto-generated method stub
		return chatmapper.selectall();
	}

}
