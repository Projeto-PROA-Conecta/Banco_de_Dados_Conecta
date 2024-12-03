package br.com.conectamais.conectamais.repository;

import br.com.conectamais.conectamais.models.Curriculo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface CurriculoRepository extends JpaRepository <Curriculo,UUID> {
}
