package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ACTIVIDAD")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Actividad {
    @Id @Column(name = "IDACTIVIDAD")
    private String IDACTIVIDAD;
    @Column(name = "DESCACTIVIDAD")
    private String DESCACTIVIDAD;

}
