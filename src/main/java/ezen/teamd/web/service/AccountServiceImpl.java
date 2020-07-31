package ezen.teamd.web.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.teamd.web.dao.AccountDAO;
import ezen.teamd.web.model.AccountVO;

@Service
public class AccountServiceImpl implements AccountService {
    
    @Autowired
    private AccountDAO accountDAO;

    @Override
    public boolean signup(AccountVO account) throws Exception {
        return accountDAO.signup(account);
    }

    @Override
    public boolean login(AccountVO account, HttpSession session) throws Exception {
        AccountVO loginedAccount = accountDAO.login(account);
        if (loginedAccount != null) {
            // 로그인 성공
            session.setAttribute("Account", loginedAccount);
            return true;
        } else
            // 로그인 실패
            return false;
    }
    
}