package studentSystem.demo.presentation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import studentSystem.demo.data.TeacherRepository;

@Controller
@RequiredArgsConstructor
public class TeacherController {

    private final TeacherRepository teacherRepository;

    @GetMapping("/teachers")
    public String getTeachers(Model model) {
        var teachers = teacherRepository.findAll();
        model.addAttribute("teachers", teachers);
        return "teachers";
    }
}