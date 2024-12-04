package br.com.conectamais.conectamais.controllers;

import br.com.conectamais.conectamais.models.EmpresaCadastrada;
import br.com.conectamais.conectamais.repository.EmpresaCadastradaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/Empresa")
public class EmpresaCadastradaController {
    @Autowired //como se juntasse os dados de outros códigos dentro do projeto sem fazermos isso manualmente(no caso aqui é o dbConnection que está na pasta repository)
    EmpresaCadastradaRepository dbConnection;

    @GetMapping("/")
    public List<EmpresaCadastrada> encontrarTodosOsRegistros() {
        return dbConnection.findAll();
    }
}



