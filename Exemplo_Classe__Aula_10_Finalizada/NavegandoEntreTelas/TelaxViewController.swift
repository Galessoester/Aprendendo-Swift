//
//  TelaxViewController.swift
//  NavegandoEntreTelas
//
//  Created by Usuário Convidado on 14/05/24.
//

import UIKit

class TelaxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abrirVerdeScene(_ sender: Any) {
        performSegue(withIdentifier: "telaxParaTelaVerdeSegue", sender: nil)
    }
    
    @IBAction func abrirVermelhaScene(_ sender: Any) {
        performSegue(withIdentifier: "telaxParaTelaVermelhaSegue", sender: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "telaxParaTelaVermelhaSegue"{
            let t = segue.destination as! TelaVermelhaViewController
            t.texto = "Conteúdo passado da tela x para a tela vermelha"
        }
    }
    

}
