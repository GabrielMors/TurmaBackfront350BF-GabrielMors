//
//  main.swift
//  correçaoaxerciciosEncapsulamentoEPolimorfismo
//
//  Created by Gabriel Mors  on 16/03/23.
//

import Foundation

//MARK: Atividade


//atividade 1

class Vendedor {
    
    var nome: String
    var idade: Int
    var cpf: String
    var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }

    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            venderTerno(quantidadeDeTernos: quantidadeDePecas)
        } else if tipoDePeca == "Vestido" {
            venderVestido(quantidadeDeVestido: quantidadeDePecas)
        } else {
            print("Não temos esse produto na loja")
        }
    }
    
    private func venderTerno(quantidadeDeTernos: Int) {
        var desconto: Double = 0
        if quantidadeDeTernos >= 3 {
            desconto = Double(50 * quantidadeDeTernos)
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeTernos * 400) - desconto
    }
    
    private func venderVestido(quantidadeDeVestido: Int) {
        if quantidadeDeVestido == 5 {
            print("Parabens, você ganhou um veu de noiva")
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeVestido * 900)
    }
}

//var caioVendedor: Vendedor = Vendedor(nome: "Caio", idade: 21, cpf: "CPF", saldoEmConta: 10000)
//caioVendedor.vender(quantidadeDePecas: 10, tipoDePeca: "Terno")
//print(caioVendedor.saldoEmConta)


// MARK: DESAFIO FUNCIONARIO

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() {
       print("")
    }
    
}


class Programador: Funcionario {
    
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String ) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 20%, sendo assim o valor do seu bonus é de: R$\(salario * 12 * 0.2)")
    }
    
}


class Designer: Funcionario {
    
    var ferramentaPreferida: String
    
    init(ferramentaPreferida: String, nome: String, salario: Double, cpf: String ) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 15%, sendo assim o valor do seu bonus é de: R$\(salario * 12 * 0.15)")
    }
    
}

//var felipeProgramador: Programador = Programador(plataformaDeTrabalho: "Xcode", nome: "Felipe", salario: 22000, cpf: "CPF")
//felipeProgramador.bonusAnual()
//
//var felipeDesigner: Designer = Designer(ferramentaPreferida: "Gimp", nome: "Felipe", salario: 22000, cpf: "CPF")
//felipeDesigner.bonusAnual()


// MARK: DESAFIO VEICULO

class Veiculo {
    var quantidadeDePassageiros: Int
    
    init(quantidadeDePassageiros: Int) {
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros)
    }
    
}

class Carro: Veiculo {
    
    var tamanhoDasRodas: Int
    
    init(tamanhoDasRodas: Int, quantidadeDePassageiros: Int ){
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros) * Double(tamanhoDasRodas)
    }
    
}

class Aviao: Veiculo {
  
}


var boing: Aviao = Aviao(quantidadeDePassageiros: 100)
boing.calcularCombustivel(km: 1200)


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

//class Funcionario {
//    var nome: String
//    var salario: Double
//    var cpf: String
//
//    init(nome: String, salario: Double, cpf: String) {
//        self.nome = nome
//        self.salario = salario
//        self.cpf = cpf
//    }
//
//
//    func bonus(salario: Double) {
//        let bonusNoSalario = salario + (salario * 0.20)
//    }
//
//}
//
//
//    class Programador: Funcionario {
//
//
//    }
//
//
//    class Designer: Funcionario {
//
//        override func bonus(salario: Double) {
//            let bonusNoSalario = salario + (salario * 0.15)
//        }
//
//    }
//
//
//
