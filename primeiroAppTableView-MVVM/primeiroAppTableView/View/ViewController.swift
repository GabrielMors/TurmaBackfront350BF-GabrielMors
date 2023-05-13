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
    
    var viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
// configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
// registar a celula
    }

}
// DATASOURCE -> Responsavel pela parte de dados
//DELEGATE -> Responsavel pelo interação do usuário
extension ViewController: UITableViewDataSource {
    
    // Quantidade de celulas por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(name: viewModel.cellForRowAt(index: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(viewModel.cellForRowAt(index: indexPath.row).name)
    }
}




