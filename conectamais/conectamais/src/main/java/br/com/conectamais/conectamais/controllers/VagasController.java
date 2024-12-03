package br.com.conectamais.conectamais.controllers;


import br.com.conectamais.conectamais.models.Vagas;
import br.com.conectamais.conectamais.repository.VagasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/Vagas")
public class VagasController {
@Autowired
    VagasRepository dbConnection;
@GetMapping("/")
    public List <Vagas>encontrarTodosOsRegistros(){
    return dbConnection.findAll();
}

}



// As Restcontrollers serão capazes de receber as informações das interações com os usuários
// A nossa controladora terá recursos que serão mapeados