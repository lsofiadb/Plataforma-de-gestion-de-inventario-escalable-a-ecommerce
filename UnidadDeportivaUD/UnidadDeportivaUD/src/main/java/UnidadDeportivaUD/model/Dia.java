package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DIA")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Dia {

    @Id @Column(name = "IDDIA")
    private String IDDIA;
    @Column(name = "NOMDIA")
    private String NOMDIA;

}
