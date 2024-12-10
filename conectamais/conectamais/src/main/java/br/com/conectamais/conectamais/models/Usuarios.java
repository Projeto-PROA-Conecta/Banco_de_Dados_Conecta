package br.com.conectamais.conectamais.models;
import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import java.util.Date;
import java.time.LocalDate;


@Entity
@Table(name="Usuarios")

public class Usuarios {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "usuario_id")

    private int usuarioid;


    private   String nome;


    private String email;

private String telefone;

    private String senha;
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Column(name="data_de_nascimento")
    private  LocalDate datadenascimento;


    private String cpf;


    private String rg;


    private  String cep;
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Column(name = "data_de_cadastro")
    private   LocalDate datadecadastro;


    // CRUD -> CREATE READ UPDATE DELETE
    // Getters and Setters
//Getters são métodos que utilizamos para recuperar dados do banco
// Setters são métodos que utilizamos para inserir dados no banco


    public int getUsuarioid() {
        return usuarioid;
    }

    public void setUsuarioid(int usuarioid) {
        this.usuarioid = usuarioid;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public LocalDate getDatadenascimento() {
        return datadenascimento;
    }

    public void setDatadenascimento(LocalDate datadenascimento) {
        this.datadenascimento = datadenascimento;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public LocalDate getDatadecadastro() {
        return datadecadastro;
    }

    public void setDatadecadastro(LocalDate datadecadastro) {
        this.datadecadastro = datadecadastro;
    }

}
