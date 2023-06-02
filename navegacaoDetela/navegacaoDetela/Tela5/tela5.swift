//
//  tela5.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class tela5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func button5(_ sender: Any) {
        let vc = UIStoryboard(name: "tela6", bundle: nil).instantiateViewController(withIdentifier: "tela6") as? tela6
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
}
