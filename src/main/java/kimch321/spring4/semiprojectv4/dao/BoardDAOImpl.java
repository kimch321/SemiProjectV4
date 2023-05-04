package kimch321.spring4.semiprojectv4.dao;

import kimch321.spring4.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("bddao")
public class BoardDAOImpl implements BoardDAO{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<Board> selectBoard() {
        return sqlSession.selectList("board.selectList",0);
    }



}
