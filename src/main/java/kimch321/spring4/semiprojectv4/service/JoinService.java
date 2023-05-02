package kimch321.spring4.semiprojectv4.service;

import kimch321.spring4.semiprojectv4.model.Member;

public interface JoinService {

    String findZipcode(String dong);
    boolean newMember(Member m);
    boolean checkUserid(String uid);
    boolean loginMember(Member m);

}
