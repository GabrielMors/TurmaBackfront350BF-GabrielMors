//
//  ViewController.swift
//  atividadeTableViewCaio
//
//  Created by Gabriel Mors  on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listName: [Person] = [Person(nameList: "Lucas", imageListe: "pessoa"),Person(nameList: "Fernando", imageListe: "pessoa"),Person(nameList: "Caio", imageListe: "pessoa"),Person(nameList: "Gustavo", imageListe: "pessoa"),Person(nameList: "Tiago", imageListe: "pessoa"),Person(nameList: "Lucas", imageListe: "pessoa"),Person(nameList: "Fernando", imageListe: "pessoa"),Person(nameList: "Caio", imageListe: "pessoa"),Person(nameList: "Gustavo", imageListe: "pessoa"),Person(nameList: "Tiago", imageListe: "pessoa"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Cell01.nib(), forCellReuseIdentifier: Cell01.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell01.identifier, for: indexPath) as? Cell01
        cell?.setupCell(person: listName[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
