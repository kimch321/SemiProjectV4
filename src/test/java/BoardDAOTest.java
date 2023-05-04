import kimch321.spring4.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})

public class BoardDAOTest {
    @Autowired
    SqlSession sqlSession;



    @Test
    public void selectBoard() {
        assertEquals(25,sqlSession.selectList("board.selectList",0).size());
    }
}
