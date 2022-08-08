package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ESTADO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Estado {
    @Id @Column(name = "IDESTADO")
    private String IDESTADO;
    @Column(name = "DESCESTADO")
    private String DESCESTADO;
}
