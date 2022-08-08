package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TIPOESPACIO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class TipoEspacio {
    @Id @Column(name = "IDTIPOESPACIO")
    private String IDTIPOESPACIO;
    @Column(name ="DESCTIPOESPACIO")
    private String DESCTIPOESPACIO;

}
