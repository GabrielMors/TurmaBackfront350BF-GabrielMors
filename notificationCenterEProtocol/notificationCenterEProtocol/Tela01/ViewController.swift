//
//  ViewController.swift
//  notificationCenterEProtocol
//
//  Created by Gabriel Mors  on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clicarUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedClickUIButton(_ sender: Any) {
        let vc = UIStoryboard(name: String(describing: Tela02.self), bundle: nil).instantiateViewController(identifier: "Tela02") as? Tela02
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

