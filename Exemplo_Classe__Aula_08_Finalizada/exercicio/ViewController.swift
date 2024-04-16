//
//  ViewController.swift
//  exercicio
//
//  Created by Usuário Convidado on 15/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtPrimeiroNumero: UITextField!
    @IBOutlet weak var txtSegundoNumero: UITextField!
    @IBOutlet weak var txtResultado: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func multiplicar() {
        var calculadora = Calculadora()
        calculadora.primeiroNumero = Float(txtPrimeiroNumero.text!)!
        calculadora.segundoNumero = Float(txtSegundoNumero.text!)!
        
        txtResultado.text = String(calculadora.multiplicar())
    }
    

}

