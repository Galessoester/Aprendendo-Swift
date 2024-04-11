//
//  Pessoa.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 11/03/24.
//

import Cocoa

class Pessoa: NSObject {
    
    var nome:String
    var cidade:String
    
    init(nome:String , cidade:String){
        self.nome = nome
        self.cidade = cidade
        print("\(self.nome) está sendo inicializado")
    }
    
    deinit{
        print("\(self.nome) está sendo desinicializado")
    }

}
