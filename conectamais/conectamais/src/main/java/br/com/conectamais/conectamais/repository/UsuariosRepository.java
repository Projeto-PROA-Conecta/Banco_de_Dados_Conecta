package br.com.conectamais.conectamais.repository;

import br.com.conectamais.conectamais.models.Usuarios;
import org.springframework.data.jpa.repository.JpaRepository;


import java.util.UUID;

public interface UsuariosRepository extends JpaRepository<Usuarios, UUID> {
}