package br.com.conectamais.conectamais.repository;

import br.com.conectamais.conectamais.models.Condicao;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface CondicaoRepository extends JpaRepository <Condicao, UUID> {
    }
