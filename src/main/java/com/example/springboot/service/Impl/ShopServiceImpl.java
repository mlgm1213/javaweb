package com.example.springboot.service.Impl;

import com.example.springboot.entity.Goods;
import com.example.springboot.mapper.ShopMapper;
import com.example.springboot.service.ShopService;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service("/shopService")
public class ShopServiceImpl implements ShopService {

    @Override
    public void test() {
        System.out.println("test");
    }

    @Override
    public List<Goods> findByType(Integer type, Integer page) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            ShopMapper mapper = sqlSession.getMapper(ShopMapper.class);

            PageHelper.startPage(page, 8);
            List<Goods> goodsList = mapper.findByType(type);
//            PageInfo page = new PageInfo(goodsList);
//            for (Goods goods: goodsList){
//                System.out.println(goods);
//            }
//            System.out.println("page:---"+page);

            sqlSession.close();
            return goodsList;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
