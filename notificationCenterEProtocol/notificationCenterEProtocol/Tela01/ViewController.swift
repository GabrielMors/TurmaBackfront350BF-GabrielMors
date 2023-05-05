//
//  ViewController.swift
//  notificationCenterEProtocol
//
//  Created by Gabriel Mors  on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var clicarUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: Notification.Name("macbook"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateimac), name: Notification.Name("imac"), object: nil)
    }
    
    @objc func updateMacbook(notification: NSNotification) {
        print(#function)
    }
    
    @objc func updateimac(notification: NSNotification) {
        print(#function)
    }
    
    @IBAction func tappedClickUIButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02", bundle: nil).instantiateViewController(identifier: "Tela02") as? Tela02
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
}

