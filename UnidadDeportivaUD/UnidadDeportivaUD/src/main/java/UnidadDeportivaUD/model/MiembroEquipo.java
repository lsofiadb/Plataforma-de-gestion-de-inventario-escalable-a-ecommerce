package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.MiembroEquipoPK;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "MIEMBROEQUIPO")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(MiembroEquipoPK.class)
public class MiembroEquipo {
    @Id @ManyToOne @JoinColumn(name = "CONSEEQUIPO_FKMIEMEQUIPO")
    private Equipo equipo;

    @Id @Column(name = "ITEMMIEMBRO")
    private Long ITEMMIEMBRO;

    @ManyToOne @JoinColumn(name = "CODESTUDIANTE_FKMIEMEQUIPO")
    private Estudiante estudiante;
}
