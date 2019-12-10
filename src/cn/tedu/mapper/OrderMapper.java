package cn.tedu.mapper;
import cn.tedu.domain.Order;

import java.util.List;


/* * * * * * * * * * * * * * * * * * * * *
 * OrderMapper接口						 *
 * 声明增删改查方法，对门店信息进行操作	 *
 * * * * * * * * * * * * * * * * * * * * */
public interface OrderMapper {
	// 查询所有门店信息
	public List<Order> findAll();
	
	// 新增门店信息
	public void addOrder(Order order);
	
	// 根据id删除指定门店信息
	public void deleteById(Integer id);
	
	// 根据id查询门店信息
	public Order findById(Integer id);
	
	// 更新指定id门店信息
	public void updateById(Order order);
	
}
