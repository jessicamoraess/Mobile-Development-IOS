//: Playground - noun: a place where people can play 

  

import UIKit 

  

// 1 - Criar um Enum Com Tipos de IMC 

enum IMC : String { 

    case Low,Medium,High 

} 

  

//2 - Criar um Struct Pessoa 

struct Person{ 

    var name: String 

    var age : Int 

    var gender: String 

    var heigth : Double 

    var weigth : Double 

    var imc : String? 

     

    mutating func changeImc(newImc : String){ 

        imc = newImc 

    } 

} 

  

// 3 - Criar um Metodo Fora da Struct 

func calcImc(heigth:Double,weigth:Double) ->String{ 

    let result =  weigth/pow(heigth, 2) 

    switch result { 

    case 0 ... 20: 

        return IMC.Low.rawValue; 

    default: 

        return IMC.Medium.rawValue; 

    } 

} 

  

// Iniciar o Struct com Valores pre - definidos 

let person1 = Person(name: "Jessica", age: 21, gender: "F", heigth: 1.73, weigth: 65.0, imc: nil) 

  

print(person1) 

  

// Passar Novos Valores por Copia 

// 4- Interligar Tudo (Struct + Func Externa para Calc do IMC ) 

var personValue = person1 

personValue.name = "Teste" 

personValue.age= 22 

personValue.gender = "M" 

personValue.heigth= 1.73 

personValue.weigth= 65.0 

personValue.changeImc(newImc: calcImc(heigth: personValue.heigth, weigth: personValue.weigth)) 

  

print(personValue) 

  

  

// 5 - Criando um  Array de Pessoa(Struct) 

var peopleList : [Person] = [] 

  

//Populando pessoaList Preenchendo o IMC por Funcao externa 

var cont = 1 

  

while cont <= 10 { 

    personValue.name = "teste" + cont.description 

    personValue.age = 21 

    personValue.gender = "M" 

    personValue.heigth = Double(arc4random_uniform(100)) 

    personValue.weigth = Double(arc4random_uniform(100)) 

    personValue.changeImc(newImc: calcImc(altura: teste.altura, peso: teste.peso)) 

    peopleList.append(personValue) 

    cont += 1 

} 

  

// Mostrar resultado com imc prenchido 

for people  in peopleList{ 

    print("nome \(pople.name) tem um imc \(people.imc)") 

} 

  
