package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DEPORTE")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Deporte {
    @Id
    @Column(name = "IDDEPORTE")
    private String IDDEPORTE;
    @Column(name = "NOMDEPORTE")
    private String NOMDEPORTE;
}
