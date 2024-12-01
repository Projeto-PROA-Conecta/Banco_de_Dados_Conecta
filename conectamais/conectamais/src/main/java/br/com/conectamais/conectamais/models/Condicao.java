package br.com.conectamais.conectamais.models;

import jakarta.persistence.*;

@Entity
@Table(name = "condicao")
public class Condicao {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)// gerara id automaticamente
    @Column(name="condicao_id")
    private int condicaoid;
    @Column(name = "tipo_de_condicao")
    private String tipodecondicao;

@Column(name = "Grau_de_dificuldade")
   private String graudedificuldade;
@ManyToOne
    @JoinColumn(name="usuario_id")
private Usuarios usuario;

    public int getCondicaoid() {
        return condicaoid;
    }

    public void setCondicaoid(int condicaoid) {
        this.condicaoid = condicaoid;
    }

    public String getTipodecondicao() {
        return tipodecondicao;
    }

    public void setTipodecondicao(String tipodecondicao) {
        this.tipodecondicao = tipodecondicao;
    }

    public String getGraudedificuldade() {
        return graudedificuldade;
    }

    public void setGraudedificuldade(String graudedificuldade) {
        this.graudedificuldade = graudedificuldade;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }
}
