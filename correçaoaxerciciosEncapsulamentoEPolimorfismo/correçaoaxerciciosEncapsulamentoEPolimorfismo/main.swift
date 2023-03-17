//
//  main.swift
//  correçaoaxerciciosEncapsulamentoEPolimorfismo
//
//  Created by Gabriel Mors  on 16/03/23.
//

import Foundation

//MARK: Atividade


//atividade 1



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


//======================================

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
    
}


    class Programador: Funcionario {
        
        
    }
    
    
    class Designer: Funcionario {
        
        override func bonus(salario: Double) {
            let bonusNoSalario = salario + (salario * 0.15)
        }
        
    }



