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

}
