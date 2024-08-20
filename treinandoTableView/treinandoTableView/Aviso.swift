//
//  Aviso.swift
//  treinandoTableView
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class Aviso: NSObject {
    
    static func exibirAviso(msg:String, sender:UIViewController){
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default))
        
        sender.present(alerta, animated: true)
        
    }

}
