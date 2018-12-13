package com.zjh.pb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjh.pb.biz.*;
import com.zjh.pb.util.DateUtil;
import com.zjh.pb.util.UploadFile;
import com.zjh.picturebook.entity.Book;
import com.zjh.picturebook.entity.Chat;
import com.zjh.picturebook.entity.Orderhome;

import sun.java2d.pipe.AATextRenderer;

import com.zjh.picturebook.entity.*;

@Controller
public class MainController {
	@Autowired
	BookBiz bookBiz;//绘本和图书
	@Autowired
	ChatBiz chatBiz;//推荐
	@Autowired
	OrderhomeBiz orderhomeBiz;//购物车
	@Autowired
	ReviewBiz reviewBiz;//评论
	@Autowired
	UserBiz userBiz;//用户
	
	@RequestMapping(value="index")
	public String index(HttpSession session) {
		List<Book> pictureList = bookBiz.selectpicture();
		List<Book> bookList = bookBiz.selectbook();
		List<Chat> chatList = chatBiz.selectall();
		session.setAttribute("pictureList", pictureList);
		session.setAttribute("bookList", bookList);
		session.setAttribute("chatList", chatList);
		return "index";
	}
	
	@RequestMapping(value="recommend")
	public String recommend(HttpSession session) {
		List<Book> pictureList = bookBiz.selectpicture();
		session.setAttribute("pictureList", pictureList);
		return "recommend";
	}
	
	@RequestMapping(value="AJAXCheckUsername")//ajax验证用户名是否可用
	public void AJAXCheckUsername(String name,HttpServletResponse res) throws IOException {
		res.setCharacterEncoding("utf-8");
		PrintWriter pw = res.getWriter();
		User user = userBiz.selectusername(name);
		if(user !=null) {
			pw.write("<b color='red'>用户名已存在！</b>");
			pw.close();
			return;
		}
		pw.write("<b color='green'>用户名可用 √</b>");
		pw.close();
		return;
	}
	
	@RequestMapping(value="login")
	public String login(User user,HttpSession session) {
		User user0 = userBiz.selectusername(user.getName());
		if(user0==null||!user0.getPassword().equals(user.getPassword())) {
			session.setAttribute("errMsg", "密码或用户名错误");
			return "login";
		}
		session.setAttribute("loginUser", user0);
		return "redirect:index.do";
	}
	
	@RequestMapping(value="Regist")
	public String Regist(User user,HttpSession session) {
		User user0 = userBiz.selectusername(user.getName());
		if(user0 !=null) {
			session.setAttribute("errMsg0", "用户名已存在！");
			return "regist";
		}
		user.setId(DateUtil.getId());
		userBiz.insertSelective(user);
		session.setAttribute("loginUser", user);
		return "redirect:index.do";
	}
	
	@RequestMapping(value="Logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.do";
	}
	
	@RequestMapping(value="showpicturebook")
	public String showpicturebook(String pbid,HttpSession session) {
		Book pb = bookBiz.selectByPrimaryKey(pbid);
		session.setAttribute("pb", pb);
		return "showpb";
	}
	
	@RequestMapping(value="likelist")
	public String likelist(HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		List<Orderhome> orderList = orderhomeBiz.selectbyuserid(user.getId());
		List<Book> likeList = new ArrayList<>();
		for(Orderhome order : orderList) {
			likeList.add(bookBiz.selectByPrimaryKey(order.getBookid()));
			
		}
		session.setAttribute("likeList", likeList);
		return "prod_list";
	}
	
	@RequestMapping(value="seach")
	public String seach(String text,HttpSession session) {
		List<Book> pictureList = bookBiz.seachpb(text);
		session.setAttribute("pictureList", pictureList);
		return "recommend";
	}
	
	@RequestMapping(value="showbook")
	public String showbook(String bookid,HttpSession session) {
		Chat book = chatBiz.selectByPrimaryKey(bookid);
		List<Review> reviewList = reviewBiz.selectre(bookid);
		session.setAttribute("book", book);
		session.setAttribute("reviewList", reviewList);
		return "bookshow";
	}
	
	@RequestMapping(value="subreview")
	public String subreview(Review review,HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		review.setUserid(user.getName());
		reviewBiz.insertSelective(review);
		return "redirect:showbook.do?bookid="+review.getChatid();
	}
	
	@RequestMapping(value="submitchat")
	public String submitchat(HttpServletRequest req,HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		String chatid = DateUtil.getId();
		Chat chat = (Chat) UploadFile.uploadFile(chatid, req);
		chat.setType(user.getName());
		chatBiz.insertSelective(chat);
		return "redirect:index.do";
	}
	
	@RequestMapping(value="collect")
	public void collect(HttpServletResponse res,String bookid,HttpSession session) throws IOException {
		User user = (User) session.getAttribute("loginUser");
		res.setCharacterEncoding("utf-8");
		PrintWriter pw = res.getWriter();
		if(user==null) {
			pw.println("请您登录后再操作");
			return;
		}
		List<Orderhome> odh = orderhomeBiz.selectbyuserid(user.getId());
		boolean flas = true;
		for(Orderhome or:odh) {
			if(or.getBookid().equals(bookid)) {
				flas = false;
				break;
			}
		}
		if(flas=false) {
			pw.println("您已经收藏了本图书！");
			return;
		}
		Orderhome or = new Orderhome();
		or.setBookid(bookid);
		or.setUserid(user.getId());
		or.setType("0");
		orderhomeBiz.insert(or);
		pw.println("收藏成功！");
	}
	
	@RequestMapping(value="canclecollect")
	public String canclecollect(String bookid,HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		if(user==null) {
			return "login";
		}
		orderhomeBiz.delete(user.getId(), bookid);
		return "redirect:likelist.do";
	}
	
	@RequestMapping(value="watch")
	public String watch(String bookid,HttpSession session) {
		Book book = bookBiz.selectByPrimaryKey(bookid);
		List<String> numberList = new ArrayList<>();
		for(int i=0;i<Integer.parseInt(book.getPage());i++) {
			String a = String.valueOf(i);
			numberList.add(a);
		}
		session.setAttribute("numberList", numberList);
		session.setAttribute("pcbook", book);
		return "watch";
	}

}
