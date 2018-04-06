//https://codeshare.io/5N7yzo
//https://repl.it/repls/AnxiousStaidBackticks

import Foundation

/*enum IMC{
  case low
  case normal
  case above
  case obese
}

var weigth 
var heigth 
var response = (weigth) / (heigth*heigth)


switch response{
  case response < 0
  print("você está abaixo do peso")
  print("você está no peso normal")
  print("você está acima do peso")
  print("você está obeso")
  
}*/


struct Person{ 

    var name: String 

    var weigth: Double

    var heigth: Double
    
    var age: Int
    
    }
   
    var people: [Person] = []
    
    var person1: Person = Person(name: "Jéssica", weigth: 50, heigth: 160, age: 21)
    
    var person2: Person = Person(name: "Ruan", weigth: 90, heigth: 170, age: 40)
    
    var person3: Person = Person(name: "Liandro", weigth: 70, heigth: 190, age: 20)
    
    var person4: Person = Person(name: "Ragatanga", weigth: 70, heigth: 190, age: 20)
    
    people.append(person1)
    people.append(person2)
    people.append(person3)
    people.append(person4)
    
    for person in people {
    print("\(person.name)")
}


//Calcular    
 func calculateBMI(){
 var  result : Double
  for person in people {
    result = person.weigth
    print(result)
    
    
    
    }}
    
    
