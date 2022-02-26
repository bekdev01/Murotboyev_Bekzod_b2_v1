package uz.pdp.model;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;
    private String courseName;
    private String courseInfo;


    public Course(String courseName, String courseInfo) {
        this.courseName = courseName;
        this.courseInfo = courseInfo;
    }
}
