//
//  ViewModel.swift
//  primeiroAppTableView
//
//  Created by Gabriel Mors  on 11/05/23.
//

import UIKit

class ViewModel {
    
    private var listName: [tableViewModel] = [tableViewModel(name: "Gabriel"),tableViewModel(name: "Gustavo"),tableViewModel(name: "Caio"),tableViewModel(name: "Gustavo"),tableViewModel(name: "Yan"),tableViewModel(name: "Felipe"),tableViewModel(name: "Vinicius"),tableViewModel(name: "Ryan"),tableViewModel(name: "Kaio"),tableViewModel(name: "Gabriel"),tableViewModel(name: "Gabriel"),tableViewModel(name: "Gustavo"),tableViewModel(name: "Felipe"),tableViewModel(name: "Gabriel")
    ]
    
    
    public func numberOfRowsInSection() -> Int {
        listName.count
    }
    
    public func cellForRowAt(index: Int) -> tableViewModel{
        listName[index]
    }
}
