package com.alvaro.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.alvaro.modulo.TblBeneficiario;



public class beneficiarioDAO {
	public List<TblBeneficiario> Listabeneficiario(TblBeneficiario bf) {
		List<TblBeneficiario> libenef = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PaginaTarea");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			libenef = em.createQuery("from TblBeneficiario as b where b.dui = '"+bf.getDui()+"'").getResultList();		
			em.getTransaction().commit();
		} catch (Exception e) {
			
			System.out.println(e + " Error");
		}
		return libenef;
	}
	
	public List<TblBeneficiario> Listabeneficiariot() {
		List<TblBeneficiario> libenef = new ArrayList<>();
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PaginaTarea");
		em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			libenef = em.createQuery("from TblBeneficiario").getResultList();		
			em.getTransaction().commit();
		} catch (Exception e) {
			
			System.out.println(e + " Error");
		}
		return libenef;
	}
public void agregarDatos(TblBeneficiario bf) {
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("PaginaTarea");
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(bf);
		em.flush();
		em.getTransaction().commit();
				
	}



public void actualizarDatos(TblBeneficiario bf) {
	EntityManager em;
	EntityManagerFactory emf;
	emf = Persistence.createEntityManagerFactory("PaginaTarea");
	em = emf.createEntityManager();
	
	bf.getIdBeneficiario();
	bf.getNombre();
	bf.getEdad();
	bf.getDireccion();
	bf.getDui();
	
	em.getTransaction().begin();
	em.merge(bf);
	em.flush();
	em.getTransaction().commit();
	
}
public void eliminarDatos(TblBeneficiario bf) {
	EntityManager em;
	EntityManagerFactory emf;
	emf = Persistence.createEntityManagerFactory("PaginaTarea");
	em = emf.createEntityManager();

	em.getTransaction().begin();		
	bf=em.getReference(TblBeneficiario.class, bf.getIdBeneficiario());
	em.remove(bf);
	em.flush();
	em.getTransaction().commit();
	
	
}

}