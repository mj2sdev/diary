package ezen.teamd.web.service;

import javax.servlet.http.HttpSession;

import ezen.teamd.web.model.AccountVO;

public interface AccountService {

    public boolean signup(AccountVO account) throws Exception;

    /**
     * 
     * @param account  로그인에 사용할 데이터가 담긴 객체를 전달해야 합니다.
     * @param session  로그인 성공시 세션에 등록하기위해 전달해야 합니다.
     * @return boolean 로그인 성공, 실패 여부를 반환합니다.
     * @throws Exception
     */
    public boolean login(AccountVO account, HttpSession session) throws Exception;
}