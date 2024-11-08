//
//  Tela02.swift
//  notificationCenterEProtocol
//
//  Created by Gabriel Mors  on 04/05/23.
//

import UIKit

class Tela02: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var macUIButton: UIButton!
    
    @IBOutlet weak var iMacUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappeMacImageView(_ sender: UIButton) {
        NotificationCenter.default.post(name: .macbook, object: UIColor.purple)
        dismiss(animated: true)
    }

    
    @IBAction func tappedImacImageView(_ sender: UIButton) {
        NotificationCenter.default.post(name: .imac, object: UIColor.red)
        dismiss(animated: true)
    }
    
    
}
