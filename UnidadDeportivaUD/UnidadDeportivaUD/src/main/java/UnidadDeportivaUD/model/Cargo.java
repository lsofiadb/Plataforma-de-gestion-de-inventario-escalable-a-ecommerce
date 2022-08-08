package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CARGO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cargo {
    @Id @Column(name = "IDCARGO")
    private String IDCARGO;
    @Column(name = "DESCCARGO")
    private String DESCCARGO;
}
