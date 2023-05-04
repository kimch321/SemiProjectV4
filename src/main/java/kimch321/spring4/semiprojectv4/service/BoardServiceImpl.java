package kimch321.spring4.semiprojectv4.service;

import kimch321.spring4.semiprojectv4.dao.BoardDAO;
import kimch321.spring4.semiprojectv4.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bdsrv")
public class BoardServiceImpl implements BoardService{

  @Autowired
    BoardDAO bddao;

    @Override
    public List<Board> readBoard() {
        return bddao.selectBoard();
    }

    @Override
    public List<Board> subjectList() {
        return null;
    }

    @Override
    public List<Board> sbjcontList() {
        return null;
    }

    @Override
    public List<Board> contentList() {
        return null;
    }

    @Override
    public List<Board> useridList() {
        return null;
    }
}
