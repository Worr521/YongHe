package cn.tedu.service;

import cn.tedu.domain.User;
import cn.tedu.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper = null;

    @Override
    public void regist(User user) {
        System.out.println("userService..reist"+user);
        userMapper.insertUser(user);
    }
}
