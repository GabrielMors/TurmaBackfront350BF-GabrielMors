//
//  main.swift
//  Struct
//
//  Created by Gabriel Mors  on 14/03/23.
//

import Foundation

// MARK: - Struct

// Uma struct é muito similar a uma classe, porem uma struct trabalha com VALUE TYPE já a class com REFERENCE TYPE
// Uma struct não trabalha com herança, apenas pode estar em conformidade com protocols
// Na struct não necessita de criar o construtor na mão, ele cria automatico

struct Pessoa {
    var nome: String
    var idade: Int
}


var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

caio.nome = "Alfredo"

print(caio.nome)
print(matheus.nome)


