package kimch321.spring4.semiprojectv4.service;

import kimch321.spring4.semiprojectv4.model.Board;

import java.util.List;

public interface BoardService {
    public List<Board> readBoard(int cpage);
    public List<Board> subjectList();
    public List<Board> sbjcontList();
    public List<Board> contentList();
    public List<Board> useridList();
}
