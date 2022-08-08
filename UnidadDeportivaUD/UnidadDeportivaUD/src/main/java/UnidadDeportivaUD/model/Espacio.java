package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.lang.Nullable;

import javax.persistence.*;

@Entity
@Table(name = "ESPACIO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Espacio {

    @Id @Column(name = "CODESPACIO")
    private String CODESPACIO;
    @ManyToOne @JoinColumn(name = "IDTIPOESPACIO_FKESPACIO")
    private TipoEspacio tipoEspacio;
    @ManyToOne @JoinColumn(name = "ESP_CODESPACIO_FKESPACIO") @Nullable
    private Espacio espacio;
    @Column(name = "NOMESPACIO")
    private String NOMESPACIO;
}
