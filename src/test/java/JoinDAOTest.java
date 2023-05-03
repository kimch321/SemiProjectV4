import kimch321.spring4.semiprojectv4.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Optional;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class JoinDAOTest {

    @Autowired
    SqlSession sqlSession;

    @Test
    public void findZipcode(){
        String dong = "%구로%";
        assertNotNull(sqlSession.selectList("join.findZipcode", dong));
    }

    @Test
    public void checkUserid() {
        String uid = "abc123";
        assertEquals(1, (int)sqlSession.selectOne("join.selectOneUid", uid));
    }

    @Test
    public void newMember() {
        Member m = new Member();
        m.setName("헤교");
        m.setJumin1("123456");
        m.setJumin2("1234567");
        m.setUserid("abc123");
        m.setPasswd("abc123");
        m.setZipcode("123-123");
        m.setAddr1("dddd");
        m.setAddr2("dddssssd");
        m.setEmail("asdasd");
        m.setPhone("asdasd");

        assertEquals(1,sqlSession.insert("join.insertMember", m));
    }


}
