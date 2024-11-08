//
//  ViewController.swift
//  TransicaoDeTexto
//  Created by Gabriel Mors  on 06/04/23.


//Crie um app com 2 telas e transite um texto(pode criar um textfield e um botão igual fizemos em aula) da tela 1 para tela 2 e exiba o seu texto na tela 2

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var entrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button(_ sender: Any) {
        let vc: tela2? = UIStoryboard(name: "tela02", bundle: nil).instantiateViewController(withIdentifier: "tela02") as? tela2
        vc?.name = textField.text ?? ""
        present(vc ?? UIViewController(), animated: true)
    }
    
    
}

