package cn.tedu.mapper;

import cn.tedu.domain.User;

public interface UserMapper {
    public User selectById(int id);
    public void insertUser(User user);
}
