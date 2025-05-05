package studentSystem.demo.presentation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import studentSystem.demo.data.GroupRepository;

@Controller
@RequiredArgsConstructor
public class GroupController {

    private final GroupRepository groupRepository;

    @GetMapping("/groups")
    public String getGroups(Model model) {
        var groups = groupRepository.findAll();
        model.addAttribute("groups", groups);
        return "groups";
    }
}