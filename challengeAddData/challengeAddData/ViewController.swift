//
//  ViewController.swift
//  challengeAddData
//
//  Created by Gabriel Mors  on 05/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var editingImageButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
        configImageView()
        configEditingButton()
        configLabel()
        configClearButton()
        configAddButton()
        configProtocol()
    }

    private func configProtocol() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonCell.nib(), forCellReuseIdentifier: PersonCell.identifier)
    }
    
    private func configBackground() {
        view.backgroundColor = .purple
    }
    
    private func configImageView() {
        photoImageView.image = UIImage(systemName: "person.fill")
        photoImageView.tintColor = .black
    }
    
    private func configLabel() {
        nameLabel.text = "Name"
        nameLabel.textColor = .white
        
    }
    
    private func configEditingButton() {
        editingImageButton.backgroundColor = .clear
        editingImageButton.layer.borderWidth = 1.5
        editingImageButton.layer.borderColor = UIColor.white.cgColor
        editingImageButton.tintColor = .white
        editingImageButton.clipsToBounds = true
        editingImageButton.layer.cornerRadius = 15
        editingImageButton.setTitle("Edit", for: .normal)
        editingImageButton.titleLabel?.font = UIFont(name: "Futura", size: 20)
        editingImageButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    private func configClearButton() {
        clearButton.backgroundColor = .red
        clearButton.tintColor = .white
        clearButton.clipsToBounds = true
        clearButton.layer.cornerRadius = 15
        clearButton.setTitle("Clear", for: .normal)
        clearButton.layer.borderWidth = 1.5
        clearButton.layer.borderColor = UIColor.white.cgColor
        clearButton.titleLabel?.font = UIFont(name: "Futura", size: 20)
    }
    
    private func configAddButton() {
        addButton.backgroundColor = .white
        addButton.tintColor = .purple
        addButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        addButton.setTitle("Add", for: .normal)
        addButton.clipsToBounds = true
        addButton.layer.cornerRadius = 15
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PersonCell.self), for: indexPath) as? PersonCell
        
        return cell ?? UITableViewCell()
    }
    
}
