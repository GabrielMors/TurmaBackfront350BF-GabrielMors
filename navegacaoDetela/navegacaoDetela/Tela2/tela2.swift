//
//  tela2.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class tela2: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func voltarTappedButton(_ sender: Any) {
        dismiss(animated: true)
//        let vc = UIStoryboard(name: "tela3", bundle: nil).instantiateViewController(withIdentifier: "tela3") as? tela3
//        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
}
