//
//  tela4.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class tela4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func proximo4Button(_ sender: Any) {
        let vc = UIStoryboard(name: "tela5", bundle: nil).instantiateViewController(withIdentifier: "tela5") as? tela5
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)

    }
    
}
