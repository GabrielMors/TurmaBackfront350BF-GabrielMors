//
//  main.swift
//  Heranca
//
//  Created by Gabriel Mors  on 09/03/23.
//

import Foundation

// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animais {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animais {

}

class Boi: Animais {
    
}

class Ovelha: Animais {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


class tecnologia {
    var wifi: Bool
    var tela: Bool
    var funcional: Bool
    
    init(wifi: Bool, tela: Bool, funcional: Bool) {
        self.wifi = wifi
        self.tela = tela
        self.funcional = funcional
    }
    
    func acesso() {
        print("A tecnologia esta com acesso a todos")
    }
    
    func estaFuncional() {
        print("A tecnologia esta funcionando")
    }
}



class Carro: tecnologia {
    var modeloCarro: String = "S10"
    var anoCarro: Int = 2017
    var marca: String = "Chevrolet"
    
}


class telefone: tecnologia {
    var ano: Int
    var modelo: String
    var marca: String
    
    init(ano: Int, modelo: String, marca: String, wifi: Bool, tela: Bool, funcional: Bool) {
        self.ano = ano
        self.modelo = modelo
        self.marca = marca
        super.init(wifi: wifi, tela: tela, funcional: funcional)
    }
    }


var todaTecnologia: telefone = telefone(ano: 2020, modelo: "Iphone 12", marca: "Apple", wifi: true, tela: true, funcional: true)

print(todaTecnologia.marca)





// Crie uma classe Animal que tenha uma propriedade name do tipo String. Em seguida, crie uma subclasse Dog que herde de Animal e tenha uma propriedade breed do tipo String. O construtor de Dog deve chamar o construtor da superclasse para inicializar a propriedade name.


class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


class Dog: Animal {
    var breed: String
    
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
}

var chamarDog: Dog = Dog(name: "REX", breed: "Golden")

print(chamarDog.breed)


// Crie uma classe Person que tenha propriedades firstName e lastName do tipo String. Em seguida, crie uma subclasse Employee que herde de Person e tenha uma propriedade salary do tipo Double. O construtor de Employee deve chamar o construtor da superclasse para inicializar as propriedades firstName e lastName.

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}


class Employee: Person {
    var salary: Double
    
    init(salary: Double, firstName: String, lastName: String) {
        self.salary = salary
        super.init(firstName: firstName, lastName: lastName)
    }
}


var chamarEmployee: Employee = Employee(salary: 5000, firstName: "Gabriel", lastName: "Mors")

print(chamarEmployee.firstName)
print(chamarEmployee.lastName)
print(chamarEmployee.salary)


// Crie uma classe Shape que tenha propriedades width e height do tipo Double. Em seguida, crie uma subclasse Rectangle que herde de Shape e tenha um método area que retorna a área do retângulo (ou seja, width * height). O construtor de Rectangle deve chamar o construtor da superclasse para inicializar as propriedades width e height.





