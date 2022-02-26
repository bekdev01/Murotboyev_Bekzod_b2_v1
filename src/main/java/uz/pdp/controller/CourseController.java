package uz.pdp.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import uz.pdp.model.Course;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class CourseController {

    Configuration configuration = new Configuration().configure().addAnnotatedClass(Course.class);
    SessionFactory sessionFactory = configuration.buildSessionFactory();
    Session session = sessionFactory.openSession();

    @GetMapping("/")
    public void redirect(HttpServletResponse response, HttpServletRequest request) throws IOException {
        response.sendRedirect("/add-course-page");
    }

    @GetMapping("/course")
    public String getCourses(Model model) {
        Transaction transaction = session.beginTransaction();
        List<Course> courses = session.createQuery("select c from Course c", Course.class).list();
        transaction.commit();
        model.addAttribute("courses", courses);
        return "course";
    }

    @GetMapping("/add-course-page")
    public String addCoursePage() {
        return "addCourse";
    }

    @PostMapping("/add-course")
    public void addCourse(HttpServletResponse response, HttpServletRequest request) throws IOException {
        String courseName = request.getParameter("courseName");
        String courseInfo = request.getParameter("courseInfo");
        if (courseInfo != null && courseName != null) {

            Transaction transaction = session.beginTransaction();
            session.saveOrUpdate(new Course(courseName, courseInfo));
            transaction.commit();
        }
        response.sendRedirect("/add-course-page");
    }


}


