//
//  ViewController.swift
//  Desafio02TextField
//
//  Created by Gabriel Mors  on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var entrarButton: UIButton!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configName()
        configEndereco()
        configPassword()
        configConfirmPassword()
        nameTextField.delegate = self
        enderecoTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        
    }

    private func configName() {
        nameTextField.placeholder = "Digite seu nome:"
        nameTextField.autocapitalizationType = .words
    }

    private func configEndereco() {
        enderecoTextField.placeholder = "Digite seu endereço:"
        enderecoTextField.autocorrectionType = .no
    }
    
    private func configPassword() {
        passwordTextField.placeholder = "Digite sua senha:"
//        passwordTextField.isSecureTextEntry = true
    }
    
    private func configConfirmPassword() {
        confirmPasswordTextField.placeholder = "Confirme sua senha:"
//        confirmPasswordTextField.isSecureTextEntry = true
    }
    
    private func configEntrarButton() {
        entrarButton.isEnabled = false
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if nameTextField.text?.isEmpty == false && enderecoTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false && confirmPasswordTextField.text?.isEmpty == false {
            entrarButton.isEnabled = true
        } else {
            entrarButton.isEnabled = false
        }
        
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
