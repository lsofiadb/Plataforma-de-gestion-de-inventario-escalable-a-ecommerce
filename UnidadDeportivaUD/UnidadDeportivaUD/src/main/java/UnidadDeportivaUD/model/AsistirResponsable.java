package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.AsistirResponsablePK;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ASISTIRRESPONSABLE")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(AsistirResponsablePK.class)
public class AsistirResponsable {

    @Id @ManyToOne @JoinColumn(name = "CONSECPROGRA_FKASISTIRRESPONSA")
    private Programacion programacion;

    @Id @ManyToOne @JoinColumn(name = "CONSECRES_FKASISTIRRESPONSABLE")
    private Responsable responsable;

    @Id @Column(name = "CONSECASISRES")
    private Long CONSECASISRES;

    @Column(name = "FECHAASISRES")
    private Date FECHAASISRES;

    @Column(name = "HORAASISRES")
    private Date HORAASISRES;


}
