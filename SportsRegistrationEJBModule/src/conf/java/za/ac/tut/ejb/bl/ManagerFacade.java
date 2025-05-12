/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Manager;
import za.ac.tut.entities.Student;

/**
 *
 * @author PHATHUTSHED20
 */
@Stateless
public class ManagerFacade extends AbstractFacade<Manager> implements ManagerFacadeLocal {

    @PersistenceContext(unitName = "SportsRegistrationEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ManagerFacade() {
        super(Manager.class);
    }
    @RolesAllowed("manager")
    @Override
    public Long cntAllPlayersPerSport(String sport) {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.sport= :sport");
        query.setParameter("sport", sport);
        Long cnt=(Long)query.getSingleResult();
        return cnt;
    }
     @RolesAllowed("manager")
    @Override
    public Long cntAllMalePlayersPerSport(String sport) {
       Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender= 'M' AND s.sport= :sport");
        query.setParameter("sport", sport);
        Long cnt=(Long)query.getSingleResult();
        return cnt;
    }
     @RolesAllowed("manager")
    @Override
    public Long cntAllFemalePlayersPerSport(String sport) {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender= 'F' AND s.sport= :sport");
        query.setParameter("sport", sport);
        Long cnt=(Long)query.getSingleResult();
        return cnt;
    }
     @RolesAllowed("manager")
    @Override
    public List<Student> getAllPlayersPerSport(String sport) {
        Query query=em.createQuery("SELECT s FROM Student s WHERE s.sport= :sport");
        query.setParameter("sport", sport);
        List<Student> players=query.getResultList();
        return players;
    }
    
}
