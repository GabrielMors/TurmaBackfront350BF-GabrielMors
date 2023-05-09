//
//  Tela01ViewController.swift
//  desafioNotificationCenter
//
//  Created by Gabriel Mors  on 09/05/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adicionarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configButton()
    }
    
    private func configButton() {
        adicionarButton.clipsToBounds = true
        adicionarButton.layer.cornerRadius = 10
        adicionarButton.layer.borderWidth = 1
        adicionarButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        nameTextField.text 
    }
    
}
