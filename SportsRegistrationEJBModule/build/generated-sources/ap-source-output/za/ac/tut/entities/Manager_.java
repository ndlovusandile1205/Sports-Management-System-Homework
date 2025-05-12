package za.ac.tut.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Student;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T03:23:17")
@StaticMetamodel(Manager.class)
public class Manager_ { 

    public static volatile ListAttribute<Manager, Student> players;
    public static volatile SingularAttribute<Manager, String> name;
    public static volatile SingularAttribute<Manager, Long> id;

}