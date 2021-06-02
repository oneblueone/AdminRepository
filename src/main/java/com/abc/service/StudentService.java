package com.abc.service;

import com.abc.entry.Student;

import java.util.List;

public interface StudentService {
   int addStudent(Student student);
   List<Student> findStudent();
}
