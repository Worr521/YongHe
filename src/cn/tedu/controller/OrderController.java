package cn.tedu.controller;

import java.util.List;

import cn.tedu.domain.Door;
import cn.tedu.domain.Order;
import cn.tedu.mapper.DoorMapper;
import cn.tedu.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class OrderController {
	@Autowired
    OrderMapper dao;
	
	@Autowired
    DoorMapper doorMapper;
	
	// 1.查询所有订单信息
	@RequestMapping("/orderList")
	public String orderList(Model model) {
		List<Order> olist = dao.findAll();
		model.addAttribute("olist", olist);
		List<Door> dlist = doorMapper.findAll();
		model.addAttribute("dlist", dlist);
		return "order_list";
	}
	
	// 2.1 新增订单信息 - 带门店数据到order_add.jsp页面
	@RequestMapping("/toOrderAdd")
	public String toOrderAdd(Model model) {
		List<Door> dlist = doorMapper.findAll();
		model.addAttribute("dlist", dlist);
		return "order_add";
	}
	// 2.2 新增订单信息
	@RequestMapping("/orderAdd")
	public String orderAdd(Order order) {
		dao.addOrder(order);
		return "redirect:/orderList";
	}
	
	// 3.根据指定id删除订单信息
	@RequestMapping("/orderDelete")
	public String orderDelete(Integer id) {
		dao.deleteById(id);
		return "redirect:/orderList";
	}
	
	// 4.1 根据id修改订单信息 - 根据id回显订单数据到指定页面
	@RequestMapping("/orderInfo")
	public String orderInfo(Integer id,Model model) {
		Order order = dao.findById(id);
		model.addAttribute("order", order);
		List<Door> dlist = doorMapper.findAll();
		model.addAttribute("dlist", dlist);
		return "order_update";
	}
	// 4.2 根据id修改订单信息
	@RequestMapping("/orderUpdate")
	public String orderUpdate(Order order) {
		dao.updateById(order);
		return "redirect:/orderList";
	}
}
