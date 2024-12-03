package br.com.conectamais.conectamais.repository;

import br.com.conectamais.conectamais.models.EmpresaCadastrada;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface EmpresaCadastradaRepository extends JpaRepository <EmpresaCadastrada, UUID> {
}
