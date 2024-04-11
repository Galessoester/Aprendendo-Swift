//
//  ViewController.swift
//  Esconde Exibe
//
//  Created by Usuário Convidado on 08/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minhaImagem: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func exibirView(_ sender: Any) {
        UIView.animate(withDuration: 2){
            self.minhaImagem.alpha = 1
            
        }
        
    }
    
    
    @IBAction func esconderView(_ sender: Any) {
        UIView.animate(withDuration: 2){
            self.minhaImagem.alpha = 0
        }
    }

}

