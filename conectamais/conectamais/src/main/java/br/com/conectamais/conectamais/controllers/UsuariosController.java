package br.com.conectamais.conectamais.controllers;


import br.com.conectamais.conectamais.models.Usuarios;
import br.com.conectamais.conectamais.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/Usuarios") //prefixo para url que o usuario deve colocar para pesquisar ou inserir dados na utilizando isso na url
public class UsuariosController {
    @Autowired
    UsuariosRepository dbConnection;

    @GetMapping("/")

    public List <Usuarios> encontrarTodosOsRegistros(){
        return dbConnection.findAll();
    }
@CrossOrigin
@PostMapping(value = "/salvar", produces = "application/json")
//criar um novo registro
public Usuarios create(@RequestBody Usuarios dados){
    dbConnection.save(dados);
    return dados;
}

}