package com.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.matters.PostDispatchDetail;
import com.service.matters.PostService;


/**
 * 调动管理
 * @author Administrator
 *
 */
@Controller
public class PostMgrController {
	
	@Autowired
	private PostService postService;

	/**展示页面测试用方法*/
	
	/**跳转到调动管理页面*/
	/*到时候这里会修改成显示列表*/
	/**
	 * 王楠杰
	 * 获取调动管理的数据
	 * @return
	 */
	@RequestMapping("/post.html")
	public ModelAndView toPost(){
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("rsmgr/post");
		List list = postService.selectStaffMsg();
		
		
		modelAndView.addObject("list",list);
		return modelAndView;		
	}
	/**跳转到调动信息详情页面*/
	@RequestMapping("/post_info")
	@ResponseBody
	public Map<String,PostDispatchDetail> toPostInfo(Integer dispatchId){
		Map<String,PostDispatchDetail> map = new HashMap<String,PostDispatchDetail>();
		map.put("staf_info", postService.selectStaffDetail(dispatchId));
		return map;

	}
	
	/**
	 * 删除调动信息
	 */              
	@RequestMapping("delPost")
	public String delPost(Integer id){
		try {
			postService.deleteByPrimaryKey(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("调动信息删除失败");
			e.printStackTrace();
		}
		return "redirect:post.html";
		
	}
	
	
	
	
}
