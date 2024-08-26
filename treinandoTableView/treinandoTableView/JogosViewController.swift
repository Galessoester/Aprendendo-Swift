//
//  ViewController.swift
//  treinandoTableView
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class JogosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var meuIndice:Int = 0
    var jogos = ["Horizon Zero Dawn", "Uncharted 4"]
    var fotos = ["hor", "unc"]
    var estudios = ["Guerrilla", "Naughty Dog"]
    
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
        meuIndice = indexPath.row
        performSegue(withIdentifier: "TableParaDetalhe", sender: nil)
        
        // print("O nome do jogo é \(jogos[indexPath.row])")
        
        /*let alerta = UIAlertController(
                    title: "Aviso",
                    message: "Você selecionou o jogo \(jogos[indexPath.row])",
                    preferredStyle: UIAlertController.Style.alert)
                
                alerta.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default))
                
                present(alerta, animated: true)
         */
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! ViewController
        vc.textoApoio = jogos[meuIndice]
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    // Override to support editing the table view.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            jogos.remove(at: indexPath.row)
            fotos.remove(at: indexPath.row)
            estudios.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let msg = "O jogo \(jogos[indexPath.row]) tem nota 5"
        print(msg)
    }
    
}

