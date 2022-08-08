package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PERIODO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Periodo {
    @Id @Column(name = "IDPERIODO")
    private String IDPERIODO;
}
