package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "PROGRAMACION")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Programacion {

    @Id @Column(name = "CONSECPROGRA")
    private Long CONSECPROGRA;

    @ManyToOne @JoinColumn(name = "CODESPACIO_FKPROGRAMACION")
    private Espacio espacio;

    @ManyToOne @JoinColumn(name = "IDDEPORTE_FKPROGRAMACION")
    private Deporte deporte;

    @ManyToOne @JoinColumn(name = "IDPERIODO_FKPROGRAMACION")
    private Periodo periodo;

    @ManyToOne @JoinColumn(name = "IDACTIVIDAD_FKPROGRAMACION")
    private Actividad actividad;

    @ManyToOne @JoinColumn(name = "IDHORAINICIO_FKPROGRAMACION")
    private Hora horaInicio;

    @ManyToOne @JoinColumn(name = "IDHORAFIN_FKPROGRAMACION")
    private Hora horaFin;

    @ManyToOne @JoinColumn(name = "IDDIA_FKPROGRAMACION")
    private Dia dia;

    @Column(name = "CUPO")
    private Long CUPO;

    @Column(name = "NOINSCRITO")
    private Long NOINSCRITO;

}
