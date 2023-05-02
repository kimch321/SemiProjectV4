package kimch321.spring4.semiprojectv4.controller;

import kimch321.spring4.semiprojectv4.model.Member;
import kimch321.spring4.semiprojectv4.service.JoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/join")
public class joinController {

    @Autowired private JoinService jnsrv;

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

    // 우편번호 검색
    // /join/zipcode?dong=동이름
    // 검색결과는 뷰페이지 없이 바로 응답으로 출력 : RESTful 방식
    // 서블릿에서 제공하는 HttpServletResponse 객체를 이용하면 스프링의 뷰리졸버 없이 바로 응답으로 출력할 수 있음
    // 단, 응답유형은 JSON 형식으로 함
    @ResponseBody
    @GetMapping("/zipcode")
    public void zipcode(String dong, HttpServletResponse res) {
        try {
            // 응답유형은 JSON으로 설정
            res.setContentType("application/json; charset=utf-8");
            // 검색된 우편번호 결과를 뷰없이 바로 응답으로 출력
            res.getWriter().print(jnsrv.findZipcode(dong));
        } catch(IOException ex) {
            ex.printStackTrace();
        }
    }

    // 아이디 사용가능여부 검사
    // /join/checkuid?uid=아이디
    // 사용가능  : 0
    // 사용불가능: 1
    @ResponseBody
    @GetMapping("/checkuid")
    public void checkuid(String uid, HttpServletResponse res) {
        try {
            // 아이디 사용여부를 뷰없이 바로 응답으로 출력
            res.getWriter().print(jnsrv.checkUserid(uid));
        } catch(IOException ex) {
            ex.printStackTrace();
        }
    }
}
