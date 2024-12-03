package br.com.conectamais.conectamais.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Empresas_cadastradas")

public class EmpresaCadastrada {

@Id
@GeneratedValue
@Column(name = "empresa_id")
private int empresaid;

private  String nome ;

private String ramo;

private String email;

private String senha;

private String endereco;

@Column(name = "matriz_ou_filial")
    private String matrizoufilial;

private String cnpj;


    public int getEmpresaid() {
        return empresaid;
    }

    public void setEmpresaid(int empresaid) {
        this.empresaid = empresaid;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public String getRamo() {
        return ramo;
    }

    public void setRamo(String ramo) {
        this.ramo = ramo;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }


    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }


    public String getMatrizoufilial() {
        return matrizoufilial;
    }

    public void setMatrizoufilial(String matrizoufilial) {
        this.matrizoufilial = matrizoufilial;
    }


    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
}
