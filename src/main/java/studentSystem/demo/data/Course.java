package studentSystem.demo.data;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.*;

@Entity
@Table(name = "courses")
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String courseName;

    private Integer credits;

    @ManyToMany(mappedBy = "courses")
    private List<Student> students;
}
