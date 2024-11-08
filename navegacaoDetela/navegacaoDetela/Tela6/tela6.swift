//
//  tela5.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class tela6: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func voltarTappedButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
