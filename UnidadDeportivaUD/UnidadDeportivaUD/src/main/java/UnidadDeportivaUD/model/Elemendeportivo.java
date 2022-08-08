package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ELEMENDEPORTIVO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Elemendeportivo {

    @Id @Column(name = "CONSECELEMENTO")
    private Long CONSECELEMENTO;

    @ManyToOne @JoinColumn(name = "IDTIPOELEMENTO_FKELEMENDEPORTI")
    private TipoElemento tipoElemento;

    @ManyToOne @JoinColumn(name = "IDESTADO_FKELEMENDEPORTIVO")
    private Estado estado;

    @ManyToOne @JoinColumn(name = "CODESPACIO_FKELEMENDEPORTIVO")
    private Espacio espacio;

    @ManyToOne @JoinColumn(name = "IDMARCA_FKELEMENDEPORTIVO")
    private Marca marca;

    @Column(name = "FECHAREGISTRO")
    private Date FECHAREGISTRO;

}
