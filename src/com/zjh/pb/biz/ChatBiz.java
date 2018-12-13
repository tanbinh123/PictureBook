package com.zjh.pb.biz;

import java.util.List;

import com.zjh.picturebook.entity.Chat;

public interface ChatBiz {
	List<Chat> selectall();
	
	int deleteByPrimaryKey(String id);

    int insert(Chat record);

    int insertSelective(Chat record);

    Chat selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Chat record);

    int updateByPrimaryKey(Chat record);
}
