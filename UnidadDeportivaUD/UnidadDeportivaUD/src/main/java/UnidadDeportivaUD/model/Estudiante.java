package UnidadDeportivaUD.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ESTUDIANTE")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Estudiante {
    @Id @Column(name = "CODESTUDIANTE")
    private String CODESTUDIANTE;

    @ManyToOne @JoinColumn(name = "CODESPACIO_FKESTUDIANTE")
    private Espacio espacio;

    @JoinColumn(name = "NOMESTUDIANTE")
    private String NOMESTUDIANTE;

    @JoinColumn(name = "APELLESTUDIANTE")
    private String APELLESTUDIANTE;

    @JoinColumn(name = "FECHAREGESTUDIANTE")
    private Date FECHAREGESTUDIANTE;

    @JoinColumn(name = "CORREOUDESTUDIANTE")
    private String CORREOUDESTUDIANTE;

    @JoinColumn(name = "FECHANACESTUDIANTE")
    private Date FECHANACESTUDIANTE;

}
