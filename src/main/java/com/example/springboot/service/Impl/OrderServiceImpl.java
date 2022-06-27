package com.example.springboot.service.Impl;

import com.example.springboot.entity.Order;
import com.example.springboot.mapper.OrderMapper;
import com.example.springboot.service.OrderService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;


@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Override
    public void placeOrder(Order order) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
            mapper.placeOrder(order);
            sqlSession.commit();
            sqlSession.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void addCart(Order order) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
            mapper.addCart(order);
            sqlSession.commit();
            sqlSession.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<String> findCart(Integer uid) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
            List<String> gpictureList = mapper.findCart(uid);
            sqlSession.close();
            return gpictureList;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
