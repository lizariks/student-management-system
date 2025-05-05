package studentSystem.demo.presentation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import studentSystem.demo.data.CourseRepository;

@Controller
@RequiredArgsConstructor
public class CourseController {

    private final CourseRepository courseRepository;

    @GetMapping("/courses")
    public String getCourses(Model model) {
        var courses = courseRepository.findAll();
        model.addAttribute("courses", courses);
        return "courses";
    }
}