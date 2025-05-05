package studentSystem.demo.data;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.*;

@Entity
@Table(name = "groups")
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
@Column(name="name")
    private String groupName;

    @OneToMany(mappedBy = "group")
    private List<Student> students = new ArrayList<>();
}
