//
//  Calculadora.swift
//  exercicio
//
//  Created by Usuário Convidado on 15/04/24.
//

import UIKit

class Calculadora: NSObject {
    var primeiroNumero:Float
    var segundoNumero:Float
    
    override init() {
        self.primeiroNumero = 0.0
        self.segundoNumero = 0.0
    }
    
    func multiplicar() -> Float{
        return primeiroNumero * segundoNumero
    }

}
