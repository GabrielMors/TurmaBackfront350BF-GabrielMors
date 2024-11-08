//
//  ViewController.swift
//  ligacoes
//
//  Created by Gabriel Mors  on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Mors"
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Cliquei no botão")
    }
    
}

