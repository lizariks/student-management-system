package studentSystem.demo.presentation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import studentSystem.demo.data.CourseRepository;
import studentSystem.demo.data.GroupRepository;
import studentSystem.demo.data.StudentRepository;
import studentSystem.demo.data.TeacherRepository;

@Controller
@RequiredArgsConstructor
public class DashboardController {

    private final StudentRepository studentRepository;
    private final GroupRepository groupRepository;
    private final TeacherRepository teacherRepository;
    private final CourseRepository courseRepository;

    @GetMapping("/")
    public String dashboard(Model model) {
        model.addAttribute("studentCount", studentRepository.count());
        model.addAttribute("groupCount", groupRepository.count());
        model.addAttribute("teacherCount", teacherRepository.count());
        model.addAttribute("courseCount", courseRepository.count());
        return "index";
    }
}