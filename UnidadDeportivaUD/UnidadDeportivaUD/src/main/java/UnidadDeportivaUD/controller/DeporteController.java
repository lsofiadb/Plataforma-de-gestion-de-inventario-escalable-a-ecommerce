package UnidadDeportivaUD.controller;

import UnidadDeportivaUD.model.Deporte;
import UnidadDeportivaUD.service.DeporteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/deporte")
public class DeporteController {

    @Autowired
    private DeporteService deporteService;

    @GetMapping("/obtenerDeportes")
    public ResponseEntity<List<Deporte>> obtenerDeportes(){
        return ResponseEntity.ok(deporteService.obtenerDeportes());
    }

}
