package com.zjh.pb.biz;

import com.zjh.picturebook.entity.User;

public interface UserBiz {
	User selectusername(String name);
	 int deleteByPrimaryKey(String id);

	    int insert(User record);

	    int insertSelective(User record);

	    User selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(User record);

	    int updateByPrimaryKey(User record);
}
