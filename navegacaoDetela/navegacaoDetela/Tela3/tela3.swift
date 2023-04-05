//
//  tela3.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class tela3: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func proximoButton(_ sender: Any) {
        let vc = UIStoryboard(name: "tela4", bundle: nil).instantiateViewController(withIdentifier: "tela4") as? tela4
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    

}
