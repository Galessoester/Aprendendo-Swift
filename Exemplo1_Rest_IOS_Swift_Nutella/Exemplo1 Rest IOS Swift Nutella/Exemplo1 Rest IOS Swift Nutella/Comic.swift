//
//  Comic.swift
//  Exemplo1 Rest IOS Swift Nutella
//
//  Created by Usuário Convidado on 09/09/24.
//

import Foundation

struct Comic:Decodable{
    var num:Int
    var day:String
    var month:String
    var year:String
    var title:String
    var img:String
}
