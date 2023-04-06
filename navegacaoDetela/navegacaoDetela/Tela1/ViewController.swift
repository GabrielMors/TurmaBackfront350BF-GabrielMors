//
//  ViewController.swift
//  navegacaoDetela
//
//  Created by Gabriel Mors  on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inicioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLabel()
    }

    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "tela2", sender: nil)
//        let vc = UIStoryboard(name: "tela2", bundle: nil).instantiateViewController(withIdentifier: "tela2") as? tela2
//        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    private func configLabel() {
        inicioLabel.clipsToBounds = true
        inicioLabel.layer.cornerRadius = 20
    }
}

