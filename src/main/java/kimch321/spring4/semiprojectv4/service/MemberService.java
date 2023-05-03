package kimch321.spring4.semiprojectv4.service;

import kimch321.spring4.semiprojectv4.model.Member;

import javax.servlet.http.HttpSession;

public interface MemberService {
    boolean checkLogin(Member m, HttpSession sess);

}
