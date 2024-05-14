//
//  ViewController.swift
//  ExercicioNavegandoEntreTelas
//
//  Created by Usuário Convidado on 14/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func abrir(_ sender: Any){
        if txtNome.text != ""{
            performSegue(withIdentifier: "TelaLoginParaTelaRecebeSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let t = segue.destination as! UINavigationController
        let vc = t.topViewController as! RecebeViewController
        vc.texto = txtNome.text!
    }
    
}

