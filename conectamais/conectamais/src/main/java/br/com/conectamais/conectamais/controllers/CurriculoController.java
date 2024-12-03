package br.com.conectamais.conectamais.controllers;

import br.com.conectamais.conectamais.models.Curriculo;
import br.com.conectamais.conectamais.repository.CurriculoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController

@RequestMapping("/Curriculo")
public class CurriculoController {
    @Autowired
    CurriculoRepository dbConnection;
    @GetMapping("/")
    public List<Curriculo> encontrarTodosOsRegistros(){
        return dbConnection.findAll();
    }
}
