//
//  ViewController.swift
//  ChatGPT
//
//  Created by Gabriel Mors  on 25/05/23.
//

import UIKit

class ViewController: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        self.screen = HomeScreen()
        view = screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}

