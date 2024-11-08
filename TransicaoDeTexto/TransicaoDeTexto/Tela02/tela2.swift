//
//  tela2.swift
//  TransicaoDeTexto
//
//  Created by Gabriel Mors  on 06/04/23.
//

import UIKit

class tela2: UIViewController {

    var name: String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = name
    }

}
