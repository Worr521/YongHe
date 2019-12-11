package cn.tedu.controller;

import java.util.List;

import cn.tedu.domain.Door;
import cn.tedu.mapper.DoorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class DoorController {
	// 自动装配:有spring自动为属性赋值
	@Autowired
    DoorMapper dao;


	/*
	 * * * * * * * * * * * * * * * * * * * * * * * * * 通用的页面跳转方法( 优先级最低 ) *
	 * 如果浏览器访问服务器的路径为: /index * {}中的page变量的值就是 index * 在方法上声明一个同名的参数 page *
	 * 再通过@PathVariable注解接收{}中page变量的值 * 传递给下面的方法, 赋值给方法上的page变量 * 因此再访问jsp, 可以通过
	 * "/jsp文件名" 来访问 * * * * * * * * * * * * * * * * * * * * * * * *
	 */
	/*@RequestMapping("/{page}")
	public String toPage(@PathVariable String page) {
		return page;
	}*/

	// 1.查看所有门店信息
	@RequestMapping("/doorList")
	public String doorList(Model model) {
		// 查询所有门店信息返回所有门店对象集合
		List<Door> list = dao.findAll();
		// 将门店对象集合存入model中
		model.addAttribute("list", list);
		// 转发到门店列表页面,遍历所有门店信息
		return "door_list";
	}

	// 2.新增门店信息
	@RequestMapping("/doorAdd")
	public String doorAdd(Door door) {
		// 添加一个门店信息，以door对象传入
		dao.addDoor(door);
		// 重定向到门店列表页面，显示所有门店信息
		return "redirect:/doorList";
	}

	// 3.删除指定id的门店信息
	@RequestMapping("/doorDelete")
	public String doorDelete(Integer id) {
		// 调用dao层的deleteById方法删除指定ID的门店信息
		try {
			dao.deleteById(id);
		} catch (Exception e) {
			// 删除失败跳转页面
			return "door_Erro";
		}
		// 重定向到门店列表页面，显示所有门店信息
		return "redirect:/doorList";
	}

	// 4.根据id查询门店信息
	@RequestMapping("/doorInfo")
	public String doorInfo(Integer id, Model model) {
		// 调用dao层的findById方法，查询到指定id的门店信息
		Door door = dao.findById(id);
		// 将门店信息保存到Model中
		model.addAttribute("door", door);
		// 将门店信息带到door_update.jsp进行返回
		return "door_update";
	}

	// 5.根据id更新门店信息
	@RequestMapping("/doorUpdate")
	public String doorUpdate(Door door) {
		// 调用dao曾的updateById方法，更新指定id的门店信息
		dao.updateById(door);
		// 重定向到门店列表页面, 显示所有门店信息
		return "redirect:/doorList";
	}

}
