//
//  Tela02ViewController.swift
//  desafioNotificationCenter
//
//  Created by Gabriel Mors  on 09/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var list: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocol()
    }
    
    private func configProtocol() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CellOfTela02.nib(), forCellReuseIdentifier: CellOfTela02.identifier)
    }
}


extension Tela02ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellOfTela02.identifier, for: indexPath) as? CellOfTela02
        cell?.setupCell(name: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
