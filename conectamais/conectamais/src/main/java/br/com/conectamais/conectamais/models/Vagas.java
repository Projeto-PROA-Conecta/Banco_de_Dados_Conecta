package br.com.conectamais.conectamais.models;
import jakarta.persistence.*;

@Entity
@Table(name ="Vagas")


public class Vagas {
    @Id
    @GeneratedValue
    @Column(name="vagas_id")
    private int vagasid;

    @Column(name = "vaga_nome")
    private String vaganome;

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

    public String getVaganome() {
        return vaganome;
    }

    public void setVaganome(String vaganome) {
        this.vaganome = vaganome;
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
