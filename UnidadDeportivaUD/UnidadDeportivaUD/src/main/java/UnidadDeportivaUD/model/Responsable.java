package UnidadDeportivaUD.model;

import UnidadDeportivaUD.model.llaves.primarias.compuestas.ResponsablePK;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "RESPONSABLE")
@AllArgsConstructor
@NoArgsConstructor
@Data
@IdClass(ResponsablePK.class)
public class Responsable {

    @Id
    @ManyToOne
    @JoinColumn(name = "CONSECPROGRA_FKRESPONSABLE")
    private Programacion programacion;

    @Id
    @JoinColumn(name = "CONSECRES")
    private Long CONSECRES;

    @ManyToOne @JoinColumn(name = "IDROL_FKRESPONSABLE")
    private Rol rol;

    @ManyToOne @JoinColumn(name = "CODEMPLEADO_FKRESPONSABLE")
    private Empleado empleado;

    @ManyToOne @JoinColumn(name = "CODESTUDIANTE_FKRESPONSABLE")
    private Estudiante estudiante;

    @Column(name = "FECHAINI")
    private Date FECHAINI;

    @Column(name = "FECHAFIN")
    private Date FECHAFIN;

}
