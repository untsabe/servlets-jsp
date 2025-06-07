package za.ac.tut.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Project;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-23T21:08:44")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile ListAttribute<Student, Project> projects;
    public static volatile SingularAttribute<Student, String> name;
    public static volatile SingularAttribute<Student, Long> id;

}