//
//  Atleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 04/03/24.
//

import Cocoa

class Atleta: NSObject {
    
    var nome:String
    var idade:Int
    
    override init(){
        self.nome = ""
        self.idade = 0
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    
    deinit {
        print("\(self.nome) está sendo desinicializado")
    }
    
    //criando um método tipo sub-rotina
    func calcularIMC(peso:Float, altura:Float){
        let imc = peso / (altura * altura)
        let formatado = String(format: "%0.2f", imc)
        print("Atleta \(self.nome) tem IMC de \(formatado)")
    }
    //criando um método tipo function
    func calcularIMC2(peso:Float, altura:Float)->Float{
        return peso / pow(altura,2)
    }
    
    //Criando um método de instância
    func exibirAtleta()->String{
        return "Atleta é: " + self.nome
    }
    //criando um método de classe, igual a métodos estáticos do Java
    class func alerta()->String{
        return "A competição irá iniciar em breve"
    }
    //Overloads ou sobrecarga, métodos com mesmo nome e
    //parâmetros diferentes
    class func alerta(tempoEmMinutos:Int)->String{
        return "A competição irá iniciar em \(tempoEmMinutos) minutos"
    }
    
}
