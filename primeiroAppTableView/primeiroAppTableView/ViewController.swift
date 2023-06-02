//
//  ViewController.swift
//  primeiroAppTableView
//
//  Created by Gabriel Mors  on 06/04/23.
//

import UIKit
//MARk: - PASSO A PASSO DE TABLEVIEW COM XIB\

//Criar TableView e fazer ligação
//congfigurar TableView (delegate e dataSource)

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
// configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
// registar a celula
    }

}
// DATASOURCE -> Responsavel pela parte de dados
//DELEGATE -> Responsavel pelo interação do usuário
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Quantidade de celulas por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}






