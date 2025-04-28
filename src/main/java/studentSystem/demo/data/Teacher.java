package studentSystem.demo.data;
import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.*;

@Entity
@Table(name = "teachers")
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;

    private String lastName;

    private String email;
    @OneToMany(mappedBy = "teacher")
    private List<Course> courses;
}
