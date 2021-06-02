package com.abc.service.impl;

import com.abc.dao.StudentDao;
import com.abc.entry.Student;
import com.abc.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    //引用类型自动注入@Autowired.(默认byType注入)  @Resource(byName注入)
    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public List<Student> findStudent() {

        return studentDao.selectStudents();
    }
}
