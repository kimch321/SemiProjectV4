package kimch321.spring4.semiprojectv4.controller;

import kimch321.spring4.semiprojectv4.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    BoardService bdsrv;
    @GetMapping("/list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();

        mv.addObject("bdlist", bdsrv.readBoard());
        mv.setViewName("board/list.tiles");
        return mv;
    }

}
