package br.com.conectamais.conectamais.controllers;


import br.com.conectamais.conectamais.models.Condicao;
import br.com.conectamais.conectamais.repository.CondicaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/Condicao")
public class CondicaoController {
    @Autowired
    CondicaoRepository dbConnection;
@GetMapping("/")
public List<Condicao> encontrarTodosOsRegistros(){
        return dbConnection.findAll();
    }
}
