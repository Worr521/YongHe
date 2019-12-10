package cn.tedu.mapper;
import cn.tedu.domain.Door;

import java.util.List;


/* * * * * * * * * * * * * * * * * * * * *
 * DoorMapper接口						 *
 * 声明增删改查方法，对门店信息进行操作	 *
 * * * * * * * * * * * * * * * * * * * * */
public interface DoorMapper {
	// 查询所有门店信息
	public List<Door> findAll();
	
	// 新增门店信息
	public void addDoor(Door door);
	
	// 根据id删除指定门店信息
	public void deleteById(Integer id);
	
	// 根据id查询门店信息
	public Door findById(Integer id);
	
	// 更新指定id门店信息
	public void updateById(Door door);
	
}
