//
//  Paratleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 11/03/24.
//

import Cocoa

class Paratleta: Atleta {
    
    var deficiencia:String
    //Assunto override (Sobrecarga quando um método existe na classe pai
    override init(){
        self.deficiencia = ""
        //super chama o método da classe pai
        super.init()
    }
    //Assunto override (Sobrecarga quando um método existe na classe pai
    override func exibirAtleta()->String{
        return super.exibirAtleta() + " - deficiencia relatada:\(self.deficiencia)"
    }

}
