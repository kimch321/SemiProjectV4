package kimch321.spring4.semiprojectv4.dao;

import kimch321.spring4.semiprojectv4.model.Member;
import kimch321.spring4.semiprojectv4.model.Zipcode;

import java.util.List;

public interface JoinDAO {
    List<Zipcode> selectZipcode(String dong);
    int insertMember(Member m);
    int selectOneUserid(String uid);
    int selectOneMember(Member m);

}
