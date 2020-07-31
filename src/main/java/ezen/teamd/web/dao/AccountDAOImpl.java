package ezen.teamd.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.teamd.web.model.AccountVO;

@Repository
public class AccountDAOImpl implements AccountDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public boolean signup(AccountVO account) throws Exception {
        sqlSession.insert("ezen.teamd.web.sql.AccountMapper.signup", account);
        return true;
    }

    @Override
    public AccountVO login(AccountVO account) throws Exception {
        return sqlSession.selectOne("ezen.teamd.web.sql.AccountMapper.login", account);
    }
    
}