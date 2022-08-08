package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "PRESTAMO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Prestamo {

    @Id @Column(name = "CONSECPRESTAMO")
    private Long CONSECPRESTAMO;

    @ManyToOne
    @JoinColumn(name = "CONSECPROGRA_FKPRESTAMO")
    private Programacion programacion;

    @ManyToOne
    @JoinColumn(name = "CONSECRES_FKPRESTAMO")
    private Responsable responsable;

    @ManyToOne
    @JoinColumn(name = "CONSECASISRES_FKPRESTAMO")
    private AsistirResponsable asistirResponsable;

    @ManyToOne
    @JoinColumn(name = "CONSECELEMENTO_FKPRESTAMO")
    private Elemendeportivo elemendeportivo;

}
