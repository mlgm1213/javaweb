package com.example.springboot.service.Impl;

import com.example.springboot.entity.Order;
import com.example.springboot.mapper.AdminOrderMapper;
import com.example.springboot.service.AdminOrderService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

//import com.yszl.mapper.AdminOrderMapper;

@Service("adminOrderService")
//@Transactional
public class AdminOrderServiceImpl implements AdminOrderService {
    @Override
    public List<Order> selectOrder() {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            AdminOrderMapper mapper = sqlSession.getMapper(AdminOrderMapper.class);
            List<Order> orderList = mapper.selectOrder();
            sqlSession.close();
            return orderList;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
