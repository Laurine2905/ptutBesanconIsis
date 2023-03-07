package jfc.isis.ptutBesanconIsis.dao;

import jfc.isis.ptutBesanconIsis.entity.Objet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ObjetRepository extends JpaRepository<Objet, Integer> {

    /**
     * Trouve un objet par son nom.
     * Cette méthode sera automatiquement implémentée par Spring Data JPA.
     * @param ObjetName
     * @return L'objet correspondant au nom fourni, ou null si pas trouvé.
     */
    public Objet findByName(String ObjetName);
}