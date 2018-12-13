package com.zjh.picturebook.mapper;

import java.util.List;

import com.zjh.picturebook.entity.Book;

public interface BookMapper {
	List<Book> seachpb(String text);
	
	List<Book> selectpicture();
	
	List<Book> selectbook();
	
    int deleteByPrimaryKey(String id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);
}