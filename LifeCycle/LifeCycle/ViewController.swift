//
//  ViewController.swift
//  LifeCycle
//
//  Created by Gabriel Mors  on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    // Método que é disparado quando a tela está prestes a ser apresentada. - configurar parte navigation, configurar animação
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    // O metodo viewDidLoad é disparado assim que toda a tela for renderizada, sendo assim, é disparado uma única vez. - configurar elementos (configurar fonte, cor, estilo, disparar request de inicio, etc...)
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    // Método viewDidAppear é disparado toda a vez que a tela é apresentada por completo. - configurar animação e timer
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    // Método que é disparado quando a tela está prestes a sair. - configurar animação e timer
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    // Método que é disparado quando a tela já saiu. - configurar animação e timer
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
}


