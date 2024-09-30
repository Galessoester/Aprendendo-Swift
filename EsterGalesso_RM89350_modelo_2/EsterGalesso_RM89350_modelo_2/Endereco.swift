//
//  Endereco.swift
//  EsterGalesso_RM89350_modelo_2
//
//  Created by Usuário Convidado on 30/09/24.
//

import Foundation

struct Endereco:Decodable{
    var cep:String
    var logradouro:String
    var bairro:String
    var localidade:String
    var uf:String
}
