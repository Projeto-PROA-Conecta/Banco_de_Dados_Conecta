package br.com.conectamais.conectamais.models;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
@Entity
@Table(name="curriculo")
public class curriculo {
@Id
@Column(name="curriculo_id")
int curriculoid;

String formação_academica;

String eperiencia_profissional;

String certificacoes;

String habilidades;
@ManyToOne
@JoinColumn(name="usuario_id")
private usuarios usuario;


}
