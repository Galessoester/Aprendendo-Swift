//
//  ViewController.swift
//  treinandoTableView
//
//  Created by Usuário Convidado on 26/08/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblJogo: UILabel!
    
    var textoApoio:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblJogo.text = textoApoio
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
