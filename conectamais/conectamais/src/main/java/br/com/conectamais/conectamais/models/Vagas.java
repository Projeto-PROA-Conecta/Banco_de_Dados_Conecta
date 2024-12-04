package br.com.conectamais.conectamais.models;
import jakarta.persistence.*;

@Entity
@Table(name ="Vagas")


public class Vagas {
    @Id
    @GeneratedValue
    @Column(name="vagas_id")
    private int vagasid;

    @Column(name = "nome_vaga")
    private String nomevaga;

    @Column(name="descricao_vaga")
    private String descricaovaga;

    @Column(name = "categoria_vaga")
    private String categoriavaga;

    @ManyToOne
    @JoinColumn(name = "empresa_id")
    private EmpresaCadastrada empresa;


    public int getVagasid() {
        return vagasid;
    }

    public void setVagasid(int vagasid) {
        this.vagasid = vagasid;
    }

    public String getnomevaga() {
        return nomevaga;
    }

    public void setnomevaga(String nomevaga) {
        this.nomevaga= nomevaga;
    }

    public String getDescricaovaga() {
        return descricaovaga;
    }

    public void setDescricaovaga(String descricaovaga) {
        this.descricaovaga = descricaovaga;
    }

    public String getCategoriavaga() {
        return categoriavaga;
    }

    public void setCategoriavaga(String categoriavaga) {
        this.categoriavaga = categoriavaga;
    }

    public EmpresaCadastrada getEmpresa() {
        return empresa;
    }

    public void setEmpresa(EmpresaCadastrada empresa) {
        this.empresa = empresa;
    }


}