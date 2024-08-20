//
//  ViewController.swift
//  treinandoTableView
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let jogos = ["Horizon Zero Dawn", "Uncharted 4"]
    let fotos = ["hor", "unc"]
    let estudios = ["Guerrilla", "Naughty Dog"]
    
    @IBOutlet weak var minhaTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        minhaTableView.dataSource = self
        minhaTableView.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jogos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        celula.textLabel?.text = jogos[indexPath.row]
        celula.imageView?.image = UIImage(named: fotos[indexPath.row])
        celula.detailTextLabel?.text = estudios[indexPath.row]
        
        celula.accessoryType = .detailButton
        
        return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alerta = UIAlertController(
                    title: "Aviso",
                    message: "Você selecionou o jogo \(jogos[indexPath.row])",
                    preferredStyle: UIAlertController.Style.alert)
                
                alerta.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
                
                present(alerta, animated: true)
    }
    
}

