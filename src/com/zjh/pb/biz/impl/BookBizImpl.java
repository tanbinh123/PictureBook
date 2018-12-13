package com.zjh.pb.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjh.pb.biz.BookBiz;
import com.zjh.picturebook.entity.Book;
import com.zjh.picturebook.mapper.BookMapper;
@Service(value="BookBiz")
public class BookBizImpl implements BookBiz{
	@Autowired
	BookMapper bookMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return bookMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.insert(record);
	}

	@Override
	public int insertSelective(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.insertSelective(record);
	}

	@Override
	public Book selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return bookMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Book> selectpicture() {
		// TODO Auto-generated method stub
		return bookMapper.selectpicture();
	}

	@Override
	public List<Book> selectbook() {
		// TODO Auto-generated method stub
		return bookMapper.selectbook();
	}

	@Override
	public List<Book> seachpb(String text) {
		// TODO Auto-generated method stub
		return bookMapper.seachpb(text);
	}

}
