package br.com.conectamais.conectamais.models;


import jakarta.persistence.*;

@Entity
@Table(name="Curriculo")
public class Curriculo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "curriculo_id")
    private int curriculoid;
    @Column(name = "formacao_academica")
    private String formacaoAcademica;
    @Column(name = "experiencia_profissional")
    private String eperienciaProfissional;

    private String certificacoes;

    private String habilidades;


    @ManyToOne
    @JoinColumn(name = "usuario_id")
    private Usuarios usuario;

    public int getCurriculoid() {
        return curriculoid;
    }

    public void setCurriculoid(int curriculoid) {
        this.curriculoid = curriculoid;
    }

    public String getFormacaoAcademica() {
        return formacaoAcademica;
    }

    public void setFormacaoAcademica(String formacaoAcademica) {
        this.formacaoAcademica = formacaoAcademica;
    }

    public String getEperienciaProfissional() {
        return eperienciaProfissional;
    }

    public void setEperienciaProfissional(String experienciaProfissional) {
        this.eperienciaProfissional = experienciaProfissional;
    }

    public String getCertificacoes() {
        return certificacoes;
    }

    public void setCertificacoes(String certificacoes) {
        this.certificacoes = certificacoes;
    }


    public String getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(String habilidades) {
        this.habilidades = habilidades;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }
}