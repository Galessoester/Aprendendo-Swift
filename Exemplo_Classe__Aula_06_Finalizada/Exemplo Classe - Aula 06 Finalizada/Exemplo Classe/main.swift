//
//  main.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Foundation

//print("Hello, World!")
// criando um objeto com o construtor padrão
var a = Atleta()
//fazendo o set
a.nome = "Ana"
a.idade = 25
//fazendo o get
print("Atleta \(a.nome) tem \(a.idade) anos")

//Criando o objeto com o construtor de dois parâmetros
var a2 = Atleta(nome: "Carlos", idade: 26)
print("Atleta \(a2.nome) tem \(a2.idade) anos")


var a3: Atleta?
a3 = Atleta(nome: "Caio", idade: 45)
print("Atleta \(a3!.nome) tem \(a3!.idade) anos")
a3 = nil


var referencia1:Pessoa?
var referencia2:Pessoa?
var referencia3:Pessoa?

referencia1 = Pessoa(nome: "Marina", cidade: "Florianópolis")

referencia2 = referencia1
referencia3 = referencia1

referencia1=nil
referencia2=nil

referencia3=nil
//Começa aqui a aula 05....
//chamando a sub-rotina(Void)
a.calcularIMC(peso: 60, altura: 1.60)
//chamando a function
print(a2.calcularIMC2(peso: 130, altura: 1.90))
//chamando o método de instânciua
print(a2.exibirAtleta())
//chamando o método de classe
print(Atleta.alerta())
//chjamando o método com sobrecarga - Overloads
print(Atleta.alerta(tempoEmMinutos: 20))

//Exemplo Herança
var p = Paratleta()
p.nome = "Jonas"
p.idade = 27
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())

//chamando os protocolos
a.beberIsotonico()
a2.comerCarboidrato()
