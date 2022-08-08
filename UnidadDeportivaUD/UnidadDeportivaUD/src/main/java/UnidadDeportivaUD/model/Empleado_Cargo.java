package UnidadDeportivaUD.model;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "EMPLEADO_CARGO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Empleado_Cargo {

    @Id
    @Column(name="CONSEC")
    private Long CONSEC;

    @ManyToOne
    @JoinColumn(name="CODESPACIO_FKEMPLEADO_CARGO")
    private Espacio espacio;

    @ManyToOne
    @JoinColumn(name="IDCARGO_FKEMPLEADO_CARGO")
    private Cargo cargo;

    @ManyToOne
    @JoinColumn(name="CODEMPLEADO_FKEMPLEADO_CARGO")
    private Empleado empleado;

    @Column(name = "FECHACARGO")
    private Date FECHACARGO;

    @Column(name = "FECHAFINCAR") @Nullable
    private Date FECHAFINCAR;
}