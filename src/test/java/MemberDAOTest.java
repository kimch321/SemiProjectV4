import kimch321.spring4.semiprojectv4.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class MemberDAOTest {

    @Autowired
    SqlSession sqlSession;

    @Test
    public void selectLogin() {
        Member m = new Member();

        m.setUserid("song123");
        m.setPasswd("song123");
        assertEquals(1, (int) sqlSession.selectOne("member.selectLogin", m));

        m.setUserid("song321");
        m.setPasswd("song321");
        assertEquals(0, (int) sqlSession.selectOne("member.selectLogin", m));

    }
}
