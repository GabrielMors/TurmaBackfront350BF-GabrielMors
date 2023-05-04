//
//  Tela02.swift
//  notificationCenterEProtocol
//
//  Created by Gabriel Mors  on 04/05/23.
//

import UIKit

class Tela02: UIViewController {

    @IBOutlet weak var macUIButton: UIButton!
    
    @IBOutlet weak var iMacUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappeMacImageView(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    @IBAction func tappedImacImageView(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
