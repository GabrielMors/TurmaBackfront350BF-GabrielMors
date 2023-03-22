//
//  ViewController.swift
//  desafio01TextField
//
//  Created by Gabriel Mors  on 22/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
        self.enderecoTextField.delegate = self
        self.passwordTextField.delegate = self
        
        nameTextField.placeholder = "Digite seu nome:"
        enderecoTextField.placeholder = "Digite seu endereço:"
        passwordTextField.placeholder = "Digite sua senha:"
        
    }
}


extension ViewController: UITextFieldDelegate {
    
    
    
    
}
