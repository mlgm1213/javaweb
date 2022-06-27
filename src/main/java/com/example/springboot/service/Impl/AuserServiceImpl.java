package com.example.springboot.service.Impl;

import com.example.springboot.entity.Auser;
import com.example.springboot.mapper.AuserMapper;
import com.example.springboot.service.AuserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;

@Service("/auserService")
public class AuserServiceImpl implements AuserService {

    @Override
    public Auser login(String aname, String apwd) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();
            AuserMapper mapper = sqlSession.getMapper(AuserMapper.class);
            Auser auser = mapper.login(aname, apwd);
            sqlSession.close();
            return auser;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
