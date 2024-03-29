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
        view.backgroundColor = .lightGray
        configProtocol()
        NotificationCenter.default.addObserver(self, selector: #selector(addName), name: Notification.Name("addName"), object: nil)
    }
    
    private func configProtocol() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    @objc func addName(notification: Notification) {
        if let userInfo = notification.userInfo,
              let name = userInfo["name"] as? String {
            print(userInfo)
               let newPerson = Person(name: name)
            print(name)
               list.append(newPerson)
               tableView.reloadData()
           }
    }
    
}


extension Tela02ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(name: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
