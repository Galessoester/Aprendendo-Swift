//
//  ViewController.swift
//  Exemplo1_TableView
//
//  Created by Usuário Convidado on 05/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { // 1.1. Adotar protocolo Data Source
    // 2.1. Adotar o protocolo Delegate

    @IBOutlet weak var minhaTableView: UITableView!
    
    var animais = ["Urso", "Elefante", "Leão", "Rinoceronte", "Girafa"]
    var foto = ["urso", "ele", "leao", "rino", "girafa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1.3. e 2.3. Precisa informar qual a classe que irá implementar o protocolo da tableView
        // se der esse erro é por que precisa identificar o Table View Cell: "Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'unable to dequeue a cell with identifier reuseIdentifier - must register a nib or a class for the identifier or connect a prototype cell in a storyboard'"
        // codificando:
        minhaTableView.dataSource = self
        minhaTableView.delegate = self
    }
    
    // 1.2. Para chamar as assinaturas obrigatórias do protocolo Table View Data Source:
    // numb [enter]
    // numb [enter]
    // cell [enter]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animais.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // celula.textLabel?.text = "Bom retorno \(indexPath.row)SIR"
        celula.textLabel?.text = animais[indexPath.row]
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        // celula.imageView?.image = UIImage(named: "corinthians.jpg")
        
        return celula
    }
    
    // 2.2. para o protocolo delegate
    // didse [enter]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alerta = UIAlertController(
            title: "Aviso",
            message: "Você selecionou o animal \(animais[indexPath.row])",
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
        
        present(alerta, animated: true)
    }
    

}

