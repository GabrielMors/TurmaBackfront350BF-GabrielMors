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
        configName()
        configEndereco()
        configPassword()
        self.nameTextField.delegate = self
        self.enderecoTextField.delegate = self
        self.passwordTextField.delegate = self
        
    }
    
    @IBAction func cadastrarButton(_ sender: UIButton) {
    }
    
    private func configName() {
        nameTextField.autocapitalizationType = .words
        nameTextField.placeholder = "Digite seu nome:"
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func configEndereco() {
        enderecoTextField.placeholder = "Digite seu endereço:"
        enderecoTextField.layer.borderWidth = 1
        enderecoTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func configPassword() {
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.isSecureTextEntry = true
    }
    
    private func configButton() {
        
    }
    
}



extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}
