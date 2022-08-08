package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "EMPLEADO")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Empleado {
    @Id @Column(name = "CODEMPLEADO")
    private String CODEMPLEADO;
    @Column(name = "NOMEMPLEADO")
    private String NOMEMPLEADO;
    @Column(name = "APELLEMPLEADO")
    private String APELLEMPLEADO;
    @Column(name = "FECHAREGISTRO")
    private Date FECHAREGISTRO;
    @Column(name = "CORREOUD")
    private String CORREOUD;
}
