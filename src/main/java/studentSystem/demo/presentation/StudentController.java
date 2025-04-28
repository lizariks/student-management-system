package studentSystem.demo.presentation;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import studentSystem.demo.data.Student;
import studentSystem.demo.data.StudentRepository;

import java.util.*;

@Controller
@RequiredArgsConstructor
public class StudentController {

    private final StudentRepository studentRepository;

    @GetMapping("/students")
    public String getStudents(Model model) {
        var students = studentRepository.findAll();
        model.addAttribute("students", students);
        return "students";
    }
}
