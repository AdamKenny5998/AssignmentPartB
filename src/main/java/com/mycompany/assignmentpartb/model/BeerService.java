/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.assignmentpartb.model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Service;

/**
 *
 * @author Adam
 */
@Service
@SuppressWarnings("StaticNonFinalUsedInInitialization")
public class BeerService {

    public List<Beers> Search(String name) {
        EntityManager em = DBUtil.getEMF().createEntityManager();
        TypedQuery<Beers> tq = em.createNamedQuery("Beers.findBySearch", Beers.class).setParameter("name", "%" + name + "%");

        List<Beers> beersSearch = new ArrayList<>();
        try {
            beersSearch = tq.getResultList();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return beersSearch;
    }
    
    public Beers getBeerById(int id){
        EntityManager em = DBUtil.getEMF().createEntityManager();
        TypedQuery<Beers> tq = em.createNamedQuery("Beers.findById", Beers.class).setParameter("id",id);
        
        Beers b = null;
        try{
            b =tq.getSingleResult();
        }catch(Exception e){
            System.out.println(e);
        }finally{
            em.close();
        }
        return b;
    }
    
    public void increasePrice(int id){
        EntityManager em = DBUtil.getEMF().createEntityManager();
        TypedQuery<Beers> tq = em.createNamedQuery("Beers.findById", Beers.class).setParameter("id", id);
        
        
    }

}
