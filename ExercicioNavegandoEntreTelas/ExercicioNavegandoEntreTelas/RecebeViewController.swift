//
//  RecebeViewController.swift
//  ExercicioNavegandoEntreTelas
//
//  Created by Usuário Convidado on 14/05/24.
//

import UIKit

class RecebeViewController: UIViewController {
    
    var texto:String = ""
    
    @IBOutlet weak var lblMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMsg.text = texto
        // Do any additional setup after loading the view.
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
