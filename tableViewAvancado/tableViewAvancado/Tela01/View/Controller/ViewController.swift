//
//  ViewController.swift
//  tableViewAvancado
//
//  Created by Gabriel Mors  on 13/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var count = 0
    var altura01: CGFloat = 138
    var altura02: CGFloat = 158
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var storyboardName = "tela02" //seta o nome para StoryboardName
        if indexPath.row != 0 { // se o index for diferente de zero, ira iniciar a tela03
            storyboardName = "tela03"  //(isso é como se fosse o "Else") - setando o nome do StoryboadName
        }
        var storyboard = UIStoryboard(name: storyboardName, bundle: nil) // passando a tela02 ou tela03
        let vc = storyboard.instantiateViewController(withIdentifier: storyboardName) // criando vc e passando o StoryboadName
        navigationController?.pushViewController(vc , animated: true) // fazendo a navegações de tela com navigationController
    }
    
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
        count += 1
        print(count)
        print("indexPath", indexPath.row)
        if indexPath.row == 0 {
            return altura01
        } else {
            return altura02
        }
    }
    
}

