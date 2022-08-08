package UnidadDeportivaUD.controller;

import UnidadDeportivaUD.model.Espacio_Deporte;
import UnidadDeportivaUD.service.Espacio_DeporteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/espacio_deporte")
public class Espacio_DeporteController {

    @Autowired
    private Espacio_DeporteService espacio_deporteService;


    @GetMapping("/obtenerEspaciosDeporte")
    private ResponseEntity<List<Espacio_Deporte>> obtenerEspaciosDeporte(){
        return ResponseEntity.ok(espacio_deporteService.obtenerEspaciosDeporte());
    }
}
