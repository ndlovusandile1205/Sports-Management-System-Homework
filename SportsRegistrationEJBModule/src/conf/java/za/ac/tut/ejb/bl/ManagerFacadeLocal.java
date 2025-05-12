/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Manager;
import za.ac.tut.entities.Student;

/**
 *
 * @author PHATHUTSHED20
 */
@Local
public interface ManagerFacadeLocal {

    void create(Manager manager);

    void edit(Manager manager);

    void remove(Manager manager);

    Manager find(Object id);

    List<Manager> findAll();

    List<Manager> findRange(int[] range);

    int count();
    Long cntAllPlayersPerSport(String sport);
    Long cntAllMalePlayersPerSport(String sport);
    Long cntAllFemalePlayersPerSport(String sport);
    List<Student> getAllPlayersPerSport(String sport);
    
    
    
}
