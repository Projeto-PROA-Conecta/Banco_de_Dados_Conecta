package br.com.conectamais.conectamais.controllers;

import br.com.conectamais.conectamais.models.Usuarios;
import br.com.conectamais.conectamais.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin // Permite requisições de origens diferentes (CORS)
@RequestMapping("/usuarios") // Define o prefixo para as URLs da API
public class UsuariosController {

    @Autowired
    private UsuariosRepository usuariosRepository; // Nome mais descritivo para o repositório

    // Endpoint para listar todos os registros
    @GetMapping("/")
    public List<Usuarios> encontrarTodosOsRegistros() {
        return usuariosRepository.findAll();
    }

    // Endpoint para criar um novo registro
    @PostMapping(value = "/salvar", produces = "application/json")
    public Usuarios create(@RequestBody Usuarios dados) {
        return usuariosRepository.save(dados);
    }
}