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
        view.backgroundColor = .lightGray
        configButton()
        configTextField()
    }
    
    private func configTextField() {
        nameTextField.clipsToBounds = true
        nameTextField.layer.cornerRadius = 10
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.black.cgColor
    }
    
    private func configButton() {
        adicionarButton.clipsToBounds = true
        adicionarButton.layer.cornerRadius = 10
        adicionarButton.layer.borderWidth = 1
        adicionarButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        guard let work = nameTextField.text,  !work.isEmpty else { return }
        
        let userInfo = ["name": work]
        NotificationCenter.default.post(name: Notification.Name("addName"), object: nil, userInfo: userInfo)
        tabBarController?.selectedIndex = 0
        nameTextField.text = ""
    }
    
}
