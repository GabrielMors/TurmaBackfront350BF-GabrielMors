//
//  ViewController.swift
//  tableViewAvancado
//
//  Created by Gabriel Mors  on 13/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataGrup: [Grup] = [Grup(NameImage: "person.3.fill", nameLabel: "Yan Alpha", nameJob: "Dev iOS At Ambev", salary: "R$:8.500"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Mikael", nameJob: "Dev iOS", salary: "R$:5.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Gabriel Mors", nameJob: "Dev iOS", salary: "R$:5.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Humberto", nameJob: "Dev iOS", salary: "R$:10.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Kevin Longue", nameJob: "Dev iOS", salary: "R$:10.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Felipe Augusto", nameJob: "Dev iOS", salary: "R$:10.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Caio Fabrini", nameJob: "Dev iOS", salary: "R$:30.000"),
                            Grup(NameImage: "person.3.fill", nameLabel: "Felipe Miranda", nameJob: "Dev iOS", salary: "R$:50.000")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
        tableView.register(GrupTableViewCell.nib(), forCellReuseIdentifier: GrupTableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + dataGrup.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(person: Person(name: "Gabriel Mors", nameImage: "person"))
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: GrupTableViewCell.identifier, for: indexPath) as? GrupTableViewCell
            cell?.setupCell(grup: dataGrup[indexPath.row - 1])
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 133
        } else {
            return 158
        }
    }
    
}
