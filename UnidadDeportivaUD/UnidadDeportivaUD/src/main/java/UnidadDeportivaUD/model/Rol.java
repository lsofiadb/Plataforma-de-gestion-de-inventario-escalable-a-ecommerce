package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ROL")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Rol {
    @Id @Column(name = "IDROL")
    private String IDROL;
    @Column(name = "DESCROL")
    private String DESCROL;
}
