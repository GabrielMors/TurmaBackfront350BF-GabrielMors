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

//print(caio.nome)
//print(matheus.nome)




//MARK: Atividade

class Compra {
    var name: String
    var age: Int
    var cpf: String
    var saldoEmConta: Double
    
    init(name: String, age: Int, cpf: String, saldoEmConta: Double) {
        self.name = name
        self.age = age
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    public func comprar(quantidade: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" || tipoDePeca == "terno" {
            comprandoTernoComDesconto(quantidade: quantidade)
        } else if tipoDePeca == "Vestido" || tipoDePeca == "vestido" {
            comprandoVestidoComDesconto(quantidade: quantidade)
        } else {
            print("Produto inexistente")
        }
    }
    
    
    private func comprandoTernoComDesconto(quantidade: Int, desconto: Int = 50) {
        let terno: Int = 400
        let totalCompra = quantidade * terno
        
        if quantidade >= 3 {
            let totalDesconto = quantidade * desconto
            let totalComDesconto = totalCompra - totalDesconto
            print("Parabens, você recebeu um desconto de 50 reais por cada terno. Valor total com o desconto é \(totalComDesconto)")
//            self.saldoEmConta = totalCompra
        } else {
            print("voce nao comprou a quantidade suficiente para o desconto. valor da sua comprar é \(totalCompra)")
//            self.saldoEmConta = totalCompra
        }
    }
    
    private func comprandoVestidoComDesconto(quantidade: Int, brinde: String = "Ganhou um véu de noiva") {
        let vestido = 900
        let totalCompra = quantidade * vestido
        
        if quantidade == 5 {
            print(brinde)
        } else {
            print("Voce nao ganhou o brinde")
        }
//        self.saldoEmConta -= totalCompra
    }
}
var comprador1 = Compra(name: "Gabriel", age: 18, cpf: "03158848198", saldoEmConta: 5000)
comprador1.comprar(quantidade: 3, tipoDePeca: "Terno")


//class Compra {
//    let name: String
//    let cpf: String
//    let idade: Int
//    var saldoConta: Int
//
//    init(name: String, cpf: String, idade: Int, saldoConta: Int) {
//        self.name = name
//        self.cpf = cpf
//        self.idade = idade
//        self.saldoConta = saldoConta
//    }
//
//    public func comprar(quantidade: Int, tipoPeca: String){
//        if tipoPeca == "terno" {
//            comprandoTernoComDesconto(quantidade: quantidade)
//        } else if tipoPeca == "vestido" {
//            comprandoVestidoComDesconto(quantidade: quantidade)
//        } else {
//            print("Produto inexistente")
//        }
//    }
//
//
//    private func comprandoTernoComDesconto(quantidade: Int, desconto: Int = 50) {
//        let terno = 400
//        let totalCompra = quantidade * terno
//        if quantidade >= 3 {
//            let totalDesconto = quantidade * desconto
//            let totalComDesconto = totalCompra - totalDesconto
//            print("Voce ganhou 50 pila de desconto por terno, total da compra: \(totalComDesconto)")
//            self.saldoConta -= totalComDesconto
//        } else {
//            print("Voce não ganhou desconto pois não comprou a quantidade necessaria, total: \(totalCompra)")
//            self.saldoConta -= totalCompra
//        }
//
//    }
//
//    private func comprandoVestidoComDesconto(quantidade: Int, brinde: String = "Ganhou véu de noiva") {
//        let vestido = 900
//        let totalCompra = quantidade * vestido
//        if quantidade == 5 {
//            print("Parabéns, você ganhou um véu de noiva")
//        } else {
//            print("Você não ganhou o véu de noiva")
//        }
//        self.saldoConta -= totalCompra
//    }
//}
//
//var comprador1 = Compra(name: "Mikael", cpf: "17268736178", idade: 31, saldoConta: 1000)
//comprador1.comprar(quantidade: 10, tipoPeca: "terno")
//comprador1.comprar(quantidade: 5, tipoPeca: "vestido")


//=======================

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonus(salario: Double) {
        let bonusNoSalario = salario + (salario * 0.20)
        
    }
    
    
    class Programador: Funcionario {
        
        override func bonus(salario: Double) {
            let bonusNoSalario = salario + (salario * 0.20)
        }
        
    }
    
    
    class Designer: Funcionario {
        
        override func bonus(salario: Double) {
            let bonusNoSalario = salario + (salario * 0.15)
        }
        
    }
}
