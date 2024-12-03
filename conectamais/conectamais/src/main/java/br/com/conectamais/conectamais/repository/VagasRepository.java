package br.com.conectamais.conectamais.repository;

import br.com.conectamais.conectamais.models.Vagas;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface VagasRepository extends JpaRepository <Vagas,UUID> {
}
