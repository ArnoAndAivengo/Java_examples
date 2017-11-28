package com.example.j2eeapp.commons.dao.domain;
import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 *  Base entity type to hold common Id property. To be extended.
 * Created by Александр on 04.02.2017.
 */
@MappedSuperclass
public class BaseEntity implements Serializable {
    private static final long serialVersionUID = 568379222048217476L;

    @Id
    @GeneratedValue
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
