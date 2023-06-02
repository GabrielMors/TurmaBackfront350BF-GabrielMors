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
    
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    var listForCell: [Person] = []
//    var viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackground()
        configImageView()
        configEditingButton()
        configLabel()
        configClearButton()
        configAddButton()
        configProtocol()
        configImagePickerController()
    }
    
    private func configImagePickerController() {
        imagePicker.delegate = self
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
        photoImageView.image = UIImage(systemName: "person.circle.fill")
        photoImageView.tintColor = .black
        photoImageView.contentMode = .scaleAspectFill
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
    
    
    
    @IBAction func tappedEditingButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    @IBAction func tappedClearButton(_ sender: UIButton) {
        listForCell.removeAll()
        tableView.reloadData()
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if let name = textField.text, !name.isEmpty{
            listForCell.append(Person(name: textField.text ?? "", image: photoImageView.image ?? UIImage()))
            textField.text = ""
            photoImageView.image = UIImage(systemName: "person.circle.fill")
            tableView.reloadData()
            tableView.scrollToRow(at: IndexPath(row: listForCell.count - 1, section: 0), at: .bottom, animated: true)
        } else {
            let alertController = UIAlertController(title: "Ops!", message: "Informe um nome!", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listForCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PersonCell.self), for: indexPath) as? PersonCell
        cell?.setupCell(list: listForCell[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}


extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
        }
        picker.dismiss(animated: true)
    }
    
}

