package com.example.springboot.service.Impl;

import com.example.springboot.entity.Goods;
import com.example.springboot.mapper.AdminGoodsMapper;
import com.example.springboot.service.AdminGoodsService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service("/adminGoodsService")
public class AdminGoodsServiceImpl implements AdminGoodsService {

    @Override
    public void addGoods(Goods goods) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            AdminGoodsMapper mapper = sqlSession.getMapper(AdminGoodsMapper.class);
            mapper.addGoods(goods);
            sqlSession.commit();
            sqlSession.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Goods> selectGoods() {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            AdminGoodsMapper mapper = sqlSession.getMapper(AdminGoodsMapper.class);
            List<Goods> goodsList = mapper.selectGoods();
            sqlSession.close();
            return goodsList;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
