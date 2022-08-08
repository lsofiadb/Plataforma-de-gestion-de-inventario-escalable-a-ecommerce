package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MARCA")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Marca {
    @Id @Column(name = "IDMARCA")
    private String IDMARCA;
    @Column(name = "NOMMARCA")
    private String NOMMARCA;
}
