//
//  main.swift
//  classe GIT
//
//  Created by Gabriel Mors  on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
}

//=========================================


class Cavalo {
    
    var nome: String = "Rex"
    var idade: Int = 10
    var peso: Double = 300.0
    var velocidadeMaxima: Int = 60
    var raça: String = "Shire"
    
    func andar() {
        print("O cavalo esta andando")
    }
    
    func correr() {
        print("O cavalo esta correndo")
    }
    
}

//=========================================

class Casa {
    var janela: Bool = true
    var quantidadePortas: Int = 9
    var quantidadeBanheiro: Int = 4
    var temPiscina: Bool = true
    var quantidadeQuartos: Int = 5
    
    
    func abrirJanela() {
        print("a janela esta aberta")
    }
    
    func reforma() {
        print("A casa esta em reforma")
    }
}


//=========================================


class humano {
    var nome: String = "Gabriel"
    var idade: Int = 18
    var boca: Bool = true
    var idioma: String = "Ingles"
    var temBraco: Bool = true
    
    
    func falar() {
        print("O Gabriel está falando")
    }
    
    func dormir() {
        print("O Gabriel esta dormindo")
    }
    
}

