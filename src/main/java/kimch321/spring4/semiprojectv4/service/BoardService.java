package kimch321.spring4.semiprojectv4.service;

import kimch321.spring4.semiprojectv4.model.Board;

import java.util.List;

public interface BoardService {
     List<Board> readBoard(int cpage);
     List<Board> subjectList();
     List<Board> sbjcontList();
     List<Board> contentList();
     List<Board> useridList();
     int countBoard();
}
