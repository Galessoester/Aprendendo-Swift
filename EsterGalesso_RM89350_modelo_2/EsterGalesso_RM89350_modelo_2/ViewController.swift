//
//  ViewController.swift
//  EsterGalesso_RM89350_modelo_2
//
//  Created by Usuário Convidado on 30/09/24.
//

import UIKit

var endereco:Endereco! = nil

class ViewController: UIViewController {
    
    @IBOutlet weak var txtCep: UITextField!
    @IBOutlet weak var txtRua: UITextField!
    @IBOutlet weak var txtBairro: UITextField!
    @IBOutlet weak var txtCidade: UITextField!
    @IBOutlet weak var txtUf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func exibir(_ sender: Any) {
        loadCep()
    }
    
    func loadCep(){
        let jsonURLString = "https://viacep.com.br/ws/" + self.txtCep.text! + "/json/"
        let url = URL(string: jsonURLString)
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else {return}
            
            do{
                endereco = try JSONDecoder().decode(Endereco.self, from: data)
                DispatchQueue.main.sync {
                    self.txtRua.text = endereco.logradouro
                    self.txtBairro.text = endereco.bairro
                    self.txtCidade.text = endereco.localidade
                    self.txtUf.text = endereco.uf
                }
            }catch let jsonError{
                print("Error serialization Json", jsonError)
            }
        }
        .resume()
    }
    

}

