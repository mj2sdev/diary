package ezen.teamd.web.dao;

import ezen.teamd.web.model.AccountVO;

public interface AccountDAO {
    public boolean signup(AccountVO account) throws Exception;

    public AccountVO login(AccountVO account) throws Exception;
}