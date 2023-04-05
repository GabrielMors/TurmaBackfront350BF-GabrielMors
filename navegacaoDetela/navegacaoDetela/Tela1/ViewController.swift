//
//  ViewController.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button(_ sender: Any) {
        let vc = UIStoryboard(name: "tela2", bundle: nil).instantiateViewController(withIdentifier: "tela2") as? tela2
        present(vc ?? UIViewController(), animated: true)
    }
    
}

