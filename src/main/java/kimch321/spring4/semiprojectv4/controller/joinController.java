package kimch321.spring4.semiprojectv4.controller;

import kimch321.spring4.semiprojectv4.model.Member;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/join")
public class joinController {
    @GetMapping("/agree")
    public String agree() {
        return "join/agree.tiles";
    }

    @GetMapping("/checkme")
    public String checkme() {
        return "join/checkme.tiles";
    }

    @PostMapping("/joinme")
    public ModelAndView joinme(Member mb) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("join/joinme.tiles");
        mv.addObject("mb",mb);

        return mv;
    }

    @PostMapping("/joinok")
    public ModelAndView joinok(Member mb) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("join/joinok.tiles");
        mv.addObject("mb",mb);

        return mv;
    }

    @GetMapping("/joinok")
    public String joinok() {
        return "join/joinok.tiles";
    }
}
