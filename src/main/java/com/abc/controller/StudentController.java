package com.abc.controller;

import com.abc.entry.Student;
import com.abc.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService service;
    //注册学生
    @RequestMapping("/addStudent.do")//发送请求指令
    @ResponseBody//发送返回数据到jsp
    public ModelAndView addStudent(Student student){
        String tips="注册失败";
        //调用service处理student
        int nums = service.addStudent(student);
        if(nums>0){
            //注册成功
            tips="学生:"+student.getName()+"---->注册成功";
        }
        //指定页面
        ModelAndView mv = new ModelAndView();
        //添加数据
        mv.addObject("tips",tips);
        //指定页面
        /*<!--视图解析器
     视图和数据的那个返回值jsp，相当于字符串拼接路径
    -->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="prefix" value="/WEB-INF/jsp/"/>
        <property name="suffix" value=".jsp"/>
    </bean>*/
        mv.setViewName("result");//视图解析器自定义文件目录，WEB-INF/jsp/result.jsp
        return mv;
    }
    //处理查询，响应ajax
    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> student = service.findStudent();
        return student;
    }

}
