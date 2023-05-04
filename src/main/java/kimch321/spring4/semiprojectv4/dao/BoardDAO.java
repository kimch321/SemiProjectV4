package kimch321.spring4.semiprojectv4.dao;

import kimch321.spring4.semiprojectv4.model.Board;

import java.util.List;

public interface BoardDAO {

    List<Board> selectBoard(int strbno);

    int countBoard();
}
