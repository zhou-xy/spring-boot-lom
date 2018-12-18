package com.baizhi.controller;

import com.baizhi.entity.Person;
import com.baizhi.mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/per")

public class PersonController {
    @Autowired
    private PersonMapper personMapper;

    @RequestMapping("/showAll")
    @ResponseBody
    public List<Person> showAll(HttpSession httpSession) {
        List<Person> list = personMapper.selectAll();
        httpSession.setAttribute("list", list);
        System.out.println("++++++++++++");

        return list;
    }

    @RequestMapping("/addPer")
    public String insertPerson(Person person) {
        System.out.println("------>" + person);
        personMapper.insertSelective(person);
        return "redirect:/per/showAll";
    }
}
