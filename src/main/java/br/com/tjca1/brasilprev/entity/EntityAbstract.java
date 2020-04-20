package br.com.tjca1.brasilprev.entity;


import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class EntityAbstract {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id",
            nullable = false,
            updatable = false)
    private Long id;

    public Long getId() {
        return id;
    }

	public void setId(Long id) {
		this.id = id;
	}
    
    
    
    
}
